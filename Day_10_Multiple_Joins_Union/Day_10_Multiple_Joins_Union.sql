CREATE DATABASE day10_practice;
USE day10_practice;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    employee_id INT
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Sales'),
(104, 'Finance');

INSERT INTO employees VALUES
(1, 'Arun', 45000, 101),
(2, 'Priya', 50000, 102),
(3, 'Karthik', 35000, 101),
(4, 'Divya', 60000, 103),
(5, 'Rahul', 40000, NULL),
(6, 'Meena', 55000, 104),
(7, 'Vijay', 30000, 102);

INSERT INTO projects VALUES
(1, 'Website Development', 1),
(2, 'Payroll System', 2),
(3, 'Sales Dashboard', 4),
(4, 'Data Analytics', 3),
(5, 'Finance Report', 6);

INSERT INTO customers VALUES
(1, 'Ravi', 'Chennai'),
(2, 'Priya', 'Bangalore'),
(3, 'Kumar', 'Mumbai'),
(4, 'Anitha', 'Chennai');

INSERT INTO suppliers VALUES
(1, 'ABC Supplies', 'Chennai'),
(2, 'XYZ Traders', 'Delhi'),
(3, 'Global Products', 'Mumbai'),
(4, 'Prime Traders', 'Bangalore');

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM projects;
SELECT * FROM customers;
SELECT * FROM suppliers;

select e.employee_name,d.department_name,p.project_name
from employees e
inner join departments d
on e.department_id=d.department_id
inner join projects p
on e.employee_id=p.employee_id;

select e.employee_name,s.salary, p.project_name
from employees e
left join employees s
on e.employee_id=s.employee_id
inner join projects p
on e.employee_id=p.employee_id;

select e.employee_name,d.department_name,p.project_name
from employees e
inner join departments d
on e.department_id=d.department_id
inner join projects p
on e.employee_id=p.employee_id
where d.department_name= "IT";

select e.employee_name,s.salary, p.project_name
from employees e
left join employees s
on e.employee_id=s.employee_id
inner join projects p
on e.employee_id=p.employee_id
where s.salary > "40000";

select e.employee_name,d.department_name,p.project_name
from employees e
left join departments d
on e.department_id=d.department_id
left join projects p
on e.employee_id=p.employee_id;

select e.employee_name,d.department_name
from employees e
inner join departments d
on e.department_id=d.department_id
where d.department_name="IT"
UNION
select e.employee_name,d.department_name
from employees e
inner join departments d
on e.department_id=d.department_id
where d.department_name="HR";

select e.employee_name,d.department_name
from employees e
inner  join departments d
on e.department_id=d.department_id
where d.department_name="IT"
UNION ALL
select e.employee_name,d.department_name
from employees e
inner join departments d
on e.department_id=d.department_id
where d.department_name="Sales";

select e.employee_name,d.department_name
from employees e
inner join departments d
on e.department_id=d.department_id
where d.department_name="IT"
UNION 
select e.employee_name,d.department_name
from employees e
inner join departments d
on e.department_id=d.department_id
where d.department_name="Finance";

select customer_name as Name
from customers
UNION
select supplier_name as Name
from suppliers;

select customer_name as Name
from customers
UNION ALL
select supplier_name as Name
from suppliers;

select e.employee_name, d.department_name, p.project_name
from employees e
inner join departments d
on e.department_id=d.department_id
inner join projects p 
on e.employee_id=p.employee_id
where d.department_name= "IT"; 

select employee_name,department_name
from employees
left join departments
on employees.department_id=departments.department_id;

select city 
from customers
UNION
select city
from suppliers;

select e.employee_name,d.department_name,p.project_name,s.salary
from employees e
left join departments d
on e.department_id=d.department_id
left join projects p
on e.employee_id=p.employee_id
left join employees s 
on e.employee_id=s.employee_id
order by s.salary desc;

