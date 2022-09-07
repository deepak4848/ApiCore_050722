select  *from master_device where device_slno ='601630'
select relay_status,* from master_device

select <Column Name> from <Table Name> <where condition> <Group  By> <Having> <order By> asc / desc

select top 2000 *From ems_prepost_archive_mvn.dbo.trns_daily_reading order by date  desc

select relay_status,count(relay_status) as cnt from master_device group by relay_status

use ems_prepost_mvn
 

select *From master_device where device_slno ='601003'

select *From master_device where device_slno in ('601003','601630','601634')

select *From master_device where device_slno not in ('601003','601630','601634')

 create table mytbl (it int)

 if exists(select * from sys.tables where name ='mytbl')
 begin
    print 'this table is exist'
	drop table mytbl
 end
 else
 begin
    print 'this table is not exist'
 end

select *From master_device where alert_amount  is not null

select *From master_account


create table mytbl  (empid int,empname varchar(50))
insert into mytbl values(1,2,2)


select ca_name,ca_address,device_slno,last_update_dttm from master_device as a,master_account as b
 where a.ca_no=b.ca_no and last_update_dttm<'2022-01-06'

 insert into <table name> (<column name>) values (<val1,val2>)

 update <table Name> set <column name>=<value>, optional <where>
-------------------------------------------sql practice-------------------query---------------------
create database Neptune_140102
use Neptune_130102
create table doctor
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from teacher
select * from doctor
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('RAMk',88,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA','a','n')
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('SHYM',98,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA','u','j')
insert into doctor values('AMI',66,'MBBS',34000,'UP','CRICKET','INDIA','MAI','','','14-01-11')
insert into doctor values('SUMI',37,'BAMS',0,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA','D','L','04-01-11')
insert into doctor values('LALI',56,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE','K','N','03-01-11')
insert into doctor values('AJI',49,'ANM',55000,'CHINA','BOXING','CHINA','BIJING','E','M','01-01-11')
insert into doctor values('JON',61,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON','Q','F','10-01-11')
insert into doctor values('PINT',38,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA','W','V','15-01-11')
-----------------------------jion table teacher and doctor-------------------------
select * from Students
select * from doctor
select * from teacher as A
join doctor as B on B.id=A.id
join Students as C on C.id=A.id

select * from teacher as A left
join doctor as B on B.id=A.id

select * from teacher as A right
join doctor as B on B.id=A.id

select * from teacher as A full
join doctor as B on B.id=A.id

select * from teacher as A inner 
join doctor as B on B.id=A.id




join Students as C on C.id=A.id

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT teacher.Name, doctor.id
FROM teacher
LEFT JOIN doctor ON teacher.id = doctor.id
ORDER BY teacher.Name;

-------------------------------------------------------------------------------------------------
update doctor set name ='DEEPAK',age='55',city='bihar',Qualification='MS',salary='0' where id=1
alter table doctor add patient_name varchar(50)
alter table doctor add Nurse_Name varchar(50)
alter table doctor add Copounder_name varchar(50)
alter table doctor drop column Copounder_name 


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

create table student
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from student
insert into student(name,age,Qualification,salary,address,hobbies,country,city)values('NAWAL',35,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA')
insert into student(name,age,Qualification,salary,address,hobbies,country,city)values('SANTOSH',45,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA')
insert into student values('SANJEEV',65,'MBBS',34000,'UP','CRICKET','INDIA','MAI')
insert into student values('RAKESH',30,'BAMS',44000,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA')
insert into student values('MITHLESH',50,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE')
insert into student values('BILMELSH',40,'ANM',55000,'CHINA','BOXING','CHINA','BIJING')
insert into student values('deepak',65,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON')
insert into student values('PINTU',30,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA')

truncate table student
delete student
drop table student
sp_rename 'student','teacher'
select * from teacher
sp_rename 'teacher.Qualification','Education '
sp_renamedb 'Neptune_140102','Neptune_130102'

select * from teacher
select * from employee


select * from doctor
join teacher  on teacher.id=doctor.id
join employee on teacher.id=doctor.id

------------------------TABLE A AND TABLE B JOIN-----------------------------------------
create table A
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into A values('MONU',54,15000,'INDIA')
insert into A values('AMAR',68,13000,'JAPAN')
insert into A values('AMAR',54,18000,'UK')
insert into A values('RAVI',34,19000,'CHINA')
insert into A values('SONU',19,155000,'PAKISTAN')

create table B
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into B values('OM',54,15000,'USA')
insert into B values('AMA',68,13000,'JAPAN')
insert into B values('AJIT',54,18000,'UK')
insert into B values('AVI',34,19000,'CHINA')
insert into B values('ONU',19,155000,'PAKISTAN')
select * from A
select * from B
select * from A
join B on B.id=A.id
------------------------JOIN TABLE A B C----------------------------------------
create table C
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into C values('M',54,15000,'USA')
insert into C values('DAMA',68,13000,'JAPAN')
insert into C values('JIT',54,18000,'UK')
insert into C values('DAVI',34,19000,'CHINA')
insert into C values('OGNU',19,155000,'PAKISTAN')

select * from A
select * from B
select * from C
select * from A as ant
join B as ball on ball.id=ant.id
join C as cat ON cat.id=ant.id

select * from A 
join B  on B.id=A.id
join C  ON C.id=C.id

select * from A
 left join B on A.id=B.id
select * from A
 left outer join B on A.id=B.id
 select * from A
 right join B on A.id=B.id
 select * from A
 right outer join B on A.id=B.id

---------------------------------------------------------------
select * from A
 left join B on A.id=B.id

select * from tblemployee 
left outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
full outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
cross join tblcountry 

select * from tblemployee 
left join tblcountry on tblemployee.country=tblcountry.cid 
where tblcountry.name is null











select patient_name,* from doctor

select top 20 *From doctor order by age  desc
select top 20 *From doctor order by age  asc

select address,count(address) as cnt from doctor group by address

select *From doctor where age in ('45','88','55','65')

select *From doctor where age not in ('45','88','55','65') 

select *From mytbl

 create table mytbl (it int)

 if exists(select * from sys.tables where name ='mytbl')
 begin
    print 'this table is exist'
 end
 else
 begin
    print 'this table is not exist'
 end
 ---------------------------------------------------------------------------------------
 SELECT * FROM doctor
WHERE Country='INDIA' AND City='Baliea';
SELECT * FROM doctor
WHERE City='lahore' OR City='gaya';
SELECT * FROM doctor
WHERE Country='india' OR Country='pakistan';
SELECT * FROM doctor
WHERE NOT Country='INDIA';
SELECT * FROM doctor
WHERE Country='INDIA' AND (City='gaya' OR City='baliea');
SELECT * FROM doctor
WHERE NOT Country='INDIA' AND NOT Country='PAKISTAN';

SELECT * FROM doctor
ORDER BY Country;
SELECT * FROM doctor
ORDER BY Country DESC;
---------------------------------
SELECT * FROM doctor
ORDER BY Country, Nurse_Name;

SELECT Nurse_Name, city, Address
FROM doctor
WHERE Address IS NULL;

SELECT Nurse_Name, city, patient_name
FROM doctor
WHERE patient_name IS NULL;

SELECT Nurse_Name, city, patient_name
FROM doctor
WHERE patient_name IS NOT NULL;

SELECT MIN(salary) AS Smallestsalary
FROM doctor;

SELECT MAX(salary) AS Smallestsalary
FROM doctor;

SELECT COUNT(patient_name)
FROM doctor;

SELECT SUM(salary)
FROM doctor;

SELECT AVG(salary)
FROM doctor;
----------------------------------------------------------------------------------
SELECT * FROM doctor
WHERE name LIKE 'a%';
SELECT * FROM doctor
WHERE name LIKE '%a%';
SELECT * FROM doctor
WHERE City LIKE 'gay%';
--------------------------------------------------------------------------------------
SELECT * FROM doctor
WHERE salary BETWEEN 30000 AND 44000;

SELECT patient_name AS P, Nurse_name AS N
FROM doctor;

SELECT City FROM doctor
UNION
SELECT City FROM teacher
ORDER BY City;

SELECT * FROM doctor
SELECT * FROM teacher
----------------------------------------------------------------------------
SELECT COUNT(city), Country
FROM teacher
GROUP BY Country;
------------------------------------------------------------------------
SELECT COUNT(salary), Country
FROM teacher
GROUP BY Country
HAVING COUNT(salary) > 5;
-------------------------------------------------------------------------
 create table mytbl (it int)
 SELECT * INTO mytbl
FROM teacher;
--------------------------------------------------------------------------------
SELECT * INTO teacherBackup20
FROM teacher;
SELECT * from teacherBackup20
---------------------------------------------------------------------------------
SELECT * INTO teacherBackup20 IN 'Backup.mdb'
FROM teacher;
-----------------------------------------------------------------------
SELECT name, City, patient_name
FROM doctor
ORDER BY
(CASE
    WHEN City IS NULL THEN patient_name
    ELSE City
END);

/*CREATE PROCEDURE sp_doc
AS
SELECT * FROM doctor
GO;*/
BACKUP DATABASE Neptune_130102
TO DISK = 'E:\b';
BACKUP DATABASE Neptune_130102
TO DISK = 'D:\b\Neptune_130102.bak';
------Unique key--------
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
-------------------------------------------------------------------------
select * from persons
insert into Persons values (1,'kumar','deepak',31)
insert into Persons (LastName,FirstName,Age) values('SHARMA','AMIT',44)
---------------PRIMARY KEY
CREATE TABLE Students (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
select * from Students
insert into Students values (8,'huhuh','0',hhh)
--------------------foreign key
CREATE TABLE Students (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
--------------------------check condition---------
CREATE TABLE Personns (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);

select * from Personns
insert into Personns values(2,'KUMARR','ANUJJ',16)
--------------DEFAULT SQL COND-------------
CREATE TABLE Perrsons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
-----------------------------------------------------------
select * from Perrsons
insert into Perrsons values(1,'KUMARR','ANUJJ',16,'goa')
-----------------------------------------------------------
CREATE TABLE Ordeers 
(
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
-----------------------------------------------------------------
select * from Orders
insert into Orders values(5,'1010','2009-11-11')
SELECT * FROM Orders WHERE OrderDate='2009-11-11'
----------------------------------------------------------------
CREATE VIEW [doctor] AS
SELECT Name, age
FROM doctor
WHERE Country = 'india';
------------------------------------------------------------------------
 select *From doctor where patient_name  is not null

  select *From doctor where patient_name  is null

    select *From doctor datetime '15-01-11'

 select *  From doctor datetime '15-01-11'

  select name,address,age,doctor from teacher as a,doctor as b
 where a.name=b.name and last_update<'2022-01-06'

 insert into <table name> (<column name>) values (<val1,val2>)

 update <table Name> set <column name>=<value>, optional <where>
=============================================================================
select  *from doctor where salary ='44000'
---------------------------------------------------------------------------
create table employee
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from employee
insert into employee(name,age,Qualification,salary,address,hobbies,country,city)values('NAWAL',35,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA')
insert into employee(name,age,Qualification,salary,address,hobbies,country,city)values('SANTOSH',45,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA')
insert into employee values('SANJEEV',65,'MBBS',34000,'UP','CRICKET','INDIA','MAI')
insert into employee values('RAKESH',30,'BAMS',44000,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA')
insert into employee values('MITHLESH',50,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE')
insert into employee values('BILMELSH',40,'ANM',55000,'CHINA','BOXING','CHINA','BIJING')
insert into employee values('deepak',65,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON')
insert into employee values('PINTU',30,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA')
---------------------------change table name-------------doctor to hospital----------------------------importent
sp_rename 'doctor','hospital'
select * from hospital
-----------------------change column name--------------------
select * from hospital
sp_rename 'hospital.city','location'
------------------change databas name------------------------------
sp_renamedb 'class07091','VIMS'
-----------------add column name----------------------------
alter table hospital add  age varchar(50)
select * from hospital
alter table hospital add gender varchar(50),country varchar(50)
----------------------------------------------------------------------
select * from hospital
----------------drop column name-------------------------------------------
alter table hospital drop column patient,gender,country

insert into hospital values('sanjay',39,31000,'vijaynagar')
----------------------------------------------------------------------
Select DISTINCT id, name from Student
select * from Student 
Select DISTINCT id, name from tblemployee

Select SUBSTRING(name,1,5) as name from tblemployee




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
-------------------------------------------------------------------------
insert doctor(name,age,city,salary)values('roshan',35,'loni',18000)
insert into doctor values('rohit',35,14000,'nalanda')
insert into doctor values('aarav',35,14000,'nalanda')
insert into doctor values('kamal',35,14000,'nalanda')
=======================================================================================
SELECT * FROM Ordeers WHERE DATE_TIME_COLUMN
BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';

alter doctor add column DATE_TIME_COLUMN
select * from doctor
alter table doctor drop column datetime
alter table doctor column DATE_TIME_COLUMN
alter table doctor add  DATE_TIME_COLUMN

alter table doctor add  DATE_TIME_COLUMN varchar(50)

ALTER TABLE doctor
ADD Email varchar(255);

ALTER TABLE doctor
ADD DATE_TIME_COLUMN varchar(255);
alter table doctor add DATE_TIME_COLUMN varchar(1000)

SELECT * FROM doctor
 WHERE DATE_TIME_COLUMN
BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';
-----------------------any all query--------------------------
create table product
(
Product_id int primary key identity,
Product_Name varchar(100),
Supplier_id varchar(100),
Category_ID varchar(100),
Unit varchar(100),
Price bigint,
)
select * from product
insert into product values('sound',105,005,40,300)

create table Order_Details
(
OrderDetails_id int primary key identity,
Order_id int,
Product_ID int,
Quantity int,
)
select * from Order_Details
insert into Order_Details values(1071,070,60)


SELECT Product_Name
FROM Product
WHERE Product_id = ANY
  (SELECT Product_id
  FROM Order_Details
  WHERE Quantity = 50);

  -----------------------imp SQLBackup-----------------------
  BACKUP DATABASE Neptune_130102
TO DISK = 'E:\b\Neptune_130102.bak';

BACKUP DATABASE testDB
TO DISK = 'E:\b\Neptune_130102.bak'
WITH DIFFERENTIAL;

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
-----------------------------------------------Alok Sir Sql-------------------------------------------
[1:37 PM, 1/18/2022] samid: use db2527_221021

create table tblEmployee
(
id int primary key identity,
name varchar(50),
age int,
gender varchar(50),
salary int,
country varchar(100),
)
insert into tblEmployee values('MONUG',54,'MALE',15000,'INDIA')
insert into tblEmployee values('AMARR',68,'FEMALE',13000,'JAPAN')
insert into tblEmployee values('AMARK',54,'MALE',18000,'UK')
insert into tblEmployee values('RAVIL',34,'MALE',19000,'CHINA')
insert into tblEmployee values('SONUQ',19,'FEMALE',155000,'PAKISTAN')

insert into tblEmployee values('RAKHI',66,'FEMALE',53000,'JAPAN')
insert into tblEmployee values('AVNI',59,'FEMALE',38000,'UK')
insert into tblEmployee values('SANTOSH',38,'MALE',83000,'CHINA')
insert into tblEmployee values('RAJESH',49,'MALE',77000,'PAKISTAN')
alter table tblEmployee add state varchar(100)
alter table tblEmployee add date_of_birth varchar(100)

date_of_birth

select * from tblEmployee
--------------------------------
select * from tblemployee
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
alter table tblemployee drop column country
alter table tblemployee add country int

sp_rename 'tblemployee.conntry','country'
create table tblcountry 
(
cid int primary key identity,
cname varchar(50)
)
insert into tblcountry(cname)values('India'),('Pakistan'),('USA')
insert into tblcountry(name)values('Japan')

select * from tblemployee
select * from tblcountry
sp_rename 'tblcountry.cname','name'

select * from tblemployee 
join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee
 inner join tblcountry on tblemployee.country=tblcountry.cid

select id,name,salary,gender,date_of_birth,cname from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select id,tblemployee.name,salary,gender,date_of_birth,tblcountry.name from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select id,tblemployee.name as ename,salary,gender,date_of_birth,tblcountry.name as cname from tblemployee join tblcountry on tblemployee.country=tblcountry.cid

select tblemployee.id,tblemployee.name,tblemployee.salary,tblemployee.gender,
tblemployee.date_of_birth,tblcountry.name 
from tblemployee join tblcountry 
on tblemployee.country=tblcountry.cid

select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname 
from tblemployee as E  join tblcountry as C
on E.country=C.cid

--JOIN
--1)INNER JOIN
--2)OUTER JOIN ---- A)LEFT JOIN  B)RIGHT JOIN   C)FULL JOIN
--3)CROSS JOIN
update tblemployee set country=55 where id=2

select * from tblemployee
 join tblcountry on tblemployee.country=tblcountry.cid
 -------------------------------------------------------------------------------------------
select * from tblemployee
 left join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
left outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
full outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
cross join tblcountry 

select * from tblemployee 
left join tblcountry on tblemployee.country=tblcountry.cid 
where tblcountry.name is null


select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname 
from Neptune_130102.dbo.tblemployee as E  join dddd.dbo.tblcountryy as C
on E.country=C.cid

--SELF JOIN

create table Student
(
sid int primary key identity,
sname varchar(50),
srname int
)
insert into Student(sname,srname)values('soni',9)
insert into Student(sname,srname)values('moni',3)
insert into Student(sname,srname)values('joni',6)
insert into Student(sname,srname)values('toni',5)


select * from Student
select * from tblemployee

select  A.sname as Student,B.sname as SrName
from Student as A  join Student as B
on A.srname=B.sid

select  A.sname,B.sname
from Student as A full join Student as B
on A.srname=B.sid

--------------------------------------------------------------------------------------
select * from tblemployee
select name,gender from tblemployee
select name+gender from tblemployee
select (name+gender)as details from tblemployee
select (name+ ' ' +gender)as details from tblemployee
-------------space query-------------------------------------
select (name + space(5) + gender)as details from tblemployee
select (name + space(5) + gender + space(5) + salary)as details from tblemployee -- error
select (name + space(5) + gender + space(5) + convert(varchar(50),salary))as details from tblemployee
select (name + space(5) + gender + space(5) + cast(salary as varchar(50)))as details from tblemployee
-----------------------
select id,name,gender,salary,convert(varchar(50),date_of_birth,106) as dob,country from tblemployee
select id,name,gender,salary,convert(varchar(50),date_of_birth,103) as dob,country from tblemployee
select id,name,gender,salary,cast(date_of_birth as varchar(50)) as dob,country from tblemployee

------------------------------NEW QUERY----------------SQL-------------------------------------------------
---------------------------------CSAT------------------------------------------------------------

create table employe
(
eid int,
name varchar(20),
mobile varchar(10),
city varchar(20),
department varchar(20) , 
salary int
)

select * from employe

insert into employe values(1,'deepak','9874561234','Delhi','php',15000)
insert into employe values(22,'ajay','9874564534','Noida','asp',16000)
insert into employe values(33,'sunil','9874545234','Agra','android',25000)
insert into employe values(44,'ashish','9874561234','chandigarh','windows',28000)
insert into employe values(65,'deepkia','9878561234','kolkatta','linux',17000)
insert into employe values(16,'namrata','9823561234','aligarh','C',13000)
insert into employe values(23,'sanjay','9878961234','hathras','c++',17000)
insert into employe values(67,'nishant','9890561234','kochi','unix',20000)
insert into employe values(78,'shikhar','9809561234','jalhandar','solaris',28000)
insert into employe values(101,'nitin','9874561234','Mathura','phonegap',18000)
insert into employe values(98,'harendra',null,'jalhandar','solaris',88000)

select * from employe

select eid , name from employe

select eid , name from employe where eid=65


delete employe
drop table employe

select eid , name ,  salary as 'Old Salary','New salary '= (1.1) * salary from employe

select * from employe where name like 'a%' or name like 'd%' or name like 's%'

select * from employe
select * from employe where name like '[ads]%'
select * from employe where name like '[^ads]%'


select * from employe where name like '%[lkt]'

select * from employe where name like '[ads]%[lkt]'

select * from employe where name like '[ads]%k'

select * from employe where mobile is null

select * from employe where mobile is not null

--displaying details in order


select * from employe order by eid asc

select * from employe order by eid 

select * from employe order by eid desc

-- retreiving the top details ....


select * from employe

select top 3 * from employe

select top 3 eid ,name from employe

select top 3 * from employe order by salary desc

select top 3 * from employe order by salary 

--------retreiving distinct values ----------------

select city from employe

------------------distinct-----alphebitcal(a to z)---------------------------------------
select distinct city from employe

------------------------------String functions --------------------------

--Are used to manipulate varchar or char type columns in the table

select  ASCII('c') as 'ASCII VAlue'

select CHAR(97) as 'Character Value'


select CHARINDEX('e','hello')

select CHARINDEX('a',name) from employe

select name  from employe where CHARINDEX('a',name) = 5


select LEFT(name,3) from employe

select name  from employe where LEFT(name,3) = 'dee'

select right(name,3) from employe

select name  from employe where right(name,1) = 'a'

----equlvialent like query

select name from employe where name like '%a'


---------------

select LEN(name) from employe

select name from employe where LEN(name) >4

select UPPER(name) from employe

select lower(name) from employe

select * from employe

select REPLACE(name,'ee','i') from employe

select name , REVERSE(name) as 'Reverse name ' from employe

select name from employe where name = REVERSE(name)

select stuff('weather',2,2,'i')

select name ,STUFF(name,2,3,'***') from employe

select name , SUBSTRING(name,2,3) from employe

select name , SUBSTRING(name,1,3) from employe -- same as left working

select name , SUBSTRING(name , len(name)-2,3) from employe --same as right working


select * from employe

select name + ' lives in '  + city  from employe


select eid + 'is : '+ name from employe--- error due to conversions


select CONVERT(char(3),eid) + 'is : ' + name from employe

-------Date Functions ----------------------------
---- functions are used to manipulate the datateime coumns values----------------

-----Date parts -------------

/*

    yy,yyyy - year
	qq,q - quarter
	mm,m -- month
	dy-- day of year
	day -- dd,d
	week -- wk
	weekday -- Dw
	hour -- hh
	minute -- mi
	second -- ss
	millisecond -- ms
 */
 
 --date functions
 
select GETDATE()

------to change the format of date we will use convert functions

select CONVERT(varchar(20),getdate(),1)
select CONVERT(varchar(20),getdate(),2)

select CONVERT(varchar(20),getdate(),3)--indian date
select CONVERT(varchar(20),getdate(),4)--indian date
select CONVERT(varchar(20),getdate(),5)--indian date

select CONVERT(varchar(20),getdate(),6)
select CONVERT(varchar(20),getdate(),7)
select CONVERT(varchar(20),getdate(),8)

select CONVERT(varchar(20),getdate(),9)--time 

select CONVERT(varchar(20),getdate(),10)

-----------------------------------------------------------------

select DAY(getdate())
select DATEPART(dd,getdate())
select DATENAME(dd,getdate())


select MONTH(getdate())
select DATEPART(mm,getdate())
select DATENAME(mm,getdate())

select YEAR(getdate())
select DATEPART(yy,getdate())
select DATENAME(yy,getdate())

select DATEPART(dw,getdate())
select DATENAME(dw,getdate())


select DATEPART(qq,getdate())


select DATEPART(dy,getdate())


select DATEPART(wk,getdate())

select DATEPART(hh,getdate())
select DATEPART(mi,getdate())
select DATEPART(ss,getdate())


select DATEADD(dd,5,getdate())
select DATEADD(mm,5,getdate())
select DATEADD(yy,5,getdate())

select DATEADD(dd,5,getdate()),DATEADD(mm,5,getdate()),DATEADD(yy,5,getdate())


create table emp (id int , name varchar(20) , dob datetime)

drop table emp

insert into emp values (1,'abhay','03/21/1992')
insert into emp values (1,'samid','03/06/1992')
select * from emp

select DATEDIFF(YY,dob,GETDATE()) from emp

select DATENAME(dw,dob) from emp


-------------------------------------------------------------------

-------------Mathematical Functions ------------------------------

select ABS(23)
select ABS(-23)

select CEILING(8.3)
select Floor(8.3)

select ROUND(34.568,2)
select ROUND(34.568,1)
select ROUND(34.568,0)
select ROUND(34.568,-1) ---30.00
select ROUND(37.568,-1) --- 40.00
select ROUND(34.568,-2)--0.000


select PI()
select round(PI(),2)

select LOG(100)
select LOG10(100)

select POWER(4,3)

select RAND()
select floor(RAND()*10)
select floor(RAND()*100)


select SQRT(64)
select SQRT(63)

select SIGN(-33)
select SIGN(34)
select SIGN(0)


--- will return conutries whose temperature is less than 0.
select countryname from world where SIGN(countrytemperature) = -1 




------------------------Aggregate Functions ---------------------------

---- Max(), Min() , Sum() , Avg() , Count()


select * from employe



select SUM(salary) from employe

select Avg(salary) from employe

select MAx(salary) from employe

select min(salary) from employe

select count(salary) from employe

select COUNT(city) from employe

select COUNT(distinct city) from employe


------------------------------------------------------------------------
----------------------------------Joins---------------------------------

-- why do we need joins ??
--------
-----Joins --
	--- A.Inner Joins
	----B.Outer Joins
		--i.Left Outer Join
		--ii.Right Outer Join
		-- iii. Full outer
	---C.Cross Joins
	---D.Self Joins
	---E.Equi Joins
	
	
----------------------------------Inner Joins---------------------------------

create table EmpCompany
(
eid int,
ename varchar(20),
department varchar(20), 
designation varchar(20) , 
doj datetime
)

drop table EmpCompany
select * from EmpCompany

insert into EmpCompany values(101,'Amit','IT','Software Engineer','03/24/2001')
insert into EmpCompany values(99,'Sumit','Sales','Sales Executive','01/18/2002')
insert into EmpCompany values(109,'Ajay','IT','Software Executive','01/4/2003')
insert into EmpCompany values(200,'Anant','IT','Project Manager','02/17/2004')
insert into EmpCompany values(100,'Amir','Sales','Sales Manager','03/29/2002')
insert into EmpCompany values(65,'Anshul','IT','Platmorm MAnager','04/21/2005')
insert into EmpCompany values(111,'Deepak','Bussines','Bussiness Develop','04/21/2002')
		

select * from empcompany
select * from empdetails

select ename from empcompany

create table empdetails 
(
eid int,
mobile varchar(20),
city varchar(20),
dob datetime
)

insert into empdetails values (99,'98745712474','Delhi','01/15/1985')
insert into empdetails values (101,'98745712474','Noida','01/15/1983')
insert into empdetails values (109,'98745712474','Kolkatta','01/15/1990')
insert into empdetails values (200,'98745712474','Chandigarh','01/15/1982')
insert into empdetails values (100,'98745712474','Lucknow','01/15/1988')
insert into empdetails values (65,'98745712474','Mumbai','01/15/1985')


select * from empcompany
select * from empdetails

--first way
select  empdetails.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany inner join empdetails on empcompany.eid=empdetails.eid




--second way
select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany ec join empdetails ed on ec.eid=ed.eid


--third way

select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany ec , empdetails ed where ec.eid=ed.eid

create table empextra 
(
eid int , 
hobby varchar(20), 
interest varchar(20) 
)

insert into empextra values(100,'reading books','cooking')
insert into empextra values(65,'playing games','playing')
insert into empextra values(101,'reading comics','outing')
insert into empextra values(99,'reading news','chatting')


select * from empextra

select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob,
		hobby,
		interest 
from empcompany ec , empdetails ed  , empextra ee where ec.eid=ed.eid and ed.eid = ee.eid


-----------------------------Outer Join -------------------------------------

---- Left Outer Join ----------------
drop table A
drop table B

create table A
(
eid int, 
ename varchar(20) , 
edepartment varchar(20)
)

insert into A values(1,'deepak','IT')
insert into A values(2,'ajay','Sales')
insert into A values(3,'sanjay','Bussines')

create table B
(
eid int , 
ecity varchar(20), 
emobile varchar(10)
)

insert into B values(1,'Agra','989747847')
insert into B values(2,'Delhi','987457474')
insert into B values(4,'Noida','98745747')

select * from A
select * from B

select A.eid , ename , edepartment , ecity , emobile from A left outer join B on A.eid = B.eid

select B.eid , ename , edepartment , ecity , emobile from A right outer join B on A.eid = B.eid

select A.eid , ename , edepartment , ecity , emobile from A full outer join B on A.eid = B.eid

----------------------------------Group by -----------------------------------------

select * from employe

select * into empd from employe where eid <= 65

select * from empd

update empd 
set department='asp' where eid=44 OR eid=16

update empd 
set department='php' where eid=33 OR eid=65 or eid=23

select department , SUM(salary) as 'Total salary' from empd group by department

select department , SUM(salary) as 'Total salary' from empd group by department having sum(salary)>58000


-----------------------------------Subqueries ---------------------------------

select * from employe

select * from A
select * from B


select * from employe where city in ('agra','delhi','noida')

select * from employe where city in ( select ecity from B )

select * from employe where city in ( select ecity from B where emobile='989747847')

select * from employe where city = (select ecity from B where emobile='989747847')

select * from employe where exists ( select ecity from B where emobile='98974784712')

select * from employe where exists ( select ecity from B where emobile='989747847')


---------------------------------------Constraints-----------------------------------------
/*

Implementing Data Integrity:
A.Entity Integrity --
B.Domain Integrity --
C.Referential integrity --
D.User defined integrity : by set of rules.

can maintain integrity by below ways :
A.Applying constraints with Enabling and disabling constraints.
B.Applying rules
C.User defined data types


Constraints :

A.Primary Keys Constraint
B.Unique Keys ''
C.Foreign Keys ''
D.Check Constraint
E.Default Constraint
*/

create table employedetails
(
	eid int primary key ,
	ename varchar(20) not null default 'Admin',
	emobile varchar(10) unique,
	ecity varchar(20) check ( ecity in ('Agra','Noida','Delhi'))  default 'Agra' ,
	eage int check ( eage between 20 and 25),
	egender char(1) check (egender in ('F','M'))
)
	  
	  
insert into employedetails values(101,'deepak','987414784','Agra',23,'M')

insert into employedetails values(102,'deepak','987414785','Agra',23,'M')

insert into employedetails values(103,'deepak','987414781','Delhi',24,'M')

insert into employedetails values(104,default,'987414782',default,24,'M')

select * from employedetails

insert into employedetails(eid,emobile,eage,egender) values (105,'87471477',24,'F')


-------------------------------------------Identity columns---------------------------------

create table employe1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	doj datetime not null
)

select * from employe1

-- adding columns  by using alter table
alter table employe1
add designation varchar(20) not null




drop table employe1

create table employe1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	designation varchar(20) not null,
	doj datetime not null
)


insert into employe1 values('Deepak Singh','IT','Software Enginner','09/03/2014')
insert into employe1 values('Abhay Singh','SALES','Sales Manager','02/08/2014')

select * from employe1

create table epms
(
id int primary key identity,
name varchar(50), age int, salary int, rollno int, address varchar(50)
)

