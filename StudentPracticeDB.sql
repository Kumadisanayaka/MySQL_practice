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

----------------------------------------------------------------------------------------

--Q1--

select * from students where age between 21 and 24;

--Q2--

select name, age from students where age between 22 and 25;

--Q3--

select * from students where city in ('Colombo','Kandy');

--Q4--

select * from students where course in ('IT','Software');

--Q5--

select * from students where city not in ('Colombo','Kandy');

--Q6--

select * from students where name like 'K%';

--Q7--

select * from students where name like '%I';

--Q8--

select name, city from students where name like '%a%';

--Q9--

select name, course, age from students where age between 21 and 25 and course in('IT','Software');

--Q10--

select * from students where name like 'k%' or name like '%a%';

--------------------------------------------------------------------------------------

--Q1--

SELECT * FROM students WHERE age BETWEEN 20 AND 23;

--Q2--

SELECT name, city FROM students WHERE city IN('Matara','Colombo');

--Q3--

SELECT name, course, city FROM students WHERE course NOT IN ('IT');

--Q4--

SELECT * FROM students WHERE name LIKE 'D%';

--Q5--

SELECT name, course, age 
	FROM students WHERE age 
	BETWEEN 21 AND 25 AND 
	(name LIKE '%a%' OR course IN ('Software'));

-------------------------Arithmatic operators--------------------------

use studentpracticeDB;

--Q1--

select name, age, age + 5 as age_plus_5 from students;

--Q2--

select name, age * 2 as double_age from students;

--Q3--

select name, age, age - 2 as age_minus_2 from students where course = 'IT';

--Q4--

select name, age, age / 2 as half_age from students where city = 'Kandy';

--Q5--

select name, age, ( age + 3) * 2 as result from students where age > 21;


--------------------------Aggregate Fun-------------------------------

--Q1--

select COUNT(*) as total_students from students;

--Q2--

select SUM(age) as total_age from students;

--Q3--

select AVG(age) as average_age from students;

--Q4--

select 
	MIN(age) as minimum_age,
	MAX(age) as maximum_age 
	from students;

--Q5--

select 
	COUNT(*) as it_students,
	SUM(age) as total_age,
	AVG(age) as average_age
	from students where course = 'IT';
	

----------------------------------------------------------------------------

--Q1--

select course, COUNT(*) as total_students from students group by course;

--Q2--

select course, AVG(age) as average_age from students group by course;

--Q3--

select city, COUNT(*) as total_students from students group by city;

--Q4--

select course, MAX(age) as maximum_age from students group by course;

--Q5--

select course, COUNT(*) as student_21_plus from students where age >= 21 group by course;



----------------------------------------------------------------------------------------

--Q1--

select city, AVG(age) as average_age from students group by city;

--Q2--

select course, SUM(age) as total_age from students group by course;

--Q3--

select city, COUNT(*) as student_2 from students group by city having  COUNT(*) >= 2;

--Q4--

select course, AVG(age) as average_age from students group by course having AVG(age) >= 22;

--Q5--

select course, COUNT(*) as age_21 from students where age >= 21 group by course having COUNT(*) >= 2;


------------------------------------------------------------------------------------------

use studentpracticedb;

--Q1--

select course, COUNT(*) as maximum_Student_group from students group by course order by maximum_Student_group desc;

--Q2--

select city, COUNT(*) as minimum_Students_group from students group by city order by minimum_students_group asc;

--Q3--

select course, AVG(age) as avarage_age from students group by course order by avarage_age desc;

--Q4--

select course, COUNT(*) as student_2_or_greater from students group by course having COUNT(*) >= 2 order by student_2_or_greater desc;

--Q5--

select city, COUNT(*) as student_age_21 from students where age >= 21 group by city order by student_age_21 desc;

--Q6--

select course, SUM(age) as total_age from students group by course order by total_age desc;

--Q7--

select city, AVG(age) as average_age from students group by city order by average_age asc;

--Q8--

select city, COUNT(*) as student_count_3 from students group by city having COUNT(*) >= 3 order by student_count_3  desc;

--Q9--

select course, AVG(age) as highst_average_age from students where age > 20 group by course order by highst_average_age desc;

--Q10--





