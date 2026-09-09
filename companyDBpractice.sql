create database company_db_practice;

use company_db_practice;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    employee_id INT,
    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

INSERT INTO departments (department_name)
VALUES
('IT'),
('HR'),
('Finance'),
('Marketing');

INSERT INTO employees (employee_name, salary, department_id)
VALUES
('Kamal', 85000, 1),
('Nimal', 65000, 1),
('Saman', 55000, 2),
('Amal', 75000, 3),
('Ruwan', 60000, 4);

INSERT INTO projects (project_name, employee_id)
VALUES
('Bus Booking System', 1),
('Employee Management System', 2),
('Payroll System', 4),
('Marketing Website', 5);

show tables;

desc departments;

desc employees;

desc projects;

select * from departments;

select * from employees;

select * from projects;

select 
	e.employee_name,
	d.department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id;

--Q1--

select 
	e.employee_name,
	e.salary,
	d.department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id;

--Q2--

select 
	e.employee_name,
	p.project_name
from employees as e
inner join projects as p
on e.employee_id = p.employee_id;

--Q3--

select 
	e.employee_name,
	e.salary,
	d.department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id
where d.department_name = 'IT';

--Q4--

select 
	e.employee_name,
	e.salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 70000 and d.department_name = 'IT';
	
	


