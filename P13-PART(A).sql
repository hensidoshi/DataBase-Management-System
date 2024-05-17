create table Student1
(Rno INT,
Name VARCHAR(20),
Branch VARCHAR(20));

insert into Student1
values(101,'Raju','CE');
insert into Student1
values(102,'Amit','CE'); 
insert into Student1
values(103,'Sanjay','ME');
insert into Student1
values(104,'Neha','EC'); 
insert into Student1
values(105,'Meera','EE'); 
insert into Student1
values(106,'Mahesh','ME'); 

select * from Student1;

create table Result
(Rno INT,
SPI DECIMAL(3,2));

insert into Result
values(101,8.8);
insert into Result
values(102,9.2);
insert into Result
values(103,7.6);
insert into Result
values(104,8.2);
insert into Result
values(105,7.0);
insert into Result
values(107,8.9);

select * from Result;

create table Employee1
(EmployeeNo VARCHAR(20),
Name VARCHAR(20),
ManagerNo VARCHAR(20));

insert into Employee1
values('E01','Tarun',' ');
insert into Employee1
values('E02','Rohan','E02'); 
insert into Employee1
values('E03','Priya','E01'); 
insert into Employee1
values('E04','Milan','E03');
insert into Employee1
values('E05','Jay','E01'); 
insert into Employee1
values('E06','Anjana','E04'); 

select * from Employee1;

select * from Student1 s cross join Result r;

select s.Rno, s.Name, s.Branch, r.SPI from Student1 s 
inner join Result r on s.Rno=r.Rno;

select s.Rno, s.Name, s.Branch, r.SPI from Student1 s 
inner join Result r on s.Rno=r.Rno
where Branch='CE';

select s.Rno, s.Name, s.Branch, r.SPI from Student1 s 
inner join Result r on s.Rno=r.Rno
where Branch!='EC';

select avg(r.SPI) from Student1 s 
inner join Result r on s.Rno=r.Rno
group by s.Branch;

select avg(r.SPI) from Student1 s 
inner join Result r on s.Rno=r.Rno
group by s.Branch order by avg(r.SPI);

select s.Branch,avg(r.SPI) from Student1 s 
inner join Result r on s.Rno=r.Rno
group by s.Branch having s.Branch='CE' or s.Branch='ME';

select * from Student1 s left outer join Result r
on s.Rno=r.Rno;

select * from Student1 s right outer join Result r
on s.Rno=r.Rno;

select * from Student1 s full outer join Result r
on s.Rno=r.Rno;

select e.Name,e.ManagerNo  from Employee1 e left outer join Employee1 f
on e.ManagerNo=f.EmployeeNo;