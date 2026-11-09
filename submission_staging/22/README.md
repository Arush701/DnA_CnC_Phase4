# WBMC Phase 4 - Team 22

This MySQL 8.x archive records World Beard & Moustache Championships history.
It uses Python 3.11/3.12, FastAPI, PyMySQL, Jinja2 and server-rendered HTML.

## Requirements and installation

Install Python 3.11 or 3.12 and MySQL 8.x on macOS or Linux. From the archive
root:

```sh
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install -r src/requirements.txt
```

Set these environment variables, or place them in a local untracked `.env`:

| Variable | Default |
|---|---|
| `DB_HOST` | `127.0.0.1` |
| `DB_PORT` | `3306` |
| `DB_USER` | `wbmc` |
| `DB_PASS` | empty |
| `DB_NAME` | `wbmc_db` |
| `WBMC_ADMIN_ENABLED` | `0` |
| `WBMC_ADMIN_TOKEN` | empty |
| `DEMO_DB_NAME` | empty |

Never include `.env` or credentials in the submission. Shell variables override
`.env`. The MySQL account needs permission to create the selected database,
tables, triggers and view. If required by local binary logging, enable
`log_bin_trust_function_creators=1`.

## Database initialization

Use a new database; these commands do not reset an existing live database:

```sh
mysql -u <user> -p -e "CREATE DATABASE wbmc_db CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci"
mysql -u <user> -p wbmc_db < src/schema.sql
mysql -u <user> -p wbmc_db < src/populate.sql
```

`schema.sql` is the unchanged Phase 3 relational schema. `populate.sql` is a
self-contained, deterministic V2-derived load containing 19 championships,
241 contests/categories, 1,619 results, 307 NULL scores and 147 tied-rank
groups. Ambiguous identities and non-competitor markers are excluded; no demo
mutations or source workbooks are required. Foreign keys, unique keys, checks,
triggers and the category-integrity view remain enabled.

## Run the application

```sh
python -m uvicorn src.app:app --reload --host 127.0.0.1 --port 8000
```

Open <http://127.0.0.1:8000>. Templates are in `src/templates/` and CSS is in
`src/static/`. Configure a separate archive database for READ pages; the
application refuses the live `wbmc_db` for archive reads.

## Features

The seven READ operations are competitor search, championship history and
categories, filtered rankings, category/alias/bracket search, known-affiliation
gold reports, exact-name cross-edition performance, and category participation.
They use parameterized SQL with joins, grouping, HAVING and ordering.

The three transactional WRITE operations are registering an entry (INSERT),
changing club membership status (UPDATE), and deleting an eligible entry
(DELETE). Writes are restricted to a local synthetic demo database, require
the admin token, validate constraints, commit successful transactions and
rollback failures. Published, ranked or dependent historical entries are
protected.

## Demonstration video order

Show the landing page and navigation, championship history, competitor search,
category and ranking filters, reports and participation, then demonstrate the
protected admin INSERT, UPDATE and DELETE transactions and their validation
messages.
