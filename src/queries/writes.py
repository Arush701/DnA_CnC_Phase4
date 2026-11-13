"""Explicit transactions (raw parameterised SQL) for the write operations.

Safety comes from the rules inside each operation, not from a separate database:
only contests that are Pending (results not published) can receive or lose entries,
so published history is never changed.
"""
from decimal import Decimal
import re
import pymysql

STATUSES=('Active','Inactive','Suspended','Pending')


def positive(value):
    if type(value) is not int or not 0 < value <= 2147483647:
        raise ValueError('Identifiers must be positive integers.')
    return value


def execute(conn, operation, **values):
    try:
        conn.begin()
        with conn.cursor() as c:
            if operation=='club':
                club=positive(values['club_id'])
                status=values['status']
                if status not in STATUSES:
                    raise ValueError('Choose Active, Inactive, Suspended or Pending.')
                c.execute('SELECT * FROM CLUB WHERE club_id=%s FOR UPDATE',(club,))
                before=c.fetchone()
                if not before: raise ValueError('Club does not exist.')
                c.execute('UPDATE CLUB SET membership_status=%s WHERE club_id=%s',(status,club))
                c.execute('SELECT * FROM CLUB WHERE club_id=%s',(club,))
                after=c.fetchone()
            elif operation in ('register','delete','score','newcompetitor'):
                year=positive(values['year']); contest=positive(values['contest_no'])
                c.execute('SELECT * FROM CONTEST WHERE championship_year=%s AND contest_no=%s FOR UPDATE',(year,contest))
                target=c.fetchone()
                if not target: raise ValueError('Contest does not exist.')
                if target['result_status']!='Pending':
                    if operation=='score':
                        raise ValueError('Scores cannot be edited after results are published (Phase 3 transaction rule).')
                    raise ValueError('Published or non-pending results are protected.')
                if operation=='register':
                    if target['registration_status']!='Open': raise ValueError('Registration is not open.')
                    competitor=positive(values['competitor_id'])
                    c.execute('SELECT competitor_id FROM COMPETITOR WHERE competitor_id=%s FOR UPDATE',(competitor,))
                    if not c.fetchone(): raise ValueError('Competitor does not exist.')
                    c.execute('SELECT entry_no FROM ENTRY WHERE competitor_id=%s AND championship_year=%s',(competitor,year))
                    if c.fetchone(): raise ValueError('Competitor already has an entry in this edition.')
                    c.execute('SELECT COALESCE(MAX(entry_no),0)+1 AS n FROM ENTRY WHERE championship_year=%s AND contest_no=%s',(year,contest))
                    number=c.fetchone()['n']; before=None
                    c.execute('INSERT INTO ENTRY (championship_year,contest_no,entry_no,competitor_id) VALUES (%s,%s,%s,%s)',(year,contest,number,competitor))
                    c.execute('SELECT * FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s',(year,contest,number))
                    after=c.fetchone()
                    # Optional club affiliation: blank means no REPRESENTS row is created.
                    club=values.get('club_id')
                    if club is not None:
                        club=positive(club)
                        c.execute('SELECT club_id FROM CLUB WHERE club_id=%s',(club,))
                        if not c.fetchone(): raise ValueError('Club does not exist.')
                        c.execute('SELECT club_id FROM REPRESENTS WHERE competitor_id=%s AND championship_year=%s',(competitor,year))
                        if c.fetchone(): raise ValueError('Competitor already represents a club in this edition.')
                        c.execute('INSERT INTO REPRESENTS (competitor_id,championship_year,club_id) VALUES (%s,%s,%s)',(competitor,year,club))
                    after=dict(after); after['club_affiliation']=club
                elif operation=='newcompetitor':
                    # INSERT: a new person plus their entry, with optional club, nickname and hometown,
                    # all in one transaction (any failure rolls everything back).
                    if target['registration_status']!='Open': raise ValueError('Registration is not open.')
                    name=(values.get('name') or '').strip()
                    if not name: raise ValueError('Enter the competitor name.')
                    if len(name)>80: raise ValueError('The name is too long (80 characters at most).')
                    nickname=(values.get('nickname') or '').strip() or None
                    if nickname and len(nickname)>100: raise ValueError('The nickname is too long (100 characters at most).')
                    city,region,country=((values.get(k) or '').strip() or None
                                         for k in ('hometown_city','hometown_region','hometown_country'))
                    if (city and len(city)>100) or (region and len(region)>100) or (country and len(country)>80):
                        raise ValueError('A hometown field is too long.')
                    club=values.get('club_id')
                    if club is not None:
                        club=positive(club)
                        c.execute('SELECT club_id FROM CLUB WHERE club_id=%s',(club,))
                        if not c.fetchone(): raise ValueError('Club does not exist.')
                    c.execute('INSERT INTO COMPETITOR (first_name, last_name) VALUES (%s, NULL)',(name,))
                    competitor=c.lastrowid
                    c.execute('SELECT COALESCE(MAX(entry_no),0)+1 AS n FROM ENTRY WHERE championship_year=%s AND contest_no=%s',(year,contest))
                    number=c.fetchone()['n']; before=None
                    c.execute('INSERT INTO ENTRY (championship_year,contest_no,entry_no,competitor_id,hometown_city,hometown_region,hometown_country) VALUES (%s,%s,%s,%s,%s,%s,%s)',
                              (year,contest,number,competitor,city,region,country))
                    if club is not None:
                        c.execute('INSERT INTO REPRESENTS (competitor_id,championship_year,club_id) VALUES (%s,%s,%s)',(competitor,year,club))
                    if nickname:
                        c.execute('INSERT INTO COMPETITOR_NICKNAME (competitor_id,nickname) VALUES (%s,%s)',(competitor,nickname))
                    c.execute('SELECT * FROM COMPETITOR WHERE competitor_id=%s',(competitor,))
                    person=c.fetchone()
                    c.execute('SELECT * FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s',(year,contest,number))
                    after={'competitor':person,'entry':c.fetchone(),'club_affiliation':club,'nickname':nickname}
                elif operation=='score':
                    # UPDATE: record or correct one entry's score while its contest is still Pending.
                    # Phase 3: "no score edits after result_status = Published" (checked above); score >= 0.
                    # final_rank is not touched: Phase 3 states published_total_score does not determine final_rank.
                    score=values['published_total_score']
                    if score < 0 or score > Decimal('99999.99'): raise ValueError('Score must be between 0 and 99999.99.')
                    number=positive(values['entry_no'])
                    key=(year,contest,number)
                    c.execute('SELECT * FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s FOR UPDATE',key)
                    before=c.fetchone()
                    if not before: raise ValueError('Entry does not exist.')
                    if before['is_withdrawn']: raise ValueError('A withdrawn entry cannot be scored.')
                    c.execute('UPDATE ENTRY SET published_total_score=%s WHERE championship_year=%s AND contest_no=%s AND entry_no=%s',(score,)+key)
                    c.execute('SELECT * FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s',key)
                    after=c.fetchone()
                else:
                    number=positive(values['entry_no'])
                    key=(year,contest,number)
                    c.execute('SELECT * FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s FOR UPDATE',key)
                    before=c.fetchone()
                    if not before: raise ValueError('Entry does not exist.')
                    if before['final_rank'] is not None or before['published_total_score'] is not None:
                        raise ValueError('A ranked or scored entry cannot be deleted.')
                    for table in ('SCORES','BEST_IN_SHOW'):
                        c.execute(f'SELECT 1 FROM {table} WHERE championship_year=%s AND contest_no=%s AND entry_no=%s LIMIT 1',key)
                        if c.fetchone(): raise ValueError('Entry has dependent scores or awards; deletion refused.')
                    c.execute('DELETE FROM ENTRY WHERE championship_year=%s AND contest_no=%s AND entry_no=%s',key)
                    after=None
            else: raise ValueError('Unknown operation.')
        conn.commit()
        return {'operation':operation,'before':before,'after':after}
    except pymysql.IntegrityError:
        conn.rollback()
        raise ValueError('Duplicate record or invalid foreign key; transaction rolled back.') from None
    except Exception:
        conn.rollback()
        raise
