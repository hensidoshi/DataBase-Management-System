create table Empl
(EID INT,
EName VARCHAR(100),
Gender VARCHAR (10),
JoiningDate DATETIME,
Salary DECIMAL(8,2),
City VARCHAR(100));

insert into Empl
values(1,'Nick','Male','01-JAN-13',4000,'London');
insert into Empl
values(2,'Julian','Female','01-OCT-14',3000,'New York');
insert into Empl
values(3,'Roy','Male','01-JUN-16',3500,'London');
insert into Empl
values(4,'Tom','Male',NULL,4500,'London');
insert into Empl
values(5,'Jerry','Male','01-FEB-13',2800,'Sydney');
insert into Empl
values(6,'Philip','Male','01-JAN-15',7000,'New York');
insert into Empl
values(7,'Sara','Female','01-AUG-17',4800,'Sydney');
insert into Empl
values(8,'Emily','Female','01-JAN-15',5500,'New York');
insert into Empl
values(9,'Michael','Male',NULL,6500,'London');
insert into Empl
values(10,'John','Male','01-JAN-15',8800,'London');

select * from Empl;

select * from Empl where EName like 'M__h%'; 

select POWER(3,5) as 'Output';

select DATEADD(day,-20,getdate);

select * from Empl where EName like 'J%n%';

select SUBSTRING('SQL Programming',2,9);