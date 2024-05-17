create table Student
(StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25));

insert into Student
values(1011,'Keyur','Patel','techonthenet.com','Rajkot');

insert into Student
values(1022,'Hardik','Shah','digminecraft.com','Ahmedabad');

insert into Student
values(1033,'Kajal','Trivedi','bigactivities.com','Baroda');

insert into Student
values(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad');

insert into Student
values(1055,'Harmit','Mitel',NULL,'Rajkot');

insert into Student
values(1066,'Ashok','Jani',NULL,'Baroda');


select FirstName from Student where FirstName like 'K%';

select FirstName from Student where FirstName like '_____';

select FirstName,LastName from Student where City like '_____a';

select * from Student where LastName like '%tel';

select * from Student where FirstName like 'ha%t';

select * from Student where FirstName like 'K_y%';