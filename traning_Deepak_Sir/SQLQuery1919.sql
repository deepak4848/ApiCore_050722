create database CRM1919
use CRM1919
create table employee
(
id int primary key identity,
name varchar(50),
salary varchar(50),
gender varchar(50),
country varchar(50),
department varchar(50),
)
select * from employee