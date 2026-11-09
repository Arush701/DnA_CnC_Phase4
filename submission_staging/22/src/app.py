"""Run from the repository root: python -m uvicorn src.app:app --port 5000."""
import pymysql
from fastapi import FastAPI, Request
from fastapi.exceptions import RequestValidationError
from fastapi.staticfiles import StaticFiles
from starlette.exceptions import HTTPException as StarletteHTTPException
from fastapi.responses import JSONResponse
from .config import PROJECT_ROOT
from .db import check_connection
from .routers.web import router, templates

app = FastAPI(title="WBMC Phase 4 — Team 22")
app.mount('/static', StaticFiles(directory=str(PROJECT_ROOT / 'src/static')), name='static')
app.include_router(router)
from .routers.admin import router as admin_router
app.include_router(admin_router)


@app.exception_handler(pymysql.MySQLError)
@app.exception_handler(OSError)
@app.exception_handler(ValueError)
async def database_error(request: Request, exc):
    return templates.TemplateResponse(request=request, name='error.html', status_code=503,
        context={'message':'The archive is temporarily unavailable. Please try again shortly.'})


@app.exception_handler(RequestValidationError)
async def invalid_filter(request: Request, exc):
    return templates.TemplateResponse(request=request, name='error.html', status_code=400,
        context={'message':'Please check the selected filters and try again.'})


@app.exception_handler(StarletteHTTPException)
async def http_error(request: Request, exc):
    return templates.TemplateResponse(request=request, name='error.html', status_code=exc.status_code,
        context={'message':exc.detail if exc.status_code==400 else 'This page or action is not available.'})


@app.get("/api/health")
def health():
    return {"status": "ok"}


@app.get("/api/health/db")
def database_health():
    try:
        result = check_connection()
    except (pymysql.MySQLError, ValueError, OSError):
        return JSONResponse(status_code=503, content={
            "status": "unavailable",
            "detail": "Check the MySQL service, existing database, and local .env configuration.",
        })
    version = str(result["version"])
    if not version.startswith("8.") or "mariadb" in version.lower():
        return JSONResponse(status_code=503, content={
            "status": "unsupported", "detail": "MySQL 8.x is required.",
        })
    return {"status": "ok", "version": version, "database": result["database_name"]}
