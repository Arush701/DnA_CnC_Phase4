"""PyMySQL connection helper and FastAPI dependency (raw SQL only, no ORM)."""
import pymysql
import pymysql.cursors

from config import get_db_config


def get_connection():
    return pymysql.connect(
        **get_db_config(),
        cursorclass=pymysql.cursors.DictCursor,  # rows as dictionaries
        autocommit=False,                         # commit writes manually
    )


def get_db():
    """FastAPI dependency: one connection per request, always closed."""
    conn = get_connection()
    try:
        yield conn
    finally:
        conn.close()
