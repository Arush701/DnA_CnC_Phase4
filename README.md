# WBMC Phase 4 - Team 22

A MySQL-backed web application for the archive of the World Beard and Moustache
Championships (WBMC, <https://www.worldbeardchampionships.com/>). It has seven
READ operations and three WRITE operations (insert, update, delete), all written
as raw parameterised SQL.

## 1. Paradigm, DBMS and versions

- Paradigm: relational. DBMS: MySQL 8.4 (8.x is fine; window functions and
  triggers are used, so MySQL 5.7 and MariaDB are not supported).
- Python 3.11 or newer.

## 2. Stack

- Backend: FastAPI with PyMySQL (no ORM) and Uvicorn.
- Frontend: server-rendered Jinja2 templates with Bootstrap loaded from a CDN.
  There is no frontend build step.

## 3. Design Changes

Phase 2 (EER) was done by Team 18; Phase 3 (relational model) by Team 9.

Significant changes to the Phase 3 design, each with a one-line reason:

- TODO: list every change here (constraints removed or added, columns altered,
  triggers and the `v_category_integrity` view that enforce the CATEGORY
  specialization, anything else that differs from Phase 3).

## 4. Setup and run

Everything below runs from the repository root, on Linux, macOS or Windows.

### 4.1 Install MySQL 8.x

Install MySQL 8.x (8.4 recommended) and Python 3.11 or newer with your operating
system's package manager or the installers from <https://dev.mysql.com/downloads/>.
Make sure the `mysql` command-line client works (`mysql --version`).

### 4.2 Create the database and user

Log in as an administrator (usually `root`) and run the following, choosing your
own password in place of `choose_a_db_password`:

```sql
SET GLOBAL log_bin_trust_function_creators = 1;
CREATE DATABASE wbmc_db CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE USER 'wbmc'@'localhost' IDENTIFIED BY 'choose_a_db_password';
GRANT ALL ON wbmc_db.* TO 'wbmc'@'localhost';
```

For example, `mysql -u root -p` opens the client; paste the statements there.

`log_bin_trust_function_creators = 1` is required: without it MySQL refuses to
create the schema's triggers (error 1419). `SET GLOBAL` lasts until the server
restarts; to make it permanent add `log_bin_trust_function_creators=1` under
`[mysqld]` in the MySQL configuration file.

### 4.3 Create the tables and load the data

Use a new, empty `wbmc_db`. `populate.sql` does not delete anything, so loading it
twice fails with duplicate keys. To start over, drop and recreate the database
(step 4.2) first.

```sh
mysql -u wbmc -p wbmc_db -e "SOURCE src/schema.sql"
mysql -u wbmc -p wbmc_db -e "SOURCE src/populate.sql"
```

`SOURCE` works the same on every operating system (use forward slashes in the
path). A successful load prints nothing. Check it:

```sh
mysql -u wbmc -p wbmc_db -e "SELECT COUNT(*) FROM ENTRY; SELECT COUNT(*) FROM VENUE; SELECT COUNT(*) FROM CLUB; SELECT COUNT(*) FROM BEST_IN_SHOW; SELECT COUNT(*) FROM ENTRY WHERE hometown_country IS NOT NULL;"
```

Expected: 1619 entries, 18 venues, 12 clubs, 8 Best in Show rows, and 826 entries
with a hometown. (Other counts: 19 championships, 245 contests, 1619 competitors,
1 rescheduling.)

### 4.4 Install the Python dependencies

Linux or macOS:

```sh
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r src/requirements.txt cryptography
```

Windows (Command Prompt):

```bat
py -m venv .venv
.venv\Scripts\activate
python -m pip install -r src\requirements.txt cryptography
```

(`cryptography` is needed for MySQL 8's default login method.)

### 4.5 Configure `.env`

Create a plain-text file named `.env` in the repository root with these lines
(never commit it), using the database password from step 4.2:

```
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=wbmc
DB_PASS=choose_a_db_password
DB_NAME=wbmc_db
WBMC_ADMIN_ENABLED=1
WBMC_ADMIN_TOKEN=choose_an_admin_token
```

Change `DB_PORT` if your MySQL does not use 3306. Variables set in the shell
override `.env`. The admin pages are off unless `WBMC_ADMIN_ENABLED=1` and a token
is set.

### 4.6 Run the application

```sh
python -m uvicorn src.app:app --reload --host 127.0.0.1 --port 8000
```

Open <http://127.0.0.1:8000>. The administration page is at
<http://127.0.0.1:8000/admin> and asks for the admin token on every operation.
Stop the server with Ctrl+C.

Health checks: `/api/health` (application) and `/api/health/db` (database).

## 5. Features

READ operations:

1. Competitor search
2. Championship history
3. Rankings
4. Category search
5. Gold medals by affiliation
6. Competitor performance
7. Category popularity

WRITE operations (administration page, all in explicit transactions):

8. Register an entry (INSERT), with an optional club affiliation. Leaving the
   club box empty creates no `REPRESENTS` row.
9. Update an entry's score (UPDATE). Refused once the contest is Published
   (Phase 3: no score edits after `result_status = Published`). `final_rank` is
   not changed, because Phase 3 states the score does not determine the rank.
10. Delete an unpublished entry (DELETE). Refused for scored or ranked entries
    and for Published contests.

Also on the administration page: change a club's membership status.

TODO: reorder this list to match the demo video.

## 6. Data notes

- All historical data (1999 to 2025 results, venues, hosts, Best in Show winners,
  hometowns, clubs) comes from the WBMC website and the sources used to build the
  archive. Fields the website does not publish are NULL.
- Hometowns exist only for the editions that published a location (1999 to 2009,
  2019 and 2025).
- The four 2027 contests (`result_status = Pending`, `registration_status = Open`)
  are not website data. They reuse four existing 2025 categories so the write
  operations have open contests to work on; published history cannot be changed
  through the application.
- Some tables are empty because the website publishes nothing for them.
