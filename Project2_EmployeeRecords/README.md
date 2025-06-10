# 👨‍💼 Project 2: Employee Records Management

A structured SQL project simulating a real-world employee database for HR systems. Ideal for practicing **JOINs**, **aggregations**, **date functions**, and **salary computations**.

---

## 🏗️ Database Design Overview

This project includes **four normalized tables** with foreign key relationships:

- **Departments** – List of all departments  
- **Employees** – Basic employee information  
- **JobAssignments** – Tracks job titles with time validity  
- **Salaries** – Salary structure including allowances and deductions  

Entity Relationship:  
- One department has many employees  
- One employee can have one job title assignment  
- One employee has one salary record  

---

## 📂 Files Included

| File Name                    | Description                                |
|-----------------------------|--------------------------------------------|
| `01_create_tables.sql`      | SQL script to create the tables            |
| `02_insert_data.sql`        | Insert sample data into all 4 tables       |
| `03_basic_queries.sql`      | Basic SELECT queries (viewing data)        |
| `04_intermediate_queries.sql` | JOINs, aggregations, salary calculations |
| `05_Employee_Queries_Result.ipynb` | Notebook with queries + output     |

---

## 🔍 What You'll Learn

- Table creation with proper relationships  
- Running `JOIN` queries with multiple tables  
- Salary calculation using expressions  
- Grouping and filtering by department/job  
- Using `INFORMATION_SCHEMA` for metadata checks  

---

## 📸 Preview

<img src="https://github.com/Syed-Moinuddin2025/LearnSQLWithProjects/blob/main/Images/EmployeeDB_Diagram.png?raw=true" width="800" alt="Employee DB Structure"/>

---

## ✅ Sample Query

```sql
SELECT 
    E.FirstName + ' ' + E.LastName AS FullName,
    D.DepartmentName,
    J.Title,
    (S.BasicSalary + S.Allowance - S.Deductions) AS NetPay
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
JOIN JobAssignments J ON E.EmployeeID = J.EmployeeID
JOIN Salaries S ON E.EmployeeID = S.EmployeeID;
