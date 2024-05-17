truncate table Employee_info;

delete Employee where City='Rajkot';

sp_rename 'Employee','New_Employee';

truncate table New_Employee;

drop table New_Employee;