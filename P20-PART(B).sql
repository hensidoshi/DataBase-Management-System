create table Student4
(RNo INT PRIMARY KEY,Name VARCHAR(20) NOT NULL, Branch VARCHAR(20) NOT NULL,SPI DECIMAL(3,2) NOT NULL,Bklog INT NOT NULL);insert into Student4values(101,'Raju','CE',8.80,0);
insert into Student4values(102,'Amit','CE',2.20,3);
insert into Student4values(103,'Sanjay','ME',1.50,6);
insert into Student4values(104,'Neha','EC',7.65,1);
insert into Student4values(105,'Meera','EE',5.52,2);
insert into Student4values(106,'Mahesh','EC',4.50,3);

select * from Student4;

create view Personal1
as
select * from Student4;

create view Student_details1
as
select Name, Branch, SPI from Student4;

create view Academic2
as
select RNo, Name, Branch from Student4;

create view Student_Data1
as
select * from Student4
where Bklog>2;
create view Student_Pattern1 
as
select RNo, Name, Branch from Student4
where Name like '____';

insert into Academic2values(107,'Meet','ME');select * from Academic2;

update Student_details1 SET Branch='ME'where Name='Amit';select * from Student_details1;

