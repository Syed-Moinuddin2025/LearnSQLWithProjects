{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "USE LearnSQL_DB;\r\n",
                "\r\n",
                "-- Create Departments table\r\n",
                "CREATE TABLE Departments (\r\n",
                "    DeptID INT PRIMARY KEY,\r\n",
                "    DeptName NVARCHAR(100) NOT NULL\r\n",
                ");\r\n",
                "GO\r\n",
                "\r\n",
                "-- Create Employees table\r\n",
                "CREATE TABLE Employees (\r\n",
                "    EmpID INT PRIMARY KEY,\r\n",
                "    EmpName NVARCHAR(100) NOT NULL,\r\n",
                "    Gender CHAR(1),\r\n",
                "    HireDate DATE,\r\n",
                "    Salary DECIMAL(10,2),\r\n",
                "    DeptID INT FOREIGN KEY REFERENCES Departments(DeptID)\r\n",
                ");\r\n",
                "GO\r\n",
                "-- Insert departments\r\n",
                "INSERT INTO Departments (DeptID, DeptName) VALUES\r\n",
                "(1, 'Human Resources'),\r\n",
                "(2, 'Finance'),\r\n",
                "(3, 'IT'),\r\n",
                "(4, 'Marketing');\r\n",
                "GO\r\n",
                "\r\n",
                "-- Insert employees\r\n",
                "INSERT INTO Employees (EmpID, EmpName, Gender, HireDate, Salary, DeptID) VALUES\r\n",
                "(101, 'Ali Khan', 'M', '2020-02-15', 5500.00, 1),\r\n",
                "(102, 'Sara Ahmed', 'F', '2021-06-10', 6200.00, 3),\r\n",
                "(103, 'John Mathew', 'M', '2019-11-01', 7000.00, 2),\r\n",
                "(104, 'Ayesha Noor', 'F', '2022-01-20', 4800.00, 4),\r\n",
                "(105, 'Bilal Hussain', 'M', '2023-04-05', 5100.00, 3);\r\n",
                "GO\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "757d06c6-530a-41d0-a277-b54b44827138",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 2714, Level 16, State 6, Line 4\r\nThere is already an object named 'Departments' in the database.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "error",
                    "evalue": "Msg 2714, Level 16, State 6, Line 11\r\nThere is already an object named 'Employees' in the database.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.039"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 9
        }
    ]
}