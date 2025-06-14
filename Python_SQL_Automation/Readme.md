# Project: Employee Data Management with SQL and Python 
![Python SQL Automation](https://github.com/Syed-Moinuddin2025/LearnSQLWithProjects/blob/main/Python_SQL_Automation/Images/python-sql.jpeg?raw=true)

This project demonstrates a complete hands-on exercise for managing employee-related data using **SQL Server**, **Python**, and **CSV files**. It covers data creation, insertion, extraction, and automation using Python scripts.

---

## 📂 Folder Structure

```
LearnSQLWithProjects/
│
├── Python_SQL_Automation/
│   ├── employeedata.py            # Python script to insert employee data
│   ├── import_all_csvs.py         # Script to import 5 CSVs into 5 tables
│   ├── Employees.csv              # Exported employee data
│   ├── Departments.csv            # Exported department data
│   ├── JobTitles.csv              # Exported job titles
│   ├── JobAssignments.csv         # Exported job assignments
│   └── Salaries.csv               # Exported salary data
│
└── README.md
```

---

## 📌 Project Components

### ✅ SQL Server Tables

* **Departments**
* **JobTitles**
* **Employees**
* **JobAssignments**
* **Salaries**

### ✅ Data

* 10+ Employees with complete HR info
* Department and job title mapping
* Salary breakup

### ✅ Python Automation

* Connection to SQL Server via `pyodbc`
* CSV file handling via `pandas`
* Scripts for clearing old data, inserting new rows

---

## ▶️ Getting Started

### 1. Requirements

* Python 3.10+
* Libraries:

  ```bash
  pip install pandas pyodbc
  ```

### 2. SQL Server Setup

* Create `EmployeesDB` in SQL Server
* Run the SQL schema script to create tables

### 3. Run Python Scripts

* `employeedata.py`: Inserts sample data
* `import_all_csvs.py`: Imports CSV data into tables

---

## 📝 Sample Queries

* List employees by department
* Show employees hired after a specific year
* Join to fetch job titles with salary
* Group by department for total payroll

---

## 🔁 To Do

* [ ] Add error logging in scripts
* [ ] Create stored procedures for reporting
* [ ] Add unit tests for Python functions

---

## 🚀 Author

**Syed Moinuddin**
[GitHub Profile](https://github.com/Syed-Moinuddin2025)

---

## 📌 License

This project is licensed under the MIT License.
