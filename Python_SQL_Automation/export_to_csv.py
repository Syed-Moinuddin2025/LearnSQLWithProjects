import pyodbc
import pandas as pd

# Connection details
conn_str = (
    "Driver={ODBC Driver 17 for SQL Server};"
    "Server=localhost;"
    "Database=EmployeesDB;"
    "Trusted_Connection=yes;"
)

# Connect to SQL Server
conn = pyodbc.connect(conn_str)

# List of tables to export
tables = ['Employees', 'Salaries', 'Departments', 'JobAssignments', 'JobTitles']

# Loop through and export each table
for table in tables:
    query = f"SELECT * FROM {table}"
    df = pd.read_sql(query, conn)
    csv_filename = f"{table}.csv"
    df.to_csv(csv_filename, index=False, encoding='utf-8-sig')
    print(f"✅ Exported {table} to {csv_filename}")

conn.close()
