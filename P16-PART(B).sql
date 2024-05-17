select * from stud where ContactNo like '%877%';

select * from stud where Sem=3 AND ContactNo NOT like '%[8,9]%';

select * from stud where BirthDate>01-01-1990;

UPDATE stud
SET Division='BCX-5',Sem='5'
where StuID=102;

UPDATE stud
SET Name='Firoz Sherasiya'
where Email='Firoz.Me@Gmail.com' AND ContactNo like '%888%';
