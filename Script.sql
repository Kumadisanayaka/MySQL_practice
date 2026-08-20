use attendencedb;

show tables;

create table attendence(
	student_id INT,
	name VARCHAR(20),
	status ENUM('Present','Absent')
);

insert into attendence values
(101,'john','Present'),
(102,'kane','Absent'),
(103,'dev','Present'),
(104,'devid','Present'),
(105,'shane','Absent');

update attendence set status = 'Present' where student_id = 105;

select * from attendence;

delete from attendence where student_id = 105;

select * from attendence;

