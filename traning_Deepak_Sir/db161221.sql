create database db161221
use db161221
create table tblemployee
(
empid int primary key identity,
name varchar(50),
city varchar(50),
address varchar(100),
salary int,
age int
)

select * from tblemployee