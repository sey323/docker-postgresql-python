import os
import psycopg2

DATABASE_URL='postgresql://postgre:postgre@dbdocker_postgres_1:5432/postgres'

def main():
    cursor = psycopg2.connect(DATABASE_URL)
    print(cursor)

if __name__ == '__main__':
    main()
