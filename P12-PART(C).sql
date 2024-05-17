select count(City) from Employee where city='Rajkot' or city='Baroda';

select max(Salary)-min(Salary) as difference from Employee;

select count(EName) from Employee where JoiningDate>01-01-1991 and Department='IT';

select sum(Salary) from Employee group by Department having sum(salary)>35000 
order by sum(Salary) desc;