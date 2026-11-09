"""Local demo forms. Shared secret is submitted with each operation, never persisted."""
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
    target=os.environ.get('DEMO_DB_NAME','')
    if not re.fullmatch(r'wbmc_demo_[a-f0-9]{32}',target):
        raise ValueError('Configure a separate synthetic demo database first.')
    config=get_db_config(); config['database']=target
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
               'delete':('year','contest_no','entry_no')}.get(operation)
        if names is None: raise ValueError('Unknown operation.')
        values={name:fields.get(name,[''])[0] for name in names}
        for name in names:
            if name!='status': values[name]=int(values[name])
        result=await run_in_threadpool(perform,operation,values)
        return render(request,'admin',result=result)
    except (ValueError,OverflowError) as exc:
        response=render(request,'admin',error=str(exc)); response.status_code=400; return response
