select EName, Salary, JoiningDate from Empl;

select len(EName) + len(Gender) from Empl;

select max(Salary)-min(Salary) from Empl;

sp_rename 'Empl.EName','FirstName';

sp_rename 'Empl','EmpMaster';