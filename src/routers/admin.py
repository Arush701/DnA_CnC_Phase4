"""Write forms. Organiser actions (/admin) need a shared secret submitted with each operation and never
persisted; public registration (/register) does not, but is still switched off unless WBMC_ADMIN_ENABLED=1."""
from datetime import date
from decimal import Decimal, InvalidOperation
import hmac
import os
from urllib.parse import parse_qs
import re

from fastapi import APIRouter, Request, HTTPException
import pymysql
from starlette.concurrency import run_in_threadpool
from ..config import get_db_config
from ..queries.writes import execute
from .web import render

router=APIRouter()


def perform(operation, values):
    config=get_db_config()
    conn=pymysql.connect(**config,cursorclass=pymysql.cursors.DictCursor,autocommit=False)
    try: return execute(conn,operation,**values)
    finally: conn.close()


REGISTER_KINDS={'existing':'register','new':'newcompetitor'}
ADMIN_OPERATIONS=('club','delete','score','judge','edition','reschedule')
TEXT_FIELDS=('first_name','last_name','nickname','hometown_city','hometown_region','hometown_country')


def parse_date(text, label):
    """Blank means 'not given'; otherwise an ISO date (what a browser date box submits)."""
    text=text.strip()
    if not text: return None
    try: return date.fromisoformat(text)
    except ValueError: raise ValueError(f'{label} must be a valid date.') from None


def optional_id(fields, name):
    text=fields.get(name,[''])[0].strip()
    return int(text) if text else None


def parse(operation, fields):
    names={'register':('year','contest_no','competitor_id'),'club':('club_id','status'),
           'delete':('year','contest_no','entry_no'),'score':('year','contest_no','entry_no'),
           'newcompetitor':('year','contest_no'),'judge':('year','contest_no'),
           'edition':('year',),'reschedule':('year',)}.get(operation)
    if names is None: raise ValueError('Unknown operation.')
    values={name:fields.get(name,[''])[0] for name in names}
    for name in names:
        if name!='status': values[name]=int(values[name])
    if operation=='score':  # score is required; rank is left unchanged
        try: score=Decimal(fields.get('published_total_score',[''])[0].strip())
        except InvalidOperation: raise ValueError('Enter the score as a number.')
        if not score.is_finite(): raise ValueError('Enter the score as a number.')
        values['published_total_score']=score
    if operation=='newcompetitor':  # text fields; blank optional ones are ignored
        for name in TEXT_FIELDS:
            values[name]=fields.get(name,[''])[0].strip()
    if operation=='judge':  # optional existing judge; otherwise a new judge is created from the text fields
        for name in ('name','role','organisation','email'):
            values[name]=fields.get(name,[''])[0].strip()
        judge=fields.get('judge_id',[''])[0].strip()
        values['judge_id']=int(judge) if judge else None
    if operation in ('edition','reschedule'):  # blank dates and reason mean "not given"
        values['status']=fields.get('status',[''])[0].strip()
        values['start_date']=parse_date(fields.get('start_date',[''])[0],'The start date')
        values['end_date']=parse_date(fields.get('end_date',[''])[0],'The end date')
        values['cancellation_reason']=fields.get('cancellation_reason',[''])[0].strip()
    if operation=='edition':  # INSERT-1: optional website, host club and venue
        values['website_url']=fields.get('website_url',[''])[0].strip()
        values['host_club_id']=optional_id(fields,'host_club_id')
        values['venue_id']=optional_id(fields,'venue_id')
    if operation=='reschedule':  # UPDATE-2: optional replacement edition for a cancelled one
        values['replacement_year']=optional_id(fields,'replacement_year')
    if operation in ('register','newcompetitor'):  # optional field: blank means "no club"
        club=fields.get('club_id',[''])[0].strip()
        values['club_id']=int(club) if club else None
    return values


async def handle(request, operation, page, need_token):
    if need_token and os.environ.get('WBMC_ADMIN_ENABLED')!='1': raise HTTPException(403)
    if request.client.host not in ('127.0.0.1','::1','testclient'): raise HTTPException(403)
    fields=parse_qs((await request.body()).decode('utf-8'),keep_blank_values=True)
    if need_token:
        token=fields.get('token',[''])[0]
        expected=os.environ.get('WBMC_ADMIN_TOKEN','')
        if not expected or not hmac.compare_digest(token,expected): raise HTTPException(403)
    try:
        values=parse(operation,fields)
        result=await run_in_threadpool(perform,operation,values)
        return render(request,page,result=result)
    except (ValueError,OverflowError) as exc:
        response=render(request,page,error=str(exc)); response.status_code=400; return response


@router.get('/register')
def register_page(request: Request):
    return render(request,'register')


@router.post('/register/{kind}')
async def register(request: Request, kind: str):
    if kind not in REGISTER_KINDS: raise HTTPException(404)
    return await handle(request,REGISTER_KINDS[kind],'register',need_token=False)


@router.post('/admin/{operation}')
async def write(request: Request, operation: str):
    if operation not in ADMIN_OPERATIONS:
        if os.environ.get('WBMC_ADMIN_ENABLED')!='1': raise HTTPException(403)
        response=render(request,'admin',error='Unknown operation.'); response.status_code=400; return response
    return await handle(request,operation,'admin',need_token=True)
