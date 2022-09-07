create database DBL2310
use DBL2310
create table employee
(
id int primary key identity,
name varchar(50),
age int,
salary int,
gender varchar(50)
)
select * from employee
create proc sp_salary_get_by_id
@id int
as
begin
select salary from employee where id=@id
end
exec sp_salary_get_by_id 3,'brijesh'
---------------------proc return only integer-------------------------
create proc spp_salary_get_by_id
@id int
as
begin
declare @p int
select @p=salary from employee where id=@id
end

declare @k int
exec @k=spp_salary_get_by_id 6
print @k
---------------proc return only integer so Use Output Keybord----------------------------------
create proc sppp_name_get_by_id
@id int,
@mm varchar(50) output
as
begin
select @mm=name from employee where id=@id
end

declare @k varchar(50)
exec sppp_name_get_by_id 6,@k output
print @k
-----------------------find one or more value name gender by output keybord-----------------------------
create proc sng_name_get_by_id
@id int,
@mm varchar(50) output,
@nn varchar(50) out
as
begin
select @mm=name,@nn=gender from employee where id=@id
end

declare @k varchar(50),@p varchar(50)
exec sng_name_get_by_id 3,@k output,@p output
print @k
print @p
---------------------------------23Oct2021------------------------------------------------------------
select * from employee order by name
select * from employee order by salary
select * from employee order by salary asc
select * from employee order by salary desc
--------------------------uper se do---------------top two---------------------------
select * from employee 
select top(2)* from employee
select top(2)* from employee order by id desc
select top(2)* from employee order by id asc
----------------------only salary------------------------------------------------
select * from employee 
select salary from employee
select max(salary) from employee
-----------------------------abc is table name-------------------
select max(salary) as abc from employee
select max(salary) abc from employee
---------------------------------------------------------------------------------
select min(salary)from employee
select min(salary) student_salary from employee
-------------------------------find Average-------------------------------
select avg(salary)from employee
select sum(salary)from employee
-----------------------no null are counted---------------------------------
select count(salary) from employee
select max(name) from employee
---------------------------------------------------------------------------
select min(salary) third_higest_salary from
(select distinct top(3)salary from employee order by salary desc)A

select min(salary) third_higest_salary from
(select distinct top(3)salary from employee order by salary desc) A

select min(salary) [third higest salary] from
(select distinct top(3)salary from employee order by salary desc)A
------------------------------------top one----------------------------
select Top(1) salary from
(select top(3)salary from employee order by salary desc)as A order by salary asc

select Top(1) salary from
(select distinct top(3)salary from employee order by salary desc)as A order by salary asc
-----------------------------interchange table name------------------------------------------------
select * from employee 
update employee set age=salary,salary=age
------------------chnge male to female N female to male--------
update employee set gender=
case
when gender='male'then 'female'
when gender='female'then 'male'
end
----------------------but no change other use else-----------------------
update employee set gender=
case
when gender='male'then 'female'
when gender='female'then 'male'
else gender
end
select * from employee 
-------------------------------------------------------------------
update employee set gender=
case
when gender='male'then 'female'
when gender='female'then 'male'
else gender
end
select * from employee 
update employee set gender='other' where id in(4,5,6,9)
--------------------transfer data onr to another table-------------------
create table teacher
(
id int primary key identity,
name varchar(50),
age int,
salary int,
gender varchar(50),
)
select * from teacher
delete from teacher
-------------------copy into teacher to employee upto five table data--------------
insert into teacher(name,age,salary,gender)select name,age,salary,gender from employee where id<=5
-------------------copy into teacher to employee all table data--------------
insert into teacher(name,age,salary,gender)select name,age,salary,gender from employee
select * from teacher
insert into teacher(name,age,salary,gender)select name,age,salary,gender from employee where id<=0
select * from employee 
----------------------data backup in new table name -----------------------------------
select * into users from teacher
select * from users
---------------------same name balnk table(copy) genrate----------------------------
select * into pp from teacher where 1=2
select * from pp
-----------------------empty table data show---------------------
select * from employee where 1=2
select * from employee

select * from teacher
select * from teacher where 1=2




--------------------SQL Importent Query 30 oct ----------------------------------------



use db2527_221021
create table tblemployee
(
id int primary key identity,
name varchar(50),
salary int,
gender varchar(50),
date_of_birth varchar(50)
)

select * from tblemployee
insert into tblemployee(name,salary,gender,date_of_birth)values('lavi',13000,'male',1999)

-------------------------------------------------------
select gender,salary from tblEmployee
select gender,sum(salary) from tblEmployee group by gender
select gender,count(*) from tblEmployee group by gender
select gender,sum(salary)as sum_salary from tblEmployee group by gender
select gender,sum(salary) sum_salary from tblEmployee group by gender
select gender,sum(salary) [sum salary] from tblEmployee group by gender
select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender
select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender having sum(salary) > 6000
------------------------------------------------------------------------------
alter table tblemployee add conntry int
sp_rename 'tblemployee.conntry','country'
create table tblcountry
(
cid int primary key identity,
cname varchar(50)
) insert into tblcountry(cname)values('India'),('Pakistan'),('USA')
insert into tblcountry(name)values('Japan')
select * from tblemployee
select * from tblcountry
sp_rename 'tblcountry.cname','name'
select * from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee inner join tblcountry on tblemployee.country=tblcountry.cid
select id,name,salary,gender,date_of_birth,cname from tblemployee join tblcountry on
tblemployee.country=tblcountry.cid
select id,tblemployee.name,salary,gender,date_of_birth,tblcountry.name from tblemployee join tblcountry on
tblemployee.country=tblcountry.cid
select id,tblemployee.name as ename,salary,gender,date_of_birth,tblcountry.name as cname from tblemployee join
tblcountry on tblemployee.country=tblcountry.cid
select tblemployee.id,tblemployee.name,tblemployee.salary,tblemployee.gender,
tblemployee.date_of_birth,tblcountry.name
from tblemployee join tblcountry
on tblemployee.country=tblcountry.cid
select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname
from tblemployee as E join tblcountry as C
on E.country=C.cid
--JOIN
--1)INNER JOIN
--2)OUTER JOIN ---- A)LEFT JOIN B)RIGHT JOIN C)FULL JOIN
--3)CROSS JOIN
update tblemployee set country=55 where id=2
select * from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee left join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee left outer join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee right join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee right outer join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee full outer join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee cross join tblcountry
select * from tblemployee left join tblcountry on tblemployee.country=tblcountry.cid
where tblcountry.name is null
select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname
from db2527_221021.dbo.tblemployee as E join dddd.dbo.tblcountryy as C
on E.country=C.cid
--SELF JOIN
create table Student
(
sid int primary key identity,
sname varchar(50),
srname int
) insert into Student(sname,srname)values('soni',9)
select * from Student
select * from tblemployee
select A.sname as Student,B.sname as SrName
from Student as A join Student as B
on A.srname=B.sid
select A.sname,B.sname
from Student as A full join Student as B
on A.srname=B.sid
--------------------------------------------------------------------------------------
select * from tblemployee
select name,gender from tblemployee
select name+gender from tblemployee
select (name+gender)as details from tblemployee
select (name+ ' ' +gender)as details from tblemployee
select (name + space(5) + gender)as details from tblemployee
select (name + space(5) + gender + space(5) + salary)as details from tblemployee -- error
select (name + space(5) + gender + space(5) + convert(varchar(50),salary))as details from tblemployee
select (name + space(5) + gender + space(5) + cast(salary as varchar(50)))as details from tblemployee
select id,name,gender,salary,convert(varchar(50),date_of_birth,106) as dob,country from tblemployee
select id,name,gender,salary,convert(varchar(50),date_of_birth,103) as dob,country from tblemployee
select id,name,gender,salary,cast(date_of_birth as varchar(50)) as dob,country from tblemployee