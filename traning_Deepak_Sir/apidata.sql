create database db120122
use db120122
create table tblemployee
(
id int primary key identity,
name varchar(50),
age int,
salary int,
city varchar(50)
)

--------------------------------------------------------------------------------------
create proc sp_emp_get
as
begin
select * from tblemployee
end


create proc sp_emp_insert
@name varchar(50),
@age int,
@salary varchar(50),
@city int
as
begin
insert into tblemployee(name,age,salary,city)
values(@name,@age,@salary,@city)
end

create proc sp_emp_delete
@id int
as
begin
delete from tblemployee where id=@id
end

create proc sp_emp_edit
@id int
as
begin
select * from tblemployee where id=@id
end

create proc sp_emp_update
@id int,
@name varchar(50),
@age int,
@salary varchar(50),
@city int
as
begin
update tblemployee set name=@name,age=@age,salary=@salary,city=@city where id=@id
end
select * from tblemployee


