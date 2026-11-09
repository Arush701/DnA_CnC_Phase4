"""PyMySQL connection helper and FastAPI dependency (raw SQL only, no ORM)."""
import pymysql
import pymysql.cursors

from .config import get_db_config


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


def check_connection():
    """Read-only probe; never creates tables or imports data."""
    conn = get_connection()
    try:
        with conn.cursor() as cursor:
            cursor.execute("SELECT 1 AS connected, VERSION() AS version, DATABASE() AS database_name")
            return cursor.fetchone()
    finally:
        conn.close()


def get_read_db():
    """Website connections are read-only and cannot target the live database."""
    if get_db_config()['database'] == 'wbmc_db':
        raise ValueError('Configure the separate archive database')
    conn = get_connection()
    try:
        with conn.cursor() as cursor:
            cursor.execute('SET SESSION TRANSACTION READ ONLY')
            cursor.execute('START TRANSACTION READ ONLY')
        yield conn
    finally:
        conn.rollback()
        conn.close()
