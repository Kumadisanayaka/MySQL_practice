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

--Q6--

select 
	d.department_name,
	COUNT(e.employee_id) as employee_count,
	SUM(e.salary) as total_salary,
	AVG(e.salary) as average_salary
from departments as d
inner join employees as e
on d.department_id = e.department_id
where e.salary > 60000
group by d.department_id, d.department_name
having count(e.employee_id) > 1
order by total_salary  desc;

--Q7--

select 
	d.department_name,
	COUNT(e.employee_id) as employee_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
group by d.department_name;

--Q8--

select 
	d.department_name,
	SUM(e.salary) as total_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
group by d.department_name;

--Q9--

select 
	d.department_name,
	AVG(e.salary) as average_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
group by d.department_name;

--Q10--

select 
	d.department_name,
	MAX(e.salary) as max_salary,
	MIN(e.salary) as min_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
group by d.department_name;

use company_db_practice;

--Q11--

select 
	d.department_name,
	SUM(e.salary) as total_salary
from departments as d
inner join employees as e
on d.department_id = e.department_id
group by d.department_name
order by total_salary desc;

--Q12--

select 
	d.department_name,
	AVG(e.salary) as average_salary
from departments as d
inner join employees as e
on d.department_id = e.department_id
group by d.department_name
order by average_salary desc;

--Q13--

select 
	d.department_name,
	COUNT(*) as employee_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 60000
group by d.department_name
having COUNT(e.employee_id)>1;

--Q14--

select 
	d.department_name,
	COUNT(*) as employee_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 60000
group by d.department_name
having COUNT(e.employee_id)>1;

--Q15--

select 
	d.department_name,
	COUNT(*) as employee_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 60000
group by d.department_name
having COUNT(e.employee_id)>1
order by employee_count desc;

--Q16--

select 
	d.department_name,
	SUM(e.salary) as total_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 50000
group by d.department_name
having total_salary > 60000
order by total_salary desc;

--Q17--

select 
	d.department_name,
	AVG(e.salary) as average_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 50000
group by d.department_name
having average_salary > 60000
order by average_salary  desc;

--Q18--

select 
	d.department_name,
	COUNT(*) as employee_count,
	SUM(e.salary) as total_salary,
	AVG(e.salary) as average_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 50000
group by d.department_name
having total_salary > 60000
order by average_salary desc;

--Q19--

select
	d.department_name,
	COUNT(*) as employee_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
where e.salary > 50000
group by d.department_name
having COUNT(*) > 1
order by employee_count desc;

--Q20--

select 
	d.department_name,
	AVG(e.salary) as average_salary
from employees as e
inner join departments as d
on e.department_id = d.department_id
group by d.department_name
having average_salary > 60000
order by average_salary desc;






	
	


