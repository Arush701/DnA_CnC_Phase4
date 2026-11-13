"""Local admin forms. Shared secret is submitted with each operation, never persisted."""
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


@router.post('/admin/{operation}')
async def write(request: Request, operation: str):
    if os.environ.get('WBMC_ADMIN_ENABLED')!='1': raise HTTPException(403)
    if request.client.host not in ('127.0.0.1','::1','testclient'): raise HTTPException(403)
    fields=parse_qs((await request.body()).decode('utf-8'),keep_blank_values=True)
    token=fields.get('token',[''])[0]
    expected=os.environ.get('WBMC_ADMIN_TOKEN','')
    if not expected or not hmac.compare_digest(token,expected): raise HTTPException(403)
    try:
        names={'register':('year','contest_no','competitor_id'),'club':('club_id','status'),
               'delete':('year','contest_no','entry_no'),'score':('year','contest_no','entry_no')}.get(operation)
        if names is None: raise ValueError('Unknown operation.')
        values={name:fields.get(name,[''])[0] for name in names}
        for name in names:
            if name!='status': values[name]=int(values[name])
        if operation=='score':  # score is required; rank is left unchanged
            try: score=Decimal(fields.get('published_total_score',[''])[0].strip())
            except InvalidOperation: raise ValueError('Enter the score as a number.')
            if not score.is_finite(): raise ValueError('Enter the score as a number.')
            values['published_total_score']=score
        if operation=='register':  # optional field: blank means "no club"
            club=fields.get('club_id',[''])[0].strip()
            values['club_id']=int(club) if club else None
        result=await run_in_threadpool(perform,operation,values)
        return render(request,'admin',result=result)
    except (ValueError,OverflowError) as exc:
        response=render(request,'admin',error=str(exc)); response.status_code=400; return response
