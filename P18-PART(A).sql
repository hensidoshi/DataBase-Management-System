select concat(EName,' Works At ',City,' And Earns ',Salary) As 'Employee Details' FROM Empl;

select count(Salary) from Empl
where Salary>5000;

select left(EName,4), right(EName,3) from Empl;

select City from Empl
where JoiningDate>'01-JAN-2014'
group by City 
having Sum(Salary)>15000;

select Replace(EName,'u','oo') from Empl;