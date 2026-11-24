CREATE DATABASE day9_practice;
USE day9_practice;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT
);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Sales'),
(104, 'Finance');

INSERT INTO employees VALUES
(1, 'Arun', 45000, 101, NULL),
(2, 'Priya', 50000, 102, 1),
(3, 'Karthik', 35000, 101, 1),
(4, 'Divya', 60000, 103, 2),
(5, 'Rahul', 40000, NULL, 2),
(6, 'Meena', 55000, 104, 1),
(7, 'Vijay', 30000, 102, 2);

SELECT * FROM employees;
SELECT * FROM departments;
"INNER JOIN"

select employees.employee_name,departments.department_name
from employees
inner join departments
on employees.department_id=departments.department_id
where department_name LIKE "IT";

select e.employee_name as employee,e.salary,d.department_name as department
from employees e
inner join departments d
on e.department_id=d.department_id
where salary > "40000";

select e.employee_name as Employees,d.department_name as Departments
from employees e
inner join departments d
on e.department_id = d.department_id
order by employee_name;

select employees.employee_id,employees.employee_name
from employees 
left join departments 
on employees.department_id=departments.department_id
where department_name IS NULL;

select  employees.employee_name as employees , departments.department_name as departments 
from employees
left join departments
on departments.department_id=employees.department_id;

select e.employee_name,d.department_name
from employees e
left join departments d
on e.department_id=d.department_id
where d.department_name IS NULL;

select d.department_name,e.employee_name
from employees e 
right join departments d 
on d.department_id=e.department_id;

select d.department_name,e.employee_name
from employees e 
right join departments d 
on d.department_id=e.department_id
where employee_name IS NULL;

select e.employee_name as employee,m.employee_name as manager
from employees e
left join  employees m
on e.manager_id=m.employee_id
where m.employee_name = "Arun";

select e.employee_name as employee,m.employee_name as manager
from employees e
left join  employees m
on e.manager_id=m.employee_id
where e.manager_id IS NULL;

