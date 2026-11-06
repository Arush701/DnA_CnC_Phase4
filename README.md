# WBMC Phase 4 (Team 9)


## Database setup

Requires **MySQL 8.4** (not MariaDB; older MySQL versions ignore CHECK constraints).

The schema creates triggers, so the server needs
`log_bin_trust_function_creators=1`, or the load fails with
"You do not have the SUPER privilege and binary logging is enabled".
Either set it in `my.cnf`, or run once as an admin user:

    SET GLOBAL log_bin_trust_function_creators = 1;

### Load the schema

    mysql -u <user> -p < src/schema.sql

This drops and recreates the `wbmc_db` database every time, so it is safe to rerun.
The user needs privileges on `wbmc_db` (for example `GRANT ALL ON wbmc_db.* TO ...`).

### Optional: run MySQL in a container (any OS)

    podman run -d --name wbmc-mysql \
      -e MYSQL_ROOT_PASSWORD=<choose one> \
      -p 127.0.0.1:3307:3306 \
      -v wbmc_mysql_data:/var/lib/mysql \
      docker.io/library/mysql:8.4 --log-bin-trust-function-creators=1

Use `docker` instead of `podman` if you have Docker. Then create the app user:

    podman exec -it wbmc-mysql mysql -uroot -p -e "CREATE USER 'wbmc'@'%' IDENTIFIED BY 'wbmcpw'; GRANT ALL PRIVILEGES ON wbmc_db.* TO 'wbmc'@'%'; FLUSH PRIVILEGES;"

and load the schema from inside the container:

    podman exec -i wbmc-mysql mysql -uwbmc -pwbmcpw < src/schema.sql

### Backend connection settings

`src/config.py` reads these environment variables (defaults match the container above):

| Variable | Default |
|---|---|
| `DB_HOST` | `127.0.0.1` |
| `DB_PORT` | `3307` |
| `DB_USER` | `wbmc` |
| `DB_PASS` | `wbmcpw` |
| `DB_NAME` | `wbmc_db` |

With a normal local install, set `DB_PORT=3306` and your own user and password.

## Ownership

`schema.sql` and `populate.sql` are edited only by the database owner. If you need a
column or index, ask them.