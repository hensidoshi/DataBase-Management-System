create table Computer
(RollNo INT,
Name VARCHAR(20));

insert into Computer
values(101,'Ajay');
insert into Computer
values(109,'Haresh');
insert into Computer
values(115,'Manish');

select * from Computer;

create table Electrical
(RollNo INT,
Name VARCHAR(20));

insert into Electrical
values(105,'Ajay');
insert into Electrical
values(107,'Mahesh');
insert into Electrical
values(115,'Manish');

select * from Electrical;

select Name from Computer UNION 
select Name from Electrical; 

select Name from Computer UNION ALL
select Name from Electrical; 

select Name from Computer INTERSECT
select Name from Electrical;

select Name from Computer EXCEPT 
select Name from Electrical;

select Name from Electrical EXCEPT 
select Name from Computer;

select * from Computer UNION 
select * from Electrical; 

select * from Computer INTERSECT
select * from Electrical;

