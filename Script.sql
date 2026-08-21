-- drop database electric_shopdb;
-- 
-- create database electric_shopDB;
-- 
-- use electric_shopDB;
-- 
-- create table customers(
-- 	customer_id INT,
-- 	name VARCHAR(20),
-- 	email VARCHAR(20)
-- );
-- 
-- insert into customers values
-- (1,'Alice Smith','alice@gmail.com'),
-- (2,'Bob Jones','bob@gmail.com');
-- 
-- show tables;
-- 
-- select * from customers;
-- 
-- create table products(
-- 	product_id INT,
-- 	product_name VARCHAR(25),
-- 	price DECIMAL(9,2),
-- 	stock_quantity INT
-- );
-- 
-- show tables;
-- 
-- insert into products values
-- (101,'Laptop',1200.00,10),
-- (102,'Wireless Mouse',25.00,50),
-- (103,'Keyboard',45.00,30);
-- 
-- select * from products;
-- 
-- create table orders(
-- 	order_id INT,
-- 	customer_id INT,
-- 	product_id INT,
-- 	quantity INT,
-- 	status VARCHAR(20)
-- );
-- 
-- show tables;
-- 
-- insert into orders values
-- (1001,1,101,1,'Shipped'),
-- (1002,2,102,2,'Processing');
-- 
-- select * from orders;
-- 
-- insert into customers values
-- (3,'Charile Brown','charile@email.com');
-- 
-- select * from customers;
-- 
-- insert into products values
-- (104,'Webcam',60.00,20);
-- 
-- select * from products;
-- 
-- insert into orders values
-- (1003,3,101,1,'Processing');
-- 
-- select * from orders;
-- 
-- update orders set status = 'Shipped' where order_id = 1003;
-- 
-- select * from orders;
-- 
-- delete from orders where order_id = 1002;
-- 
-- select * from orders;
-- 
-- insert into orders values
-- (1004,2,101,3,'Processing');
-- 
-- insert into orders values
-- (1005,1,102,2,'Processing'),
-- (1006,2,103,5,'Processing');
-- 
-- select * from orders;
-- 
-- update orders set status = 'Canceled' where order_id = 1005;
-- 
-- select * from orders;
-- 
-- update orders set status = 'Shipped' where order_id IN(1004,1006);
-- 
-- select * from orders;
-- 
-- update orders set status = 'Canceled' where order_id IN(1003,1006);
-- 
-- select * from orders;
-- 
-- delete from orders where status = 'Canceled';
-- 
-- select * from orders;

-- 
-- drop database scienceclubdb;
-- 
-- create database scienceclubDB;
-- 
-- use scienceclubDB;
-- 
-- create table scienceClub(
-- 	memberID INT primary key,
-- 	FullName VARCHAR(25) not null,
-- 	Email VARCHAR(20) unique,
-- 	Age INT check (age >= 16),
-- 	MembershipStatus VARCHAR(20) default 'pending'
-- );
-- 
-- insert into scienceClub(memberID,FullName,Email,Age,Membershipstatus)
-- values 
-- (1,'pathum','kuma18@gmail.com',25,'Done');
-- 
-- select * from scienceClub;
-- 
-- insert into scienceClub(memberID,fullname,email,age)
-- values 
-- (2,'John','john@gmail.com',26);
-- 
-- select * from scienceClub;
-- 
-- insert into scienceClub(memberID,FullName,Email,Age,Membershipstatus)
-- values 
-- (3,'Devid','dev@gmail.com',25,default);
-- 
-- select * from scienceClub;


drop database scienceclubDB;

drop database companyDB;

create database companyDB;

use companyDB;

create table Departments(
	DeptID INT primary key,
	DeptName VARCHAR(50) not null
);

create  table staff(
	staffID INT primary key,
	staffName VARCHAR(100) not null,
	DeptID INT,
	foreign key (DeptID) references Departments(DeptID)
);

desc staff;

drop database shopdb;
drop  database shop_db;

create database shopDB;

use shopdb;

create table customerInfo(
	custID INT,
	custName VARCHAR(25)
);

alter table customerInfo add primary key (custID);

desc customerInfo;












