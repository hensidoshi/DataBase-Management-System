create table Cricket
(Name varchar(20),
City varchar(20),
Age int);

insert into Cricket
values('Sachin Tendulkar', 'Mumbai', 30);insert into Cricketvalues('Rahul Dravid', 'Bombay', 35);insert into Cricketvalues('M. S. Dhoni', 'Jharkhand', 31);insert into Cricketvalues('Suresh Raina', 'Gujarat', 30);select * into Worldcup from Cricket where 1=2;select Name,City into T20 from Cricket where 1=2;select * into IPL from Cricket where 1=2;insert into IPL select * from Cricket where Name like '_a_____%';truncate table IPL;delete Cricket where City='Jharkhand';sp_rename 'IPL','IPL2018';drop table T20;