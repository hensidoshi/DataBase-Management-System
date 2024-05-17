create table Student3
(RNo INT PRIMARY KEY,Name VARCHAR(20), Branch VARCHAR(20),SPI DECIMAL(3,2),Bklog INT);insert into Student3values(101,'Raju','CE',8.80,0);
insert into Student3values(102,'Amit','CE',2.20,3);
insert into Student3values(103,'Sanjay','ME',1.50,6);
insert into Student3values(104,'Neha','EC',7.65,1);
insert into Student3values(105,'Meera','EE',5.52,2);
insert into Student3values(106,'Mahesh','EC',4.50,3);

select * from Student3;

create view Personal 
as
select * from Student3;

create view Student_Details
as 
select Name,Branch,SPI from Student3;

create view Academic1
as 
select RNo, Name, Branch from Student3;
create view Student_Dataasselect * from Student3where Bklog>2;create view Student_Patternasselect RNo, Name , Branch from Student3where Name like '____';insert into Academic1values(107,'Meet','ME');select * from Academic1;update Student_Details SET Branch='ME'where Name='Amit';select * from Student_Details;delete from Academic1where RNo=104;select * from Academic1;