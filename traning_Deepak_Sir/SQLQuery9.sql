use test17921
create table country
(
cid int primary key identity,
cname varchar(50)

)
insert into country(cname)values('india')
insert into country(cname)values('pakistan')
insert into country(cname)values('uk')
insert into country(cname)values('nepal')
insert into country(cname)values('bhutan')
select * from country
select * from teachers