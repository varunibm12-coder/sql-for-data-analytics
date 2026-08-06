SELECT emp_name,
UPPER(emp_name) AS upper_name
FROM employees;
SELECT emp_name,
LOWER(emp_name) AS lower_name
FROM employees;
SELECT emp_name,
LENGTH(emp_name) as length_name
FROM employees;
SELECT CONCAT(emp_name,' works in ',department) AS emp_details
FROM employees;
SELECT emp_name,
SUBSTRING(emp_name,1,4) AS first_four_letters
FROM employees;
SELECT emp_name,
LEFT(emp_name,4) as left_text
FROM employees;
SELECT emp_name,
RIGHT(emp_name,3) AS right_text
FROM employees;
SELECT TRIM('     Data    Analyst   ') as trimmed_text;
SELECT LTRIM('     SQL Learning');
SELECT RTRIM('    Tournament');
SELECT emp_name,
REPLACE(department,'IT','INFORMATION TECHNOLOGY') as department_name
FROM employees;
SELECT emp_name,
REPLACE(department,'HR','HUMAN RESOURCES')
FROM employees;