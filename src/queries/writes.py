"""Explicit transactions for an isolated synthetic demo database only."""
import re
import pymysql

STATUSES=('Active','Inactive','Suspended','Pending')


def positive(value):
    if type(value) is not int or not 0 < value <= 2147483647:
        raise ValueError('Identifiers must be positive integers.')
    return value


def execute(conn, operation, **values):
    try:
        with conn.cursor() as c:
            c.execute('SELECT DATABASE() AS name')
            if not re.fullmatch(r'wbmc_demo_[a-f0-9]{32}', c.fetchone()['name'] or ''):
                raise ValueError('Writes require a separate synthetic demo database.')
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
            elif operation in ('register','delete'):
                year=positive(values['year']); contest=positive(values['contest_no'])
                c.execute('SELECT * FROM CONTEST WHERE championship_year=%s AND contest_no=%s FOR UPDATE',(year,contest))
                target=c.fetchone()
                if not target: raise ValueError('Contest does not exist.')
                if target['result_status']!='Pending': raise ValueError('Published or non-pending results are protected.')
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
