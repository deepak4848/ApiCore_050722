create database class07091
use class07091
create table doctor
(
id int primary key identity,
name varchar(50),
age int,
salary int,
city varchar(50),
)
select * from doctor
insert into doctor(name,age,city,salary)values('ram',35,'ghaziabad',14000)
insert doctor(name,age,city,salary)values('roshan',35,'loni',18000)
insert into doctor values('rohit',35,14000,'nalanda')
insert into doctor values('aarav',35,14000,'nalanda')
insert into doctor values('kamal',35,14000,'nalanda')

update doctor set name='amit',age=44,city='mumbai',salary=19000 where id=3
update doctor set salary=40000 where id=1
delete from doctor
select * from doctor
delete doctor where id=5
-----------------------------------------------
select * from doctor
alter table doctor drop column nurse
alter table doctor drop column nurse,patient,location
alter table doctor add patient varchar(50)
alter table doctor add patient varchar(50),gender varchar(50),country varchar(50)


sp_rename 'doctor','hospital'
select * from hospital
-------------------------------------------
select * from hospital
sp_rename 'hospital.city','location'
sp_renamedb 'class07091','VIMS'
---------------------------------------------
alter table hospital alter column age varchar(50)
select * from hospital
alter table hospital add gender varchar(50),country varchar(50)
----------------------------------------------------------------------
select * from hospital
alter table hospital drop column patient,gender,country

insert into hospital values('sanjay',39,31000,'vijaynagar')
----------------------------------------------------------------------
select * from hospital 
select * from hospital where id=4 or id=5
select * from hospital where id=4
select * from hospital where id in (5,6,7)
select * from hospital where id in (8,9,10)
select * from hospital where id between 9 and 10
select * from hospital where id between 7 and 11
-----------------------------------------------------------------------
select * from hospital where id <9
select * from hospital where id <= 9

select * from hospital where id >9
select * from hospital where id >=9
------------------------------------------------------------------------
select * from hospital
select * from hospital where name='mohan'
insert into hospital values('gaurav',44,49000,'ram nagar')
insert into hospital values('brijesh',44,49000,'kunda nagar')
insert into hospital values('chandan',44,49000,'sanjay nagar')

---------------------------wild card operater posiutive op---------------------------------------------
select * from hospital where name like 'mohan%'
select * from hospital where name like 'ram%'
select * from hospital where name like '%ram%'
select * from hospital where name like 'ra%'
select * from hospital where name like 'r%'
select * from hospital where name like 'k%'
select * from hospital where name like 'a%' or name like 'm%'
select * from hospital where name like '[a,d]%'
select * from hospital where name like '[a-z]%'
select * from hospital where name like '[a-c]%'

--------------wild card operater negative op-------------------------------------
select * from hospital where name not like 'mohan%'
select * from hospital where name not  like 'ram%'
select * from hospital where name not like '%ram%'
select * from hospital where name not like 'ra%'
select * from hospital where name not like 'r%'
select * from hospital where name  not like 'k%'
select * from hospital where name not like 'a%' or name like 'm%'
select * from hospital where name not like '[a,d]%'
select * from hospital where name not like '[a-z]%'
select * from hospital where name not like '[a-c]%'

--------------wild card operater negative op ^-------------------------------------
select * from hospital where name like 'mohan%'
select * from hospital where name not like '[^a,d]%'
-------------------------------------------------------------------------------------
select * from hospital order by name
select * from hospital order by age
select * from hospital order by salary
select * from hospital order by name desc
select * from hospital order by age desc
select * from hospital order by salary desc































