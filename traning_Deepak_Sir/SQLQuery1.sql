create database mvc0411
use mvc0411
create table empl
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int,
salary int,
)

create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)
insert into tblcountry(cname)values('INDIA'),('PAKISTAN'),('USA')

create table tbldepartment
(
did int primary key identity,
dname varchar(50)
)
insert into tbldepartment(dname)values('IT'),('HR'),('SALES'),('ACCOUNT'),('ADMIN')


select * from empl
select * from tblcountry
select * from tbldepartment
alter table empl add country int,department int

create table tblstate
(
sid int primary key identity,
cid int,
sname varchar(50)
)
insert into tblstate(cid,sname)values(2,'LAHORE')
insert into tblstate(cid,sname)values(2,'SINDH')
insert into tblstate(cid,sname)values(1,'BIHAR')
insert into tblstate(cid,sname)values(1,'GOA')
insert into tblstate(cid,sname)values(1,'PUNJAB')
insert into tblstate(cid,sname)values(3,'CALIFORNIA')
insert into tblstate(cid,sname)values(3,'FLORIDA')
insert into tblstate(cid,sname)values(3,'MICHIGAN')
insert into tblstate(cid,sname)values(2,'KARACHI')

select * from tblstate
alter table empl add state int
