use company_db;
SELECT * 
FROM employees;
SELECT *
FROM employees
WHERE department='HR';
SELECT *
FROM employees
WHERE salary > 50000;
SELECT *
FROM employees
WHERE salary <60000;
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;
SELECT *
FROM employees
WHERE department = 'HR'
OR department= 'IT';
SELECT *
FROM employees
WHERE NOT department = 'HR';
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;
SELECT *
FROM employees
WHERE department IN ('HR','IT');
SELECT *
FROM employees
WHERE emp_name LIKE 'A%';
SELECT *
FROM employees
WHERE emp_name LIKE '%n';
SELECT *
FROM employees
WHERE emp_name LIKE '%oh%';
SELECT *
FROM employees
WHERE emp_name LIKE '_o%';
SELECT *
FROM employees
ORDER BY salary ASC;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;
SELECT *
FROM employees
LIMIT 1;


