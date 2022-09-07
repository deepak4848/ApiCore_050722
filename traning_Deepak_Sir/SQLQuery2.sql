create database SGIT
use SGIT
create table students
(
id int primary key identity,
firstname varchar(30),
lastname varchar(30),
rollno int,
age int,
city varchar(50),
address varchar(50),
contactno bigint
)
select * from students


C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS_VSW\MSSQL\DATA