# WBMC Phase 4 - Team 22

MySQL 8.x, Python 3.11/3.12, FastAPI, PyMySQL and Jinja2 application for the
World Beard & Moustache Championships archive. The application provides seven
READ operations and transactional INSERT, UPDATE and DELETE demonstrations.

## Install on macOS or Linux

Install Python 3.11 (or 3.12) and MySQL 8.x with your operating system's package
manager. From the archive root:

```sh
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install -r src/requirements.txt
cp .env.example .env
```

Edit `.env` with local MySQL settings. Shell variables override `.env`:

| Variable | Default |
|---|---|
| `DB_HOST` | `127.0.0.1` |
| `DB_PORT` | `3306` |
| `DB_USER` | `wbmc` |
| `DB_PASS` | empty |
| `DB_NAME` | `wbmc_db` |
| `WBMC_ADMIN_ENABLED` | `0` |
| `WBMC_ADMIN_TOKEN` | empty |

Never commit `.env` or database passwords. The MySQL account must be able to
create the selected database and its tables, triggers and view. If binary
logging prevents trigger creation, enable `log_bin_trust_function_creators=1`
for the local server.

## Create and populate a fresh database

Use a new database; these commands do not reset the live database:

```sh
mysql -u <user> -p -e "CREATE DATABASE wbmc_db CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci"
mysql -u <user> -p wbmc_db < src/schema.sql
mysql -u <user> -p wbmc_db < src/populate.sql
```

`src/schema.sql` is the unchanged Phase 3 schema. `src/populate.sql` is the
approved V2-derived population: 19 championships, 241 contests/categories,
1,619 historical results, 307 NULL scores, and 147 tied-rank groups. The
46 ambiguous or non-competitor source rows are intentionally quarantined and
are not inserted. The load preserves foreign keys, uniqueness constraints and
all imported values; it does not include demo/test mutations.

## Launch

```sh
python -m uvicorn src.app:app --reload --host 127.0.0.1 --port 8000
```

Open <http://127.0.0.1:8000>. Templates are in `src/templates/` and static
assets are in `src/static/`. The application reads `DB_HOST`, `DB_PORT`,
`DB_USER`, `DB_PASS` and `DB_NAME` from the environment or local `.env`.
Archive connections are read-only and refuse the live `wbmc_db` by default;
configure a separate archive database for normal READ pages.

The admin routes are disabled unless `WBMC_ADMIN_ENABLED=1`, a private
`WBMC_ADMIN_TOKEN` is configured, and `DEMO_DB_NAME` identifies a synthetic
demonstration database. Bind the server to localhost when testing
writes; failed write transactions rollback and leave the database unchanged.
No ORM or frontend build system is required.

The development-only `demo_setup.py` helper is intentionally not part of the
submission archive; use a separately prepared synthetic database for write
demonstrations. The development-only `init_archive.py` importer is likewise
excluded because this archive ships the reproducible `src/populate.sql` load.
