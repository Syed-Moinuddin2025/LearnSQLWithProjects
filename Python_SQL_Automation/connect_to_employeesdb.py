import pyodbc

conn = pyodbc.connect(
    "Driver={ODBC Driver 17 for SQL Server};"
    "Server=localhost;"
    "Database=EmployeesDB;"
    "Trusted_Connection=yes;"
)

print("✅ Connected to EmployeesDB!")
