create table Emp
(Eid INT,
Name VARCHAR(20));

insert into Emp
values(1,'Ajay');
insert into Emp
values(9,'Haresh');
insert into Emp
values(5,'Manish');

select * from Emp;

create table Customer
(Cid INT,
Name VARCHAR(20));

insert into Customer
values(5,'Ajay');
insert into Customer
values(7,'Haresh');
insert into Customer
values(5,'Manish');

select * from Customer;

select Name from Emp UNION
select Name from Customer;

select Name from Emp UNION ALL
select Name from Customer;

select Name from Emp INTERSECT
select Name from Customer;

select Name from Emp EXCEPT
select Name from Customer;

select Name from Customer EXCEPT
select Name from Emp;