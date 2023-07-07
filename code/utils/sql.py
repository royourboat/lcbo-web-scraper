import psycopg2
import psycopg2.extras

def query(sql_address, q):
    connection = psycopg2.connect(sql_address)
    cur = connection.cursor()
    cur.execute(q)
    connection.commit()
    connection.close()

def query_table(sql_address, query):
    connection = psycopg2.connect(sql_address)
    cur = connection.cursor()
    cur.execute(query)
    columnName = [desc[0] for desc in cur.description]
    tbl = cur.fetchall()
    connection.close()

    return tbl, columnName     

def bulkInsert(sql_address, tableName, records, columns):
    try:
        connection = psycopg2.connect(sql_address)        
        cursor = connection.cursor()

        tableColumns = list(columns)
        
        sql_insert_query = f"""
        INSERT INTO {tableName} ({', '.join(tableColumns)})
        VALUES %s
        """
        result = psycopg2.extras.execute_values(cursor, sql_insert_query, records)
         
        connection.commit()
        print(cursor.rowcount, f"Record inserted successfully into {tableName} table")

    except (Exception, psycopg2.Error) as error:
        print("Error while updating PostgreSQL table", error)

    finally:
        # closing database connection.
        if connection:
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")