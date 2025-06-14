import pyodbc

# SQL Server connection
conn = pyodbc.connect(
    "Driver={ODBC Driver 17 for SQL Server};"
    "Server=localhost;"
    "Database=EmployeesDB;"
    "Trusted_Connection=yes;"
)
cursor = conn.cursor()

# Step 1: Delete from JobAssignments
cursor.execute("DELETE FROM JobAssignments")
conn.commit()

# Step 2: Delete from Salaries
cursor.execute("DELETE FROM Salaries")
conn.commit()

# Step 3: Delete from Employees
cursor.execute("DELETE FROM Employees")
conn.commit()

# Step 4: Insert new employees
employees = [
    (101, 'Ali', 'Khan', 'Male', '1990-05-12', '2015-06-01', 1),
    (102, 'Sara', 'Ahmed', 'Female', '1988-11-23', '2016-03-10', 2),
    (103, 'Omar', 'Zaid', 'Male', '1992-07-18', '2018-01-25', 3),
    (104, 'Nadia', 'Farooq', 'Female', '1985-03-14', '2019-08-15', 4),
    (105, 'Hassan', 'Raza', 'Male', '1980-09-30', '2010-09-01', 1),
    (106, 'Ayesha', 'Malik', 'Female', '1991-01-11', '2017-05-20', 5),
    (107, 'Bilal', 'Sheikh', 'Male', '1983-12-19', '2012-11-01', 4),
    (108, 'Zara', 'Siddiqui', 'Female', '1995-02-02', '2020-02-10', 2),
    (109, 'Imran', 'Ali', 'Male', '1998-04-22', '2021-03-15', 3),
    (110, 'Fatima', 'Khalid', 'Female', '1994-06-30', '2022-06-01', 5)
]

insert_query = """
INSERT INTO Employees (EmployeeID, FirstName, LastName, Gender, DateOfBirth, HireDate, DepartmentID)
VALUES (?, ?, ?, ?, ?, ?, ?)
"""

for emp in employees:
    cursor.execute(insert_query, emp)

conn.commit()
print("✅ Employees inserted successfully.")

cursor.close()
conn.close()
