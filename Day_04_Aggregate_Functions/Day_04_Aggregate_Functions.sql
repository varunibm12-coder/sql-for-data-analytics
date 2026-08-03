

-- Create Database
CREATE DATABASE IF NOT EXISTS company_db;

-- Select Database
USE company_db;

-- Show Current Database
SELECT DATABASE();

-- Drop Table (so script can be rerun)
DROP TABLE IF EXISTS employees;

-- Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert Data
INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1,'John','HR',45000),
(2,'Alice','IT',65000);

-- Display All Data
SELECT *
FROM employees;

-- Select Specific Columns
SELECT emp_name, salary
FROM employees;

-- DISTINCT
SELECT DISTINCT department
FROM employees;

-- ORDER BY
SELECT *
FROM employees
ORDER BY salary DESC;

-- LIMIT
SELECT *
FROM employees
LIMIT 2;

-- Describe Table
DESCRIBE employees;

-- Show Tables
SHOW TABLES;

SELECT DATABASE();
SELECT COUNT(*) AS TotalEmployees
FROM employees;
SELECT COUNT(salary)
FROM employees;
SELECT SUM(salary) as TotalSalary
FROM employees;
SELECT AVG(salary) as AverageSalary
FROM employees;
SELECT MIN(salary) as LowestSalary
FROM employees;
SELECT MAX(salary) as HighestSalary
FROM employees;
SELECT AVG(salary)
FROM employees
WHERE department ='HR';
SELECT COUNT(DISTINCT department)
FROM employees;
SELECT SUM(salary)
FROM Employees
WHERE department='IT';
SELECT COUNT(*)
FROM Employees;
