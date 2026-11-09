"""Seven read-only features. Caller supplies a PyMySQL DictCursor connection.

All values are bound parameters. Only fixed, allowlisted SQL fragments are composed.
No function commits, changes session state, or performs DML/DDL.
"""
NAME = "CONCAT_WS(' ', c.first_name, NULLIF(c.middle_name, ''), NULLIF(c.last_name, ''))"
COLLATION = 'utf8mb4_0900_as_cs'
BRACKETS = {'Moustache', 'Partial Beard', 'Full Beard', 'Craft'}
ENTRY_COUNTS = '''SELECT championship_year, contest_no, COUNT(*) AS result_entries
    FROM ENTRY GROUP BY championship_year, contest_no'''


def _fetch(conn, sql, params):
    with conn.cursor() as cursor:
        cursor.execute(sql, tuple(params))
        return list(cursor.fetchall())


def _integer(value, label, minimum=1, maximum=2147483647):
    if type(value) is not int or not minimum <= value <= maximum:
        raise ValueError(f'{label} must be an integer between {minimum} and {maximum}')
    return value


def _text(value):
    if not isinstance(value, str) or len(value) > 255:
        raise ValueError('Search text must be a string of at most 255 characters')
    return value


def _like(value):
    # Explicit ESCAPE avoids dependence on backslash SQL modes. Wildcards are literal.
    return '%' + _text(value).replace('=', '==').replace('%', '=%').replace('_', '=_') + '%'


def _year_filter(where, params, column, year_from, year_to):
    if year_from is not None:
        where.append(column + ' >= %s')
        params.append(_integer(year_from, 'year_from', 1, 32767))
    if year_to is not None:
        where.append(column + ' <= %s')
        params.append(_integer(year_to, 'year_to', 1, 32767))
    if year_from is not None and year_to is not None and year_from > year_to:
        raise ValueError('year_from must not exceed year_to')


def _bracket_filter(where, params, bracket):
    if bracket is not None:
        if bracket not in BRACKETS:
            raise ValueError('Unknown bracket')
        where.append('k.bracket = %s')
        params.append(bracket)


def competitor_search(conn, name, *, year=None, limit=50, offset=0):
    """Literal substring search, using MySQL's assigned accent/case-insensitive collation.

    IDs are edition-scoped imported records, not verified lifetime person identities.
    """
    where, params = [f"{NAME} LIKE %s ESCAPE '='"], [_like(name)]
    if year is not None:
        where.append('e.championship_year = %s')
        params.append(_integer(year, 'year', 1, 32767))
    params += [_integer(limit, 'limit', 1, 1000), _integer(offset, 'offset', 0)]
    return _fetch(conn, f'''SELECT c.competitor_id, {NAME} AS competitor_name,
        COUNT(e.entry_no) AS result_entries, MIN(e.championship_year) AS first_year,
        MAX(e.championship_year) AS last_year
        FROM COMPETITOR c LEFT JOIN ENTRY e ON e.competitor_id = c.competitor_id
        WHERE {' AND '.join(where)}
        GROUP BY c.competitor_id, c.first_name, c.middle_name, c.last_name
        ORDER BY competitor_name COLLATE {COLLATION}, c.competitor_id
        LIMIT %s OFFSET %s''', params)


def championship_history(conn, *, year=None):
    """One row per edition/category; editions with no contests remain visible."""
    where, params = '', []
    if year is not None:
        where = 'WHERE h.championship_year = %s'
        params.append(_integer(year, 'year', 1, 32767))
    return _fetch(conn, f'''SELECT h.championship_year, h.status, h.start_date, h.end_date,
        k.category_id, k.category_name, k.bracket, k.rule_version, t.contest_no,
        COALESCE(n.result_entries, 0) AS result_entries
        FROM CHAMPIONSHIP h
        LEFT JOIN CONTEST t ON t.championship_year = h.championship_year
        LEFT JOIN CATEGORY k ON k.category_id = t.category_id
        LEFT JOIN ({ENTRY_COUNTS}) n ON n.championship_year = t.championship_year
            AND n.contest_no = t.contest_no
        {where}
        ORDER BY h.championship_year DESC, k.bracket, k.category_name COLLATE {COLLATION}, t.contest_no''', params)


def rankings(conn, year, category_id, *, max_rank=None):
    """Published ranks as stored: ties stay tied, missing scores stay NULL."""
    where = ['e.championship_year = %s', 'k.category_id = %s']
    params = [_integer(year, 'year', 1, 32767), _integer(category_id, 'category_id')]
    if max_rank is not None:
        where.append('e.final_rank <= %s')
        params.append(_integer(max_rank, 'max_rank'))
    return _fetch(conn, f'''SELECT e.championship_year, e.contest_no, e.entry_no,
        c.competitor_id, {NAME} AS competitor_name, k.category_id, k.category_name,
        e.final_rank, e.published_total_score, e.is_withdrawn
        FROM ENTRY e JOIN COMPETITOR c ON c.competitor_id = e.competitor_id
        JOIN CONTEST t ON t.championship_year = e.championship_year AND t.contest_no = e.contest_no
        JOIN CATEGORY k ON k.category_id = t.category_id
        WHERE {' AND '.join(where)}
        ORDER BY e.final_rank IS NULL, e.final_rank, e.entry_no''', params)


def category_search(conn, text='', *, bracket=None, year=None):
    """Name/bracket/alias substring search; EXISTS avoids alias multiplication."""
    pattern = _like(text)
    where = ["""(k.category_name LIKE %s ESCAPE '=' OR k.bracket LIKE %s ESCAPE '='
        OR EXISTS (SELECT 1 FROM CATEGORY_ALIAS a WHERE a.category_id=k.category_id
            AND a.alias LIKE %s ESCAPE '='))"""]
    params = [pattern, pattern, pattern]
    _bracket_filter(where, params, bracket)
    if year is not None:
        where.append('t.championship_year = %s')
        params.append(_integer(year, 'year', 1, 32767))
    return _fetch(conn, f'''SELECT k.category_id, k.category_name, k.bracket, k.rule_version,
        t.championship_year, t.contest_no, COALESCE(n.result_entries, 0) AS result_entries
        FROM CATEGORY k LEFT JOIN CONTEST t ON t.category_id = k.category_id
        LEFT JOIN ({ENTRY_COUNTS}) n ON n.championship_year=t.championship_year AND n.contest_no=t.contest_no
        WHERE {' AND '.join(where)}
        ORDER BY k.category_name COLLATE {COLLATION}, k.bracket, t.championship_year, k.category_id''', params)


def gold_medals(conn, *, by='country', year=None, min_gold=1):
    """Count rank-1 entries only with populated structured affiliations.

    Country = ENTRY.hometown_country (not citizenship). Club = edition-specific
    REPRESENTS. NULL/blank values are omitted, never inferred from free-text V2 locations.
    Empty output means no qualifying *known* affiliation, not that no golds exist.
    """
    where, params = ['e.final_rank = 1', 'e.is_withdrawn = 0'], []
    if by == 'country':
        select = f'NULL AS affiliation_id, e.hometown_country COLLATE {COLLATION} AS affiliation'
        joins = ''
        group = f'e.hometown_country COLLATE {COLLATION}'
        where += ["e.hometown_country IS NOT NULL", "TRIM(e.hometown_country) <> ''"]
    elif by == 'club':
        select = 'b.club_id AS affiliation_id, b.club_name AS affiliation'
        joins = '''JOIN REPRESENTS r ON r.competitor_id=e.competitor_id
            AND r.championship_year=e.championship_year JOIN CLUB b ON b.club_id=r.club_id'''
        group = 'b.club_id, b.club_name'
        where.append("TRIM(b.club_name) <> ''")
    else:
        raise ValueError('by must be country or club')
    if year is not None:
        where.append('e.championship_year = %s')
        params.append(_integer(year, 'year', 1, 32767))
    params.append(_integer(min_gold, 'min_gold'))
    return _fetch(conn, f'''SELECT {select}, COUNT(*) AS gold_medals,
        COUNT(DISTINCT e.championship_year) AS editions FROM ENTRY e {joins}
        WHERE {' AND '.join(where)} GROUP BY {group}
        HAVING COUNT(*) >= %s
        ORDER BY gold_medals DESC, affiliation COLLATE {COLLATION}, affiliation_id''', params)


def competitor_performance(conn, exact_name, *, year_from=None, year_to=None):
    """Cross-edition exact-name matches, NOT verified cross-edition identity merging.

    Each result retains its competitor ID and an explicit identity_basis field.
    """
    if not _text(exact_name).strip():
        raise ValueError('An exact display name is required')
    where, params = [f'{NAME} COLLATE {COLLATION} = %s'], [exact_name]
    _year_filter(where, params, 'e.championship_year', year_from, year_to)
    return _fetch(conn, f'''SELECT c.competitor_id, {NAME} AS competitor_name,
        h.championship_year, k.category_id, k.category_name, k.bracket,
        e.final_rank, e.published_total_score,
        'unverified_exact_name_match' AS identity_basis
        FROM COMPETITOR c JOIN ENTRY e ON e.competitor_id=c.competitor_id
        JOIN CHAMPIONSHIP h ON h.championship_year=e.championship_year
        JOIN CONTEST t ON t.championship_year=e.championship_year AND t.contest_no=e.contest_no
        JOIN CATEGORY k ON k.category_id=t.category_id
        WHERE {' AND '.join(where)}
        ORDER BY h.championship_year, e.final_rank IS NULL, e.final_rank, c.competitor_id''', params)


def category_popularity(conn, *, bracket=None, year_from=None, year_to=None, min_entries=1, min_editions=1):
    """Count recorded result entries by exact category label/bracket across versions.

    This measures V2 coverage, not total historical registrations or unique people.
    """
    where, params = ['1=1'], []
    _bracket_filter(where, params, bracket)
    _year_filter(where, params, 'e.championship_year', year_from, year_to)
    params += [_integer(min_entries, 'min_entries'), _integer(min_editions, 'min_editions')]
    return _fetch(conn, f'''SELECT k.category_name COLLATE {COLLATION} AS category_name,
        k.bracket, COUNT(*) AS result_entries, COUNT(DISTINCT e.championship_year) AS editions,
        MIN(e.championship_year) AS first_year, MAX(e.championship_year) AS last_year
        FROM CATEGORY k JOIN CONTEST t ON t.category_id=k.category_id
        JOIN ENTRY e ON e.championship_year=t.championship_year AND e.contest_no=t.contest_no
        WHERE {' AND '.join(where)}
        GROUP BY k.category_name COLLATE {COLLATION}, k.bracket
        HAVING COUNT(*) >= %s AND COUNT(DISTINCT e.championship_year) >= %s
        ORDER BY result_entries DESC, editions DESC, category_name COLLATE {COLLATION}, k.bracket''', params)
