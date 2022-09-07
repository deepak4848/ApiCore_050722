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
select * from doctor
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('RAMk',88,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA','a','n')
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('SHYM',98,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA','u','j')
insert into doctor values('AMI',66,'MBBS',34000,'UP','CRICKET','INDIA','MAI','','','14-01-11')
insert into doctor values('SUMI',37,'BAMS',0,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA','D','L','04-01-11')
insert into doctor values('LALI',56,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE','K','N','03-01-11')
insert into doctor values('AJI',49,'ANM',55000,'CHINA','BOXING','CHINA','BIJING','E','M','01-01-11')
insert into doctor values('JON',61,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON','Q','F','10-01-11')
insert into doctor values('PINT',38,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA','W','V','15-01-11')




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
join teacher on teacher.id=doctor.id
join employee on teacher.id=doctor.id

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
SELECT * FROM doctor
WHERE name LIKE 'a%';
SELECT * FROM doctor
WHERE name LIKE '%a%';
SELECT * FROM doctor
WHERE City LIKE 'gay%';
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
SELECT COUNT(city), Country
FROM teacher
GROUP BY Country;
SELECT COUNT(salary), Country
FROM teacher
GROUP BY Country
HAVING COUNT(salary) > 5;

 create table mytbl (it int)
 SELECT * INTO mytbl
FROM teacher;

SELECT * INTO teacherBackup20
FROM teacher;
SELECT * from teacherBackup20

SELECT * INTO teacherBackup20 IN 'Backup.mdb'
FROM teacher;
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
select * from Perrsons
insert into Perrsons values(1,'KUMARR','ANUJJ',16,'goa')

CREATE TABLE Ordeers 
(
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
select * from Orders
insert into Orders values(5,'1010','2009-11-11')
SELECT * FROM Orders WHERE OrderDate='2009-11-11'

CREATE VIEW [doctor] AS
SELECT Name, age
FROM doctor
WHERE Country = 'india';


















 select *From doctor where patient_name  is not null

  select *From doctor where patient_name  is null

    select *From doctor datetime '15-01-11'

 select *  From doctor datetime '15-01-11'

  select name,address,age,doctor from teacher as a,doctor as b
 where a.name=b.name and last_update<'2022-01-06'

 insert into <table name> (<column name>) values (<val1,val2>)

 update <table Name> set <column name>=<value>, optional <where>














select  *from doctor where salary ='44000'



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




















insert doctor(name,age,city,salary)values('roshan',35,'loni',18000)
insert into doctor values('rohit',35,14000,'nalanda')
insert into doctor values('aarav',35,14000,'nalanda')
insert into doctor values('kamal',35,14000,'nalanda')











