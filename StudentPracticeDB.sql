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

select city, COUNT(*) as student_age_21 from students where age >= 21 group by city having COUNT(*) >= 2 order by student_age_21 desc;

---------------------------------------------------------------------------------------------------------------------------------------

--Q1--

select distinct city from students;

--Q2--

select distinct course from students;

--Q3--

SELECT DISTINCT city, course FROM students;

--Q4--

select distinct city from students order by city asc;

--Q5--

select distinct course from students order by course desc;



--Q6--

select distinct city from students where age >= 21;

--Q7--

select distinct course from students where age < 21;

--Q8--

select distinct city from students where age >= 20 order by city asc;

--Q9--

select distinct course from students where city <> 'Colombo';

--Q10--

select distinct city, course from students where age >= 21 order by city asc;

------------------------------------------------------------------------------------------

--Q1--

select * from students where city is null;

--Q2--

select * from students where city is not null;

--Q3--

select * from students where course is null;

--Q4--

select * from students where course is not null;

--Q5--

select * from students where distinct city is not null;

--Q6--

select name, city, COALESCE(city,'No city') as city from students;

--Q7--

select name, course, COALESCE(course, 'No course') as course from students where course is null;

--Q8--

select name, city, course, COALESCE(city, 'unknown') as city from students where city is null or COALESCE(course, 'Not assigned')
as course from students where course is null;

--Q9--

select distinct city from students where city is null;

--Q10--

select distinct city from students where age >= 21 and city is null; 

--Q11--

select name, COALESCE(city, 'Unknown city') as city from students;

--Q12--

select * , COALESCE(course, 'Not Assigned') as course from students;

--Q13--

select name, city, course, COALESCE(city, 'Unknown city') as city, COALESCE(course, 'Not Assigned') as course from students;

--Q14--

select *, COALESCE(city, 'Unknown') as city from students where age >= 21;

--Q15--

select * from students where city is not null order by city asc;

------------------------------------------------------------------------------------------------

use StudentPracticeDB;

--Q1--

insert into students (id,name,course,age,city)
values 
(7,'Kumara','JAVA',24,'Colombo');

select * from students;

--Q2--

insert into students (id,name,course,age,city)
values
(8,'Nimal','SQL',21,'Kandy'),
(9,'Saman','Java',23,'Galle');

--Q3--

insert into students(id,name)
values
(10,'Amal');

select * from students;

--Q4--

insert into students(id,name,age)
values
(11,'Ruwan',22);

select * from students;

--Q5--

insert into students(id,name,course,age,city)
values
(12,'Kasun','Java',20,'Matara'),
(13,'Chathura','SQL',22,'Colombo'),
(14,'Dasun','Python',21,'Kandy');

select * from students;


-----------------------------------------------------------------------------------

--Q1--

update students 
	set age = 25
	where id = 12;

--Q2--

update students
	set age = 24,
		city = 'Galle'
	where id = 13;

--Q3--

update students
	set course = 'Java'
	where id = 14;


--Q4--

update students 
	set age = 23,
		city = 'Kandy',
		course = 'Java'
	where id = 11;


--Q5--

update students 
	set course = 'Java'
	where city = 'Colombo';


------------------------------------------------------------------------------------

--Q1--

delete from students where id = 11;

select * from students;

--Q2--

delete from students where id = 14;

--Q3--

delete from students where city = 'Kandy';

select * from students;

--Q4--

delete from students where age < 21;

--Q5--

delete from students where course = 'SQL' and age > 20;



------------------------------------------------------------------------------------------

--Q1--

select * from students where city = 'Colombo';

--Q2--

update students 
	set course = 'Java'
	where city = 'Colombo';

select * from students;

--Q3--

select * from students where age < 21;

delete from students where age < 21;


--Q4--

select * from students where age >= 22 and course = 'Java';

update students 
	set age = 25
	where age >= 22 and course = 'Java';

--Q5--

select * from students where age > 20 and city = 'Kandy';

delete from students where age > 20 and city = 'Kandy';

-------------------------------------------------------------------------------------------------------

--Q1--

start transaction;

update students 
	set age = 30
	where id = 12;

commit;

--Q2--

start transaction;

update students
	set age = 50
	where id = 13;

rollback;

--Q3--

start transaction;

insert into students (id,name,course,age,city)
values 
(15,'Sunil','Java',22,'Galle');

rollback;

--Q4--

start transaction;

insert into students (id,name,course,age,city)
values 
(15,'Sunil','Java',22,'Galle');

select * from students;

commit;


--Q5--

start transaction;

insert into students(id,name,course,age,city)
values 
(16,'Kamal','SQL',26,'Colombo');

select * from students;

rollback;

----------------------------------------------------------------------------

DROP TABLE students; 

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    age INT,
    city VARCHAR(50)
); 

desc students; 

INSERT INTO students (id, name, course, age, city)
VALUES
(1, 'Kamal', 'Java', 22, 'Colombo'),
(2, 'Nimal', 'SQL', 21, 'Kandy');

select * from students;

INSERT INTO students (id, name, course, age, city)
VALUES (1, 'Saman', 'JavaScript', 23, 'Galle'); 

INSERT INTO students (id, name, course, age, city)
VALUES (NULL, 'Saman', 'JavaScript', 23, 'Galle'); 

INSERT INTO students (id, name, course, age, city)
VALUES (3, 'Saman', 'JavaScript', 23, 'Galle'); 

select * from students; 

--------------------------------------------------------------------------------------------------

use studentPracticeDB;

drop table students;

CREATE TABLE courses (
    id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

create table students(
	id INT primary key,
	name varchar(50),
	course_id int,
	age int,
	city varchar(50),
	foreign key (course_id) references courses(id)
);

show tables;

desc courses;

desc students;

INSERT INTO courses (id, course_name)
VALUES
(1, 'Java'),
(2, 'SQL'),
(3, 'JavaScript'),
(4, 'Python');

INSERT INTO students (id, name, course_id, age, city)
VALUES
(1, 'Kamal', 1, 22, 'Colombo'),
(2, 'Nimal', 2, 21, 'Kandy'),
(3, 'Saman', 1, 23, 'Galle'),
(4, 'Amal', 3, 24, 'Colombo'),
(5, 'Ruwan', 4, 20, 'Matara');

select * from courses;

select * from students;


INSERT INTO courses (id, course_name)
VALUES (10, 'C++');

INSERT INTO students (id, name, course_id, age, city)
VALUES (6, 'Sunil', 10, 25, 'Kandy');

delete from courses where id = 2;

CREATE TABLE students_unique (
    id INT PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
    course VARCHAR(50),
    age INT
);

INSERT INTO students_unique (id, name, course, age)
VALUES
(1, 'Kamal', 'Java', 22),
(2, 'Nimal', 'SQL', 21);

INSERT INTO students_unique (id, name, course, age)
VALUES (3, 'Kamal', 'Python', 23);

INSERT INTO students_unique (id, name, course, age)
VALUES (4, NULL, 'SQL', 20);

alter table students_unique add email varchar(50) unique;

desc students_unique;

CREATE TABLE students_notnull (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    course VARCHAR(50),
    age INT
);

desc students_notnull;

INSERT INTO students_notnull (id, name, course, age)
VALUES (1, 'Kamal', 'Java', 22);

select * from students_notnull;

INSERT INTO students_notnull (id, name, course, age)
VALUES (2, NULL, 'SQL', 21);

INSERT INTO students_notnull (id, name, course, age)
VALUES (3, 'Saman', NULL, 23);

INSERT INTO students_notnull (id, course, age)
VALUES (4, 'Python', 24);

alter table students_notnull modify age int not null;

desc students_notnull;

use studentPracticeDB;

CREATE TABLE students_auto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);

INSERT INTO students_auto (name, age)
VALUES ('Kamal', 22);

select * from students_auto;

INSERT INTO students_auto (name, age)
VALUES ('Nimal', 21);

INSERT INTO students_auto (id, name, age)
VALUES (10, 'Sunil', 25);

INSERT INTO students_auto (name, age)
VALUES ('Kumara', 26);

show tables;

select * from courses;

select * from students;

-----------------------------------------------------------------------------

select name, age, if(age >= 18, 'Adult','Minor') as status from students;

select 
	name,
	age,
	case
		when age < 18 then 'Minor'
		when age < 30 then 'Young Adult'
		else 'Adult'
	end as age_group from students;


select 
	name,
	age,
	case
		when age > 40 then 'Senior'
		when age >= 26 then 'Adult'
		when age >= 18 then 'Young'
		else 'Minor'
	end as age_group from students;



	
	
	












 
 













