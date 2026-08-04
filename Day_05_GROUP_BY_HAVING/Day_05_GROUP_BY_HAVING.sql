use company_db;
SELECT department,
COUNT(*)
FROM employees
GROUP BY department;
SELECT department,
SUM(salary)
FROM employees
GROUP BY department;
SELECT department,
AVG(salary)
FROM employees
GROUP BY department;
SELECT department,
MIN(Salary)
FROM employees
GROUP BY department;
SELECT department,
MAX(Salary)
FROM employees
GROUP BY department;
INSERT INTO Employees
(employee_name, department, city, salary)
VALUES
('Rahul', 'IT', 'Chennai', 55000),
('Sneha', 'HR', 'Bangalore', 42000),
('Arjun', 'Sales', 'Hyderabad', 39000),
('Divya', 'Finance', 'Chennai', 61000),
('Karthik', 'IT', 'Bangalore', 70000),
('Priya', 'Marketing', 'Delhi', 47000),
('Anjali', 'HR', 'Chennai', 45000),
('Vignesh', 'Sales', 'Mumbai', 52000),
('Nisha', 'Finance', 'Hyderabad', 65000),
('Rohit', 'IT', 'Pune', 58000);
DESCRIBE Employees;
INSERT INTO Employees
(emp_id, emp_name, department, salary)
VALUES
(3, 'Rahul', 'IT', 55000),
(4, 'Sneha', 'HR', 42000),
(5, 'Arjun', 'Sales', 39000),
(6, 'Divya', 'Finance', 61000),
(7, 'Karthik', 'IT', 70000),
(8, 'Priya', 'Marketing', 47000),
(9, 'Anjali', 'HR', 45000),
(10, 'Vignesh', 'Sales', 52000),
(11, 'Nisha', 'Finance', 65000),
(12, 'Rohit', 'IT', 58000),
(13, 'Meera', 'Marketing', 48000),
(14, 'Aakash', 'Finance', 72000),
(15, 'Harish', 'Sales', 41000),
(16, 'Deepa', 'HR', 44000),
(17, 'Sanjay', 'IT', 67000),
(18, 'Lavanya', 'Marketing', 51000),
(19, 'Manoj', 'Finance', 69000),
(20, 'Keerthi', 'Sales', 43000);
SELECT *
FROM Employees;
SELECT department,
COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) >5;
SELECT department,
AVG(salary)
FROM Employees
WHERE salary > 30000
GROUP BY department
HAVING AVG(salary) > 50000;
SELECT department,
salary,
COUNT(*)
FROM employees
GROUP BY department,salary;