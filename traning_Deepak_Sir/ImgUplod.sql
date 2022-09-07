create database EIU17
use EIU17

create table employee
(
id int primary key identity,
name varchar(50),
gender int,
img varchar(100)
)

select * from employee

alter proc sp_employee
@action varchar(50)=NULL,
@id int=0,
@name varchar(50)=NULL,
@gender varchar(50)=NULL,
@img varchar(50)=NULL
as
begin
if(@action='INSERT')
begin
insert into employee(name,gender,img)values(@name,@gender,@img)
end
else if(@action='DISPLAY')
begin
SELECT * from employee
end
else if(@action='UPDATE')
begin
update employee set name=@name,gender=@gender,img=@img where id =@id
end
else if(@action='EDIT')
begin
delete from employee where id=@id
end
else if(@action='DELETE')
begin
SELECT * from employee where id=@id
end
end
select * from employee
