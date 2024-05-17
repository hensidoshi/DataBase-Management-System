select count(EName) from Employee where City='Rajkot';

select max(Salary)-min(Salary) as difference from Employee;

select count(EName) from Employee where JoiningDate>01-01-1991;
 
select sum(Salary) from Employee group by Department having sum(salary)>35000 order by sum(Salary);

select Department from Employee group by Department having count(EName)>2;