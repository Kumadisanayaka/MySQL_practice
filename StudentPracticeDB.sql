create database StudentPracticeDB;

use StudentPracticeDB;

create table students(
	id INT,
	name VARCHAR(50),
	course VARCHAR(50),
	age INT,
	city VARCHAR(50)
);

insert into students values
(1,'kamal','IT',21,'Colombo'),
(2,'Nimal','Software',24,'Kandy'),
(3,'Saman','IT',20,'Galle'),
(4,'Amali','Business',23,'Colombo'),
(5,'Kasun','IT',25,'Matara'),
(6,'Dilshi','Software',22,'Kandy');

desc students;

--Q1--

select * from students;

--Q2--

select name, city from students;

--Q3--

select * from students where course='IT';

--Q4--

select * from students where city='colombo';

--Q5--

select * from students where age > 22;

--Q6--

select * from students where age = 21 or  age = 22;

--Q7--

select * from students order by age asc;

--Q8--

select * from students order by age desc;

--Q9--

select name, age from students where course='IT' order by age desc;

-------------------------------------------------------------------------

--Q1--

select * from students where age > 23;

--Q2--

select * from students where age >= 23;

--Q3--

select name, age from students where age <> 23;

--Q4--

select * from students where course = 'Software' and city = 'Kandy';

--Q5--

select name, course, age from students where age > 21 and course = 'IT';

--Q6--

select * from students where age = 25 or age = 20;

--Q7--

select * from students order by age desc limit 3;

--Q8--

select name, age from students where city = 'Colombo' order by age asc;

--Q9--

select name, city from students where course = 'IT' order by age desc;

--Q10--

select name, age, city from students where course = 'IT' and age > 20 order by age desc;



