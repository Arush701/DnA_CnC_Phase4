"""Portable local environment configuration; process variables take precedence."""
import os
from pathlib import Path
from dotenv import load_dotenv

PROJECT_ROOT = Path(__file__).resolve().parent.parent
load_dotenv(PROJECT_ROOT / ".env", override=False)


def get_db_config():
    return {
        "host": os.environ.get("DB_HOST", "127.0.0.1"),
        "port": int(os.environ.get("DB_PORT", "3306")),
        "user": os.environ.get("DB_USER", "wbmc"),
        "password": os.environ.get("DB_PASS", ""),
        "database": os.environ.get("DB_NAME", "wbmc_db"),
        "charset": "utf8mb4",
        "connect_timeout": 5,
        "read_timeout": 5,
        "write_timeout": 5,
    }
