create table Person3
(PersonID INT PRIMARY KEY,
PersonName VARCHAR(100) NOT NULL,
Salary DECIMAL(8,2) NOT NULL,
JoiningDate DATETIME NOT NULL,
City VARCHAR(100) NOT NULL,
Age INT Null,
BirthDate DATETIME NOT NULL);

create table PersonLog(PLogID INT PRIMARY KEY,
PersonID INT NOT NULL,
PersonName VARCHAR(250) NOT NULL, 
Operation VARCHAR(50) NOT NULL,
UpdateDate DATETIME NOT NULL);

insert into Person3
values(101,'Rahul Tripathi',61600,'11-JUL-1984','Rajkot',18,'21-JUL-2004');
insert into Person3
values(102,'Hardik Pandya',18000,'26-JUL-1985','Ahmedabad',17,'1-MAY-2006');
insert into Person3
values(103,'Bhavin Kanani',25000,'20-JUL-1986','Baroda',21,'5-DEC-2001');
insert into Person3
values(104,'Bhoomi Vaishnav',39000,'12-JUL-1994','Rajkot',20,'8-NOV-2004');
insert into Person3
values(105,'Rohit Topiya',18700,'26-JUL-1984','Jamnagar',25,'20-JUL-1999');

select * from Person3;

create trigger Person3_Msg
on Person3
after insert,update,delete
as
begin
	print 'Record is Affected';
end
insert into Person3
values(107,'Priya Joshi',22000,'22-JUL-1986','Rajkot',21,'1-NOV-2001');
update Person3
set  PersonName='Bhavin Parmar'
where PersonID='103';
delete from Person3
where PersonID=104;
select * from Person3;

--insert
create trigger Person3_insert
on Person3
after insert
as 
begin
	declare @PersonID INT;
	declare @PersonName VARCHAR(50);
	select @PersonID=PersonID from inserted
	select @PersonName=PersonName from inserted
	insert into PersonLog
	values(@PersonID,@PersonName,'Insert',getdate())
end 
insert into Person3
values(108,'Siya Parmar',22000,'5-MAR-2000','Ahmedabad',17,'28-MAR-2005');
select * from PersonLog;

--update
create trigger Person3_update
on Person3
after update
as 
begin
	declare @PersonID INT;
	declare @PersonName VARCHAR(50);
	select @PersonID=PersonID from inserted
	select @PersonName=PersonName from inserted
	update PersonLog
	set  
end 
update Person3
set City='Surat'
where PersonID=107;
select * from PersonLog;

--delete
create trigger Person3_delete
on Person3
after delete
as 
begin
	declare @PersonID INT;
	declare @PersonName VARCHAR(50);
	select @PersonID=PersonID from deleted
	select @PersonName=PersonName from deleted
	insert into PersonLog
	values(@PersonID,@PersonName,'Insert',getdate())
end 