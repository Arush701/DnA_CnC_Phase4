"""Thin read-only page handlers; SQL stays in queries.reads."""
from collections import Counter
from typing import Literal

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from fastapi.templating import Jinja2Templates

from ..config import PROJECT_ROOT
from ..db import get_read_db
from ..queries import reads

router = APIRouter()
templates = Jinja2Templates(directory=str(PROJECT_ROOT / 'src/templates'))
templates.env.filters['score'] = lambda value: '—' if value is None else f'{value:.2f}'


def render(request, template_name, **context):
    return templates.TemplateResponse(request=request, name=template_name+'.html', context=context)


def optional_int(value, label, maximum=32767):
    if value == '':
        return None
    if not value.isascii() or not value.isdigit() or not 1 <= int(value) <= maximum:
        raise HTTPException(400, f'Choose a valid {label}.')
    return int(value)


def edition_summary(rows):
    editions = {}
    for row in rows:
        item = editions.setdefault(row['championship_year'], {'year':row['championship_year'],
            'status':row['status'], 'categories':0, 'entries':0})
        item['categories'] += row['category_id'] is not None
        item['entries'] += row['result_entries']
    return list(editions.values())


@router.get('/')
def home(request: Request, db=Depends(get_read_db)):
    editions = edition_summary(reads.championship_history(db))
    return render(request,'index',editions=editions,
        entries=sum(e['entries'] for e in editions),categories=sum(e['categories'] for e in editions))


@router.get('/championships')
def championships(request: Request, db=Depends(get_read_db)):
    return render(request,'championships',editions=edition_summary(reads.championship_history(db)))


@router.get('/competitors')
def competitors(request: Request, q: str=Query('',max_length=255), year: str=Query('',max_length=5),
                page: int=Query(1,ge=1,le=10000), db=Depends(get_read_db)):
    selected = optional_int(year,'year')
    rows = reads.competitor_search(db,q,year=selected,limit=51,offset=(page-1)*50)
    return render(request,'competitors',rows=rows[:50],more=len(rows)>50,q=q,year=year,page=page)


@router.get('/categories')
def categories(request: Request, q: str=Query('',max_length=255), bracket: str=Query('',max_length=30),
               year: str=Query('',max_length=5), db=Depends(get_read_db)):
    if bracket and bracket not in reads.BRACKETS:
        raise HTTPException(400,'Choose a listed bracket.')
    rows = reads.category_search(db,q,bracket=bracket or None,year=optional_int(year,'year'))
    return render(request,'categories',rows=rows,q=q,bracket=bracket,year=year,brackets=sorted(reads.BRACKETS))


@router.get('/results')
def results(request: Request, year: str=Query('',max_length=5), category_id: str=Query('',max_length=10),
            db=Depends(get_read_db)):
    editions = edition_summary(reads.championship_history(db))
    selected_year = optional_int(year,'year')
    selected_id = optional_int(category_id,'category',2147483647)
    if selected_year is None:
        selected_year = next((e['year'] for e in editions if e['entries']),None)
    if selected_year is not None and selected_year not in {e['year'] for e in editions}:
        raise HTTPException(400,'This championship edition is not in the archive.')
    categories = reads.category_search(db,year=selected_year) if selected_year else []
    if selected_id is not None and selected_id not in {c['category_id'] for c in categories}:
        raise HTTPException(400,'That category is not available for this edition. Choose the edition again.')
    selected = next((c for c in categories if c['category_id']==selected_id),categories[0] if categories else None)
    rows = reads.rankings(db,selected_year,selected['category_id']) if selected else []
    tied = {rank for rank,count in Counter(r['final_rank'] for r in rows).items() if rank is not None and count>1}
    judges = reads.contest_judges(db,selected_year,selected['category_id']) if selected else []
    return render(request,'results',editions=editions,year=selected_year,categories=categories,
        selected=selected,rows=rows,tied=tied,judges=judges)


@router.get('/reports')
def reports(request: Request, report: Literal['popularity','performance','gold']='popularity',
            name: str=Query('',max_length=255), by: Literal['country','club']='country',
            bracket: str=Query('',max_length=30), min_editions: int=Query(1,ge=1,le=100),
            db=Depends(get_read_db)):
    if bracket and bracket not in reads.BRACKETS:
        raise HTTPException(400,'Choose a listed bracket.')
    if report=='gold':
        rows=reads.gold_medals(db,by=by)
    elif report=='performance':
        rows=reads.competitor_performance(db,name) if name.strip() else []
    else:
        rows=reads.category_popularity(db,bracket=bracket or None,min_editions=min_editions)
    return render(request,'reports',report=report,rows=rows,name=name,by=by,bracket=bracket,
        min_editions=min_editions,brackets=sorted(reads.BRACKETS))


@router.get('/admin')
def admin(request: Request):
    return render(request,'admin')
