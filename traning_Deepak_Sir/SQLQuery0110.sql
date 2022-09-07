create database SFF0110
use SFF0110
create table student
(
id int primary key identity,
name varchar(50), 
gender varchar(50),
country varchar(50),
course varchar(50),
bloodgroup varchar(50),
)
select * from student
------------------------------------Joint Table Query----------------------------------------
create table tblcountry
(
cid int primary key identity,
cname varchar(50)
)
insert into tblcountry(cname)values('india')
insert into tblcountry(cname)values('china')
insert into tblcountry(cname)values('japan')
insert into tblcountry(cname)values('bhutan')
select * from tblcountry
select * from student join tblcountry on student.country=tblcountry.cid


create table tblstate
(
sid int primary key identity,
cid int,
sname varchar(50)
)

insert into tblstate(cid,sname)values(3,'TOKIO')
insert into tblstate(cid,sname)values(2,'GANSU')
insert into tblstate(cid,sname)values(2,'BIJING')
insert into tblstate(cid,sname)values(3,'KANTO')
insert into tblstate(cid,sname)values(4,'PARO')
insert into tblstate(cid,sname)values(4,'THIMPU')
insert into tblstate(cid,sname)values(1,'BIHAR')
insert into tblstate(cid,sname)values(1,'PATNA')
insert into tblstate(cid,sname)values(1,'UP')
select * from tblstate
alter table student add state int




create table tblcourse
(
did int primary key identity,
dname varchar(50)
)
insert into tblcourse(dname)values('M.tech')
insert into tblcourse(dname)values('B.Tech')
insert into tblcourse(dname)values('MCA')
insert into tblcourse(dname)values('BCA')
select * from tblcourse
select * from student join tblcourse on student.course=tblcourse.did

create table tblbloodgroup

(
bid int primary key identity,
bname varchar(50)
)
insert into tblbloodgroup(bname)values('A')
insert into tblbloodgroup(bname)values('B')
insert into tblbloodgroup(bname)values('O')
insert into tblbloodgroup(bname)values('AB')
select * from tblbloodgroup
select * from student
join tblcountry on student.country=tblcountry.cid 
join tblcourse on student.course=tblcourse.did
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid
join tblstate on student.state=tblstate.sid

create table tbllogin
(
id int primary key identity,
name varchar(50), 
email varchar(50),
password varchar(50),
)
select * from tbllogin

-------------------------------Store insert submit Procedure--------------------------------
create procedure userlogin
@name varchar(50),
@email varchar(50),
@password varchar(50)
as
begin
insert into tbllogin(name,email,password)values(@name,@email,@password)
end
---------------------------------update proc--------------------------------
create procedure userupdate
@name varchar(50),
@email varchar(50),
@password varchar(50),
@id int
as
begin
update tbllogin set name=@name,email=@email,password=@password where id =@id
end
-------------------------------------delete proc---------------------------------
create procedure userdelete
@ppp int
as
begin
delete from tbllogin where id=@ppp
end
---------------------------------select proc-----------------------------------------
create procedure userselect
as
begin
select * from tbllogin
end

alter procedure usearch
@kk varchar(50)
as
begin
select * from tbllogin where name like '%'+@kk+'%'
end
--------------------gender serch staticbind--------------------------------
alter procedure studentsearch
@kk varchar(50)
as
begin
select * from student where gender like '%'+@kk+'%'
end
-----------------------------------------regform proc-------------------------
create proc studentjoin
as
begin
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblcourse on student.course=tblcourse.did 
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid 
join tblstate on student.state=tblstate.sid
end


create proc studentsearch
@kk int
as
begin
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblcourse on student.course=tblcourse.did 
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid 
join tblstate on student.state=tblstate.sid
where student.name like '%'+@kk+'%'
end
-----------------------remove error in kk------------------
alter proc studentsearch
@kk varchar(50)
as
begin
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblcourse on student.course=tblcourse.did 
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid 
join tblstate on student.state=tblstate.sid
where student.name like '%'+@kk+'%'
end
----------------------------serchbycountry--------------------
alter proc studentsearch
@kk varchar(50)
as
begin
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblcourse on student.course=tblcourse.did 
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid 
join tblstate on student.state=tblstate.sid
where student.name like '%'+@kk+'%' or cname like '%'+@kk+'%'
end
------------------------aplly serch state-----------------
alter proc studentsearch
@kk varchar(50)
as
begin
select * from student 
join tblcountry on student.country=tblcountry.cid
join tblcourse on student.course=tblcourse.did 
join tblbloodgroup on student.bloodgroup=tblbloodgroup.bid 
join tblstate on student.state=tblstate.sid
where student.name like '%'+@kk+'%' or cname=@kk or gender=@kk or dname=@kk  or sname=@kk  or bname=@kk 
end




