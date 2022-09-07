create database db2527_221021
use db2527_221021
create table tblemployee
(
id int primary key identity,
name varchar(50),
salary int,
gender varchar(50),
date_of_birth datetime
)

select * from tblemployee
delete from tblemployee
insert into tblemployee(name,salary,gender,date_of_birth)values('Ravi',4000,'male',10/10/1994)
insert into tblemployee(name,salary,gender,date_of_birth)values('Amit',1000,'male',10/10/1991)
insert into tblemployee(name,salary,gender,date_of_birth)values('Aman',3000,'male',10/10/1990)
insert into tblemployee(name,salary,gender,date_of_birth)values('Anuj',5000,'male',10/10/1993)
insert into tblemployee(name,salary,gender,date_of_birth)values('Naman',1100,'male',10/10/1998)
insert into tblemployee(name,salary,gender,date_of_birth)values('Priya',3999,'female',10/10/1956)
insert into tblemployee(name,salary,gender,date_of_birth)values('Riya',5000,'female',10/10/1988)
insert into tblemployee(name,salary,gender,date_of_birth)values('Anupiya',6000,'female',10/10/1955)
insert into tblemployee(name,salary,gender,date_of_birth)values('Komal',9000,'female',10/10/1955)


---------------------show seprate by table name----------------------------------
select gender,salary from tblEmployee
---------------------show seprate by group name----------------------------------
select gender,sum(salary) from tblEmployee group by gender
---------------------Count name----------------------------------
select gender,count(*) from tblEmployee group by gender
---------------------Total Sum By Group-------------------------------
select gender,sum(salary)as sum_salary from tblEmployee group by gender
select * from tblemployee
---------------------withought as apply SUM----------------------------------
select gender,sum(salary) sum_salary from tblEmployee group by gender
select gender,sum(salary) [sum salary] from tblEmployee group by gender
select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender
select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender having sum(salary) > 6000
-------------------------------add table country-----------------------------------------------
alter table tblemployee add conntry int
select * from tblemployee

sp_rename 'tblemployee.conntry','country'
create table tblcountry
(
cid int primary key identity,
cname varchar(50)
) 

select * from tblcountry

insert into tblcountry(cname)values('India'),('Pakistan'),('USA')
insert into tblcountry(name)values('Japan')
select * from tblemployee
select * from tblcountry
sp_rename 'tblcountry.cname','name'
select * from cname
select * from tblemployee
------------------------joint procedure------------------------------
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
)

insert into Student(sname,srname)values('moni',8)
insert into Student(sname,srname)values('kavita',9)
insert into Student(sname,srname)values('sita',7)
insert into Student(sname,srname)values('soni',7)

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