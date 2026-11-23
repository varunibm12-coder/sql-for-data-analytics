CREATE DATABASE day8_practice;
USE day8_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Arun', 'IT', 35500.75),
(2, 'Priya', 'HR', 42000.45),
(3, 'Karthik', 'IT', 28750.80),
(4, 'Divya', 'Sales', 50000.90),
(5, 'Rahul', 'HR', 31500.25),
(6, 'Meena', 'Sales', 38999.99),
(7, 'Vijay', 'IT', 45678.65);

DAY 8 - NUMERIC FUNCTIONS


select employee_name, round(salary,1)
from employees;

select ceil(98.77);

select floor(98.77);
select abs(-76);
select mod(9,4);
select power(9,2);
select sqrt( 9);
select truncate(567.88678,3);
select sign(-467);
select rand();

SELECT employee_name, salary,
round(salary*0.15,2) as bonus_salary
from employees;

select employee_name,salary,
round(salary*1.20,2) as new_salary
from employees;