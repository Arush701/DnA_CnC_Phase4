"""Database settings in one place (environment variables with defaults)."""
import os


def get_db_config():
    return {
        "host": os.environ.get("DB_HOST", "localhost"),
        "user": os.environ.get("DB_USER", "root"),
        "password": os.environ.get("DB_PASS", ""),
        "database": os.environ.get("DB_NAME", "wbmc_db"),
    }
