ALTER table stud 
add City VARCHAR(50);

delete from stud where Division='BCX-3'; 

sp_rename 'stud.Email','EmailAddress';

truncate table stud;

select * into Student_New from stud;