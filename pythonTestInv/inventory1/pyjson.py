from contextlib import closing
from datetime import datetime
import json
import MySQLdb
DB_NAME = 'emp'
DB_USER = 'root'
DB_PASS = 'root'

def get_tables(cursor):
    cursor.execute('SHOW tables')
    return [r[0] for r in cursor.fetchall()] 

def get_rows_as_dicts(cursor, table):
    cursor.execute('select * from {}'.format(table))
    columns = [d[0] for d in cursor.description]
    return [dict(zip(columns, row)) for row in cursor.fetchall()]

def dump_date(thing):
    if isinstance(thing, datetime):
        return thing.isoformat()
    return str(thing)


with closing(MySQLdb.connect(user=DB_USER, passwd=DB_PASS, db=DB_NAME)) as conn, closing(conn.cursor()) as cursor:
    dump = {}
    for table in get_tables(cursor):
        dump[table] = get_rows_as_dicts(cursor, table)
    print(json.dumps(dump, default=dump_date, indent=2))

