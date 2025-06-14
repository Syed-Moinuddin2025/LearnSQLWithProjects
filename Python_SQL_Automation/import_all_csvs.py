import pyodbc
import pandas as pd

# Database connection
conn = pyodbc.connect(
    "Driver={ODBC Driver 17 for SQL Server};"
    "Server=localhost;"
    "Database=EmployeesDB;"
    "Trusted_Connection=yes;"
)
cursor = conn.cursor()

# Clean data: delete in dependency-safe order
cursor.execute("DELETE FROM JobAssignments")
cursor.execute("DELETE FROM Salaries")
cursor.execute("DELETE FROM Employees")
cursor.execute("DELETE FROM JobTitles")
cursor.execute("DELETE FROM Departments")
conn.commit()

# Load CSVs and insert

# Departments
df_dept = pd.read_csv("Departments.csv")
for _, row in df_dept.iterrows():
    cursor.execute("INSERT INTO Departments VALUES (?, ?)", row.DepartmentID, row.DepartmentName)

# JobTitles
df_jobs = pd.read_csv("JobTitles.csv")
for _, row in df_jobs.iterrows():
    cursor.execute("INSERT INTO JobTitles VALUES (?, ?)", row.JobTitleID, row.Title)

# Employees
df_emp = pd.read_csv("Employees.csv")
for _, row in df_emp.iterrows():
    cursor.execute(
        "INSERT INTO Employees VALUES (?, ?, ?, ?, ?, ?, ?)",
        row.EmployeeID, row.FirstName, row.LastName,
        row.Gender, row.DateOfBirth, row.HireDate, row.DepartmentID
    )

# Salaries
df_sal = pd.read_csv("Salaries.csv")
for _, row in df_sal.iterrows():
    cursor.execute(
        "INSERT INTO Salaries VALUES (?, ?, ?, ?)",
        row.EmployeeID, row.BasicSalary, row.Allowance, row.Deductions
    )

# JobAssignments
df_jobs = pd.read_csv("JobAssignments.csv")
for _, row in df_jobs.iterrows():
    cursor.execute(
        "INSERT INTO JobAssignments VALUES (?, ?, ?, ?)",
        row.JobTitleID, row.EmployeeID, row.FromDate, row.ToDate
    )

conn.commit()
conn.close()
print("✅ All CSV data imported successfully!")
