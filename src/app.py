"""FastAPI entry point. Run with: uvicorn app:app --reload --port 5000

NOTE: use plain `def` route handlers (not `async def`) because PyMySQL is synchronous.
"""
from fastapi import FastAPI

app = FastAPI(title="WBMC Phase 4 API")


@app.get("/api/health")
def health():
    return {"status": "ok"}


# Routers (championships, contests, competitors, entries, judges) get included here
# as they are written, e.g.:
#   from routers import championships
#   app.include_router(championships.router, prefix="/api")
