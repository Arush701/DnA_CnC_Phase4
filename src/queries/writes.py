"""Explicit transactions (raw parameterised SQL) for the write operations.

Safety comes from the rules inside each operation, not from a separate database:
only contests that are Pending (results not published) can receive or lose entries,
so published history is never changed.
"""
from decimal import Decimal
import re
import pymysql

STATUSES=('Active','Inactive','Unknown')  # Phase 1: membership_status is Active, Inactive or Unknown


CHAMPIONSHIP_STATUSES=('Held','Cancelled','Scheduled')


def edition_year(value):
    """Phase 1 domain: 1990, or an odd year from 1995 (smallint column)."""
    year=positive(value)
    if not (year==1990 or (1995<=year<=32767 and year%2==1)):
        raise ValueError('The edition year must be 1990 or an odd year from 1995.')
    return year


def usable_club(c, club):
    """Return (club_id, club_name) for a club that may be given a new affiliation.

    Phase 1 (UPDATE-3): a club marked Inactive must not be accepted for new operations.
    Clubs with no recorded status (NULL) or Unknown stay usable, because the website
    publishes no membership status.
    """
    c.execute('SELECT club_id, club_name, membership_status FROM CLUB WHERE club_id=%s',(club,))
    row=c.fetchone()
    if not row: raise ValueError('Club does not exist.')
    if row['membership_status']=='Inactive':
        raise ValueError('This club is inactive and cannot be given a new affiliation.')
    return row['club_id'], row['club_name']


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
                    raise ValueError('Choose Active, Inactive or Unknown.')
                c.execute('SELECT * FROM CLUB WHERE club_id=%s FOR UPDATE',(club,))
                before=c.fetchone()
                if not before: raise ValueError('Club does not exist.')
                c.execute('UPDATE CLUB SET membership_status=%s WHERE club_id=%s',(status,club))
                c.execute('SELECT * FROM CLUB WHERE club_id=%s',(club,))
                after=c.fetchone()
            elif operation=='edition':
                # INSERT-1: a new championship edition with its known host club and venue, in one transaction.
                year=edition_year(values['year'])
                status=values.get('status')
                if status not in CHAMPIONSHIP_STATUSES: raise ValueError('Choose Held, Cancelled or Scheduled.')
                start,end=values.get('start_date'),values.get('end_date')
                if start and end and start>end: raise ValueError('The start date must not be later than the end date.')
                reason=(values.get('cancellation_reason') or '').strip() or None
                if status=='Cancelled' and not reason: raise ValueError('A cancelled edition needs a cancellation reason.')
                if status!='Cancelled' and reason: raise ValueError('A cancellation reason is only for a Cancelled edition.')
                website=(values.get('website_url') or '').strip() or None
                if (reason and len(reason)>255) or (website and len(website)>255):
                    raise ValueError('The cancellation reason and website must be 255 characters or fewer.')
                host,venue=values.get('host_club_id'),values.get('venue_id')
                c.execute('SELECT championship_year FROM CHAMPIONSHIP WHERE championship_year=%s FOR UPDATE',(year,))
                if c.fetchone(): raise ValueError('This edition already exists.')
                if host is not None:
                    host=positive(host)
                    c.execute('SELECT club_id FROM CLUB WHERE club_id=%s',(host,))
                    if not c.fetchone(): raise ValueError('The host club does not exist.')
                if venue is not None:
                    venue=positive(venue)
                    c.execute('SELECT venue_id FROM VENUE WHERE venue_id=%s',(venue,))
                    if not c.fetchone(): raise ValueError('The venue does not exist.')
                c.execute('INSERT INTO CHAMPIONSHIP (championship_year,status,start_date,end_date,cancellation_reason,website_url,host_club_id,venue_id) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)',
                          (year,status,start,end,reason,website,host,venue))
                before=None
                c.execute('SELECT * FROM CHAMPIONSHIP WHERE championship_year=%s',(year,))
                after=c.fetchone()
            elif operation=='reschedule':
                # UPDATE-2: change an edition's dates or status, cancel it with a reason, and optionally record
                # its replacement edition (RESCHEDULED_TO), all in one transaction.
                year=positive(values['year'])
                c.execute('SELECT * FROM CHAMPIONSHIP WHERE championship_year=%s FOR UPDATE',(year,))
                before=c.fetchone()
                if not before: raise ValueError('The edition does not exist.')
                c.execute("SELECT 1 FROM CONTEST WHERE championship_year=%s AND result_status='Published' LIMIT 1",(year,))
                if c.fetchone(): raise ValueError('An edition with published results is protected and cannot be changed here.')
                new_status=values.get('status') or before['status']
                if new_status not in CHAMPIONSHIP_STATUSES: raise ValueError('Choose Held, Cancelled or Scheduled.')
                start=values.get('start_date') or before['start_date']
                end=values.get('end_date') or before['end_date']
                if start and end and start>end: raise ValueError('The start date must not be later than the end date.')
                reason_given=(values.get('cancellation_reason') or '').strip() or None
                if reason_given and len(reason_given)>255: raise ValueError('The cancellation reason must be 255 characters or fewer.')
                reason=before['cancellation_reason']
                if before['status']=='Cancelled':
                    # Historical cancellation information is never silently overwritten.
                    if new_status!='Cancelled': raise ValueError('A cancelled edition cannot be reopened; its cancellation record is kept.')
                    if reason_given and reason_given!=before['cancellation_reason']:
                        raise ValueError('The recorded cancellation reason is kept and cannot be overwritten.')
                elif new_status=='Cancelled':
                    if not reason_given: raise ValueError('Cancelling an edition needs a cancellation reason.')
                    reason=reason_given
                elif reason_given:
                    raise ValueError('A cancellation reason is only for a Cancelled edition.')
                replacement=values.get('replacement_year')
                if replacement is not None:
                    replacement=positive(replacement)
                    if replacement==year: raise ValueError('An edition cannot be replaced by itself.')
                    if new_status!='Cancelled': raise ValueError('Only a cancelled edition can have a replacement edition.')
                    c.execute('SELECT championship_year FROM CHAMPIONSHIP WHERE championship_year=%s',(replacement,))
                    if not c.fetchone(): raise ValueError('The replacement edition does not exist.')
                    c.execute('SELECT 1 FROM RESCHEDULED_TO WHERE cancelled_year=%s',(year,))
                    if c.fetchone(): raise ValueError('This edition already has a recorded replacement.')
                    c.execute('SELECT 1 FROM RESCHEDULED_TO WHERE replacement_year=%s',(replacement,))
                    if c.fetchone(): raise ValueError('That edition already replaces another cancelled edition.')
                if (new_status==before['status'] and start==before['start_date'] and end==before['end_date']
                        and replacement is None):
                    raise ValueError('Nothing to change: give a new status, new dates or a replacement edition.')
                if start and end:
                    # Contest schedules must stay inside the edition's dates when both are known.
                    c.execute('SELECT contest_no FROM CONTEST WHERE championship_year=%s AND scheduled_date IS NOT NULL AND (scheduled_date<%s OR scheduled_date>%s) LIMIT 1',(year,start,end))
                    if c.fetchone(): raise ValueError('A contest in this edition is scheduled outside the new dates.')
                c.execute('UPDATE CHAMPIONSHIP SET status=%s, start_date=%s, end_date=%s, cancellation_reason=%s WHERE championship_year=%s',
                          (new_status,start,end,reason,year))
                if replacement is not None:
                    c.execute('INSERT INTO RESCHEDULED_TO (cancelled_year, replacement_year) VALUES (%s,%s)',(year,replacement))
                c.execute('SELECT * FROM CHAMPIONSHIP WHERE championship_year=%s',(year,))
                after=c.fetchone()
                c.execute('SELECT replacement_year FROM RESCHEDULED_TO WHERE cancelled_year=%s',(year,))
                link=c.fetchone()
                after=dict(after); after['replacement_year']=link['replacement_year'] if link else None
            elif operation in ('register','delete','score','newcompetitor','judge'):
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
                    # fetch contest name (category name) for confirmation
                    c.execute('SELECT cat.category_name FROM CONTEST con JOIN CATEGORY cat ON con.category_id=cat.category_id WHERE con.championship_year=%s AND con.contest_no=%s',(year,contest))
                    contest_name_row=c.fetchone()
                    contest_name=contest_name_row['category_name'] if contest_name_row else None
                    # Optional club affiliation: blank means no REPRESENTS row is created.
                    club=values.get('club_id'); club_name=None
                    if club is not None:
                        club,club_name=usable_club(c,positive(club))
                        c.execute('SELECT club_id FROM REPRESENTS WHERE competitor_id=%s AND championship_year=%s',(competitor,year))
                        if c.fetchone(): raise ValueError('Competitor already represents a club in this edition.')
                        c.execute('INSERT INTO REPRESENTS (competitor_id,championship_year,club_id) VALUES (%s,%s,%s)',(competitor,year,club))
                    after=dict(after); after['club_affiliation']=club; after['club_name']=club_name; after['contest_name']=contest_name
                elif operation=='newcompetitor':
                    # INSERT: a new person plus their entry, with optional club, nickname and hometown,
                    # all in one transaction (any failure rolls everything back).
                    if target['registration_status']!='Open': raise ValueError('Registration is not open.')
                    first=(values.get('first_name') or '').strip()
                    last=(values.get('last_name') or '').strip() or None
                    if not first: raise ValueError('Enter the competitor first name.')
                    if len(first)>80 or (last and len(last)>80):
                        raise ValueError('A name is too long (80 characters at most).')
                    nickname=(values.get('nickname') or '').strip() or None
                    if nickname and len(nickname)>100: raise ValueError('The nickname is too long (100 characters at most).')
                    city,region,country=((values.get(k) or '').strip() or None
                                         for k in ('hometown_city','hometown_region','hometown_country'))
                    if (city and len(city)>100) or (region and len(region)>100) or (country and len(country)>80):
                        raise ValueError('A hometown field is too long.')
                    club=values.get('club_id'); club_name=None
                    if club is not None:
                        club,club_name=usable_club(c,positive(club))
                    c.execute('SELECT cat.category_name FROM CONTEST con JOIN CATEGORY cat ON con.category_id=cat.category_id WHERE con.championship_year=%s AND con.contest_no=%s',(year,contest))
                    contest_name_row=c.fetchone()
                    contest_name=contest_name_row['category_name'] if contest_name_row else None
                    c.execute('INSERT INTO COMPETITOR (first_name, last_name) VALUES (%s, %s)',(first,last))
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
                    after={'competitor':person,'entry':c.fetchone(),'club_affiliation':club,'club_name':club_name,'nickname':nickname,'contest_name':contest_name}
                elif operation=='judge':
                    # INSERT: assign a judge to a contest that is not yet published, creating the judge if needed.
                    judge_id=values.get('judge_id')
                    if judge_id is not None:
                        judge_id=positive(judge_id)
                        c.execute('SELECT * FROM JUDGE WHERE judge_id=%s FOR UPDATE',(judge_id,))
                        if not c.fetchone(): raise ValueError('Judge does not exist.')
                    else:
                        name,role,organisation,email=((values.get(k) or '').strip() or None
                                                      for k in ('name','role','organisation','email'))
                        if not name: raise ValueError('Enter the judge name or an existing judge ID.')
                        if len(name)>150 or (role and len(role)>80) or (organisation and len(organisation)>150) or (email and len(email)>255):
                            raise ValueError('A judge field is too long.')
                        if email:
                            c.execute('SELECT judge_id FROM JUDGE WHERE email=%s',(email,))
                            if c.fetchone(): raise ValueError('A judge with this email already exists.')
                        c.execute('INSERT INTO JUDGE (email, full_name, role, organisation) VALUES (%s,%s,%s,%s)',(email,name,role,organisation))
                        judge_id=c.lastrowid
                    c.execute('SELECT 1 FROM ASSIGNED_TO WHERE judge_id=%s AND championship_year=%s AND contest_no=%s',(judge_id,year,contest))
                    if c.fetchone(): raise ValueError('This judge is already assigned to this contest.')
                    c.execute('INSERT INTO ASSIGNED_TO (judge_id,championship_year,contest_no) VALUES (%s,%s,%s)',(judge_id,year,contest))
                    before=None
                    c.execute('SELECT * FROM JUDGE WHERE judge_id=%s',(judge_id,))
                    after={'judge':c.fetchone(),'assigned_to':{'championship_year':year,'contest_no':contest}}
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
