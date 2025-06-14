import pyodbc

# SQL Server connection setup
conn = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=localhost;'
    'DATABASE=EmployeesDB;'
    'Trusted_Connection=yes;'
)
cursor = conn.cursor()

# Step 1: Delete from dependent tables first
try:
    cursor.execute("DELETE FROM JobAssignments")
    cursor.execute("DELETE FROM Salaries")
    conn.commit()
    print("✅ Old records deleted successfully.")
except Exception as e:
    print("❌ Error deleting data:", e)
    conn.rollback()

# Step 2: Insert into JobAssignments
job_assignments = [
    (1, 101, '2015-06-01', None),
    (2, 102, '2016-03-10', None),
    (3, 103, '2018-01-25', None),
    (4, 104, '2019-08-15', None),
    (5, 105, '2010-09-01', None),
    (6, 106, '2017-05-20', None),
    (7, 107, '2012-11-01', None),
    (8, 108, '2020-02-10', None),
    (9, 109, '2021-03-15', None),
    (10, 110, '2022-06-01', None)
]

try:
    cursor.executemany("""
        INSERT INTO JobAssignments (JobTitleID, EmployeeID, FromDate, ToDate)
        VALUES (?, ?, ?, ?)
    """, job_assignments)
    conn.commit()
    print("✅ JobAssignments inserted successfully.")
except Exception as e:
    print("❌ Error inserting JobAssignments:", e)
    conn.rollback()

# Step 3: Insert into Salaries
salaries = [
    (101, 70000, 5000, 2000),
    (102, 60000, 4000, 1500),
    (103, 55000, 3500, 1200),
    (104, 50000, 3000, 1000),
    (105, 80000, 6000, 2500),
    (106, 45000, 2500, 900),
    (107, 65000, 4500, 1800),
    (108, 40000, 2000, 700),
    (109, 35000, 1500, 600),
    (110, 42000, 2200, 800)
]

try:
    cursor.executemany("""
        INSERT INTO Salaries (EmployeeID, BasicSalary, Allowance, Deductions)
        VALUES (?, ?, ?, ?)
    """, salaries)
    conn.commit()
    print("✅ Salaries inserted successfully.")
except Exception as e:
    print("❌ Error inserting Salaries:", e)
    conn.rollback()

# Cleanup
cursor.close()
conn.close()
