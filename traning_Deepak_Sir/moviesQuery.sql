create database MRF0610
use MRF0610
create table indianmovies
(
id int primary key identity,
name varchar(50), 
gender varchar(50),
actor varchar(50),
movies varchar(50),
)
select * from indianmovies

alter table indianmovies add img varchar(50)

create table tblactor
(
aid int primary key identity,
aname varchar(50)
)
insert into tblactor(aname)values('Rajnikant')
insert into tblactor(aname)values('Dharmendra')
select * from tblactor
select * from indianmovies join tblactor on indianmovies.actor=tblactor.aid

create table tblmovies
(
mid int primary key identity,
aid int,
mname varchar(50)
)
insert into tblmovies(aid,mname)values(1,'ROBOT')
insert into tblmovies(aid,mname)values(1,'KABALI')
insert into tblmovies(aid,mname)values(1,'SIVAJI')
insert into tblmovies(aid,mname)values(1,'KAALA')
insert into tblmovies(aid,mname)values(2,'DHARMVEER')
insert into tblmovies(aid,mname)values(2,'SHOLAY')
insert into tblmovies(aid,mname)values(2,'TAHALKA')
insert into tblmovies(aid,mname)values(2,'FARISHTEY')
select * from tblmovies

select * from indianmovies
join tblactor on indianmovies.actor=tblactor.aid 
join tblmovies on indianmovies.movies=tblmovies.mid


