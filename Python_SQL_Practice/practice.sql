-- SQL Practice Script: Basics
-- ✅ Use this in VS Code with MS SQL extension

-- 1. View all Employees
SELECT * FROM Employees

-- 2. View all Departments
SELECT * FROM Departments
 
 -- 3. View all Designations
 SELECT * FROM Designations

 -- 4. View all Salaries
 SELECT * FROM Salaries

 -- 5. Insert a new Employee
 INSERT INTO Employees (EmpID,FirstName,LastName ,DeptID , DesigID , JoinDate)
 VALUES (208 , 'Tania' , 'Agarwal' , 2,2, '2022-03-1');

 --6: Insert Salary for new Employee (208)
INSERT INTO Salaries (EmpID ,BasicSalary, Allowance,Deductions )
 VALUES(208, 48000,3000,1500);

 -- 7. Update an Employee's Designation
UPDATE Employees
 SET DesigID = 4
WHERE EmpID = 206;

 -- 7. Delete an Employee

DELETE FROM Salaries
WHERE EmpID = 206

DELETE from Employees
WHERE EmpID = 206;

-- 8. Add a new column to Salaries table
ALTER TABLE Salaries
ADD Bonus DECIMAL(10,2)

-- 9. Update Bonus for an employee
UPDATE Salaries
SET  Bonus = 2500
WHERE EmpID =205;

-- 10. Drop the Bonus column 
ALTER TABLE salaries
DROP COLUMN Bonus;


