create database db2710
use db2710
create table emp
(
empid int primary key identity,
name varchar(50),
address varchar(50),
age int,
) 

create proc use_emp_insert
@name varchar(50),
@address varchar(50),
@age int
as
begin
insert into emp(name,address,age)
values(@name,@address,@age)
end

create proc use_emp_get
as
begin
select * from emp
end

create proc use_emp_delete
@empid int
as
begin
delete from emp where empid=@empid
end

create proc use_emp_edit
@empid int
as
begin
select * from emp where empid=@empid
end

create proc use_emp_update
@empid int,
@name varchar(50),
@address varchar(50),
@age int
as
begin
update emp set name=@name,address=@address,age=@age where empid=@empid
end
select * from emp
-----------------------------------------------------------------------------------
delete from emp where empid=19
