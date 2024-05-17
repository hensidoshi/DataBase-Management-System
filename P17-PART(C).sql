select CEILING(63.1);
select CEILING(63.8);
select CEILING(-63.2);

select * from Empl where JoiningDate IS Null;

select UPPER(EName) As 'EName', LOWER(City) As 'City' from Empl;

alter table Empl
ALTER column EName CHAR(30);

select City,Max(Salary) from Empl
group by City; 