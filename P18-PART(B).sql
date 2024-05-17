select City,avg(Salary),count(EId)
from Empl group by City;

select sum(Salary) from Empl
where Gender='Female';

select EName,datediff(YEAR,JoiningDate,GETDATE()) from Empl;

alter table Empl
drop column Department;

UPDATE Empl
SET City=NULL
where City='Syndey';