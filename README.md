# WBMC Phase 4 - Team 22

A web application for the World Beard and Moustache Championships (WBMC,
<https://www.worldbeardchampionships.com/>) archive. It stores the data in a MySQL
database and shows it on web pages. All database access is written as plain SQL
with parameters. The features are shown in the demo video.

## 1. What we used

- Database: MySQL 8.4 (relational). Any MySQL 8.x works. MySQL 5.7 and MariaDB do
  not, because the schema uses triggers and window functions.
- Python 3.11 or newer.
- Backend: FastAPI with PyMySQL (plain SQL, no ORM) and Uvicorn.
- Frontend: Jinja2 templates with Bootstrap from a CDN. There is nothing to build.

## 2. Changes from the Phase 3 design

Phase 2 (EER) was done by Team 18 and Phase 3 (relational model) by Team 9. Our
changes to their design:

- `CATEGORY.styling_aids` can now be empty (NULL). The website does not tell us
  which categories allow styling aids. The old default, `'None'`, would have wrongly
  said that none of them do.
- A competitor's name is split into `first_name` (required), `middle_name` and
  `last_name` (optional, because some competitors have one name only). `email` and
  `birth_date` are kept but are empty for the old data.
- `CLUB.membership_status` can be empty. The site accepts Active, Inactive and
  Unknown. Empty means "not recorded", and that is the case for all 12 clubs.
- A category is always one of four kinds: Moustache, Partial Beard, Full Beard or
  Craft. Triggers keep this true, and the view `v_category_integrity` lists any
  category that breaks the rule.
- In `RESCHEDULED_TO` the year columns have no cascading foreign-key actions,
  because MySQL does not allow a CHECK on such columns.

## 3. How to set it up and run it

Run everything from the main project folder. It works on Linux, macOS and Windows.

### 3.1 Install MySQL and Python

Install MySQL 8.x (8.4 is best) and Python 3.11 or newer. Check that the `mysql`
command works by running `mysql --version`.

### 3.2 Create the database user

Log in as the MySQL admin (usually `root`, with `mysql -u root -p`) and run this.
Pick your own password instead of `choose_a_db_password`:

```sql
SET GLOBAL log_bin_trust_function_creators = 1;
CREATE USER 'wbmc'@'localhost' IDENTIFIED BY 'choose_a_db_password';
GRANT ALL ON wbmc_db.* TO 'wbmc'@'localhost';
```

The first line is needed. Without it MySQL refuses to create the triggers (error
1419). It lasts until MySQL restarts. To keep it, add
`log_bin_trust_function_creators=1` under `[mysqld]` in the MySQL config file.

You do not create the database yourself: `schema.sql` does it.

### 3.3 Create the tables and load the data

Run these two commands in this order:

```sh
mysql -u wbmc -p -e "SOURCE src/schema.sql"
mysql -u wbmc -p wbmc_db -e "SOURCE src/populate.sql"
```

`schema.sql` deletes and recreates `wbmc_db`, so you always start from an empty
database. `populate.sql` only adds data. If you run it twice you get duplicate-key
errors, so to start again, run `schema.sql` first. A good load prints nothing.

Check the load:

```sh
mysql -u wbmc -p wbmc_db -e "SELECT COUNT(*) FROM ENTRY; SELECT COUNT(*) FROM CATEGORY; SELECT COUNT(*) FROM CONTEST; SELECT COUNT(*) FROM VENUE; SELECT COUNT(*) FROM CLUB; SELECT COUNT(*) FROM BEST_IN_SHOW; SELECT COUNT(*) FROM ENTRY WHERE hometown_country IS NOT NULL;"
```

You should see: 1893 entries, 262 categories, 266 contests, 18 venues, 12 clubs,
9 Best in Show rows and 826 entries with a hometown. Other counts: 19 championships,
1893 competitors and 1 rescheduling.

### 3.4 Install the Python packages

Linux or macOS:

```sh
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r src/requirements.txt
```

Windows (Command Prompt):

```bat
py -m venv .venv
.venv\Scripts\activate
python -m pip install -r src\requirements.txt
```

### 3.5 Create the `.env` file

Make a text file called `.env` in the main folder. A template is in `.env.example`.
Use the password from step 3.2:

```
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=wbmc
DB_PASS=choose_a_db_password
DB_NAME=wbmc_db
WBMC_ADMIN_ENABLED=1
WBMC_ADMIN_TOKEN=choose_an_admin_token
```

Change `DB_PORT` if your MySQL does not use 3306. Never commit `.env`: it holds the
database password and the admin token.

### 3.6 Start the app

```sh
python -m uvicorn src.app:app --reload --host 127.0.0.1 --port 8000
```

Open <http://127.0.0.1:8000>. Press Ctrl+C to stop. Two health pages exist:
`/api/health` (the app) and `/api/health/db` (the database).

## 4. Who can change data (admin token)

- **Admin page** (`/admin`): it works only if `.env` has `WBMC_ADMIN_ENABLED=1` and a
  `WBMC_ADMIN_TOKEN`. You choose the token yourself (any private text). Type it in
  the "Local admin token" box on each form. It is checked every time and is never
  saved in the database or in a cookie. A wrong token, or the setting being off,
  gives a 403 error.
- **Registration** (`/register`): open to everyone, with no token. Signing up for an
  open contest is something any visitor does.
- Every page that changes data only accepts requests from the same computer.
- Pages that only read data need no token.

## 5. Assumptions we made

**Data**

- The history comes from the WBMC website (results, venues, hosts, Best in Show
  winners, hometowns, clubs), collected in
  `WBMC_Historical_Database_Completed.xlsx` and `wbmc_scraped_data/`. If the
  website does not give a value, it is left empty (NULL). We never invent values.
- All IDs are our own numbers (`competitor_id`, `category_id`, contest and entry
  numbers). The "Competitor Number" in the Excel sheet is only a bib number for one
  edition, so we do not use it.
- Championships are held in 1990 or in odd years from 1995 on, and the database
  enforces this. 2021 was cancelled because of COVID-19 and replaced by 2023. The
  Results page shows the reason for a cancelled edition and links to its
  replacement.
- Every edition has its own category rows, so there are 262 in total. The
  `rule_version` text (like `V2-import-2015`) is just a label we made: V2 means the
  v2 spreadsheet and the year is the first edition where the category appears.
  The website has no official rule version numbers.
- The website does not give category aliases, so `CATEGORY_ALIAS` is empty. It also
  does not say which categories allow styling aids, so `styling_aids` is empty for
  all of them.
- Only the published ranks are stored. Competitors who stayed tied share a rank. An
  entry with no published rank has an empty rank. Scores do not decide the rank.
  Some 2023 contests used a separate tie-break score (for example, in Imperial
  Moustache, Ralf Schulz and Frank Wiegand both scored 45.5 and tie-break scores of
  49 and 46 put them 2nd and 3rd). The schema has no column for it, so it is not
  stored.
- Competitors with one name have an empty last name. A competitor can have only one
  entry per edition.
- Hometowns exist only for the editions that published them (1999 to 2009, 2019
  and 2025): 826 entries in total.
- Club membership status is not published, so it is empty for all 12 clubs. A club
  marked Inactive cannot be given new members.
- The website has no judge data, so `JUDGE`, `ASSIGNED_TO` and `SCORES` start empty.
  Judges are added to contests from the admin page. `REPRESENTS` also starts empty.
  A row is added only when someone registers with a club.

**Open contests we added**

- The four 2027 contests (results `Pending`, registration `Open`) and the
  scheduled 2029 edition are not website data. We added them so the forms have
  contests to work on. The 2027 contests reuse four existing 2025 categories.

**Rules for changes**

- Registering, changing a score, deleting an entry and adding a judge work only on a
  contest whose results are still `Pending`. Registering also needs registration to
  be `Open`. Published results cannot be changed.
- An edition with any published contest cannot be rescheduled or cancelled.
- Changing a score never changes the rank.
- An entry that already has a score or a rank cannot be deleted.
- Each change runs as one transaction. If anything goes wrong, nothing is saved.

**Test data**

- Anything added through the website (registrations, new editions, judges) exists
  only in the running database. To go back to the original data, run `schema.sql` and
  `populate.sql` again (step 3.3).
