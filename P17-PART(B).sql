select EName from Empl where City like '%ney' AND City like '______';

select CONVERT(VARCHAR(10),15);
select CAST(15 AS VARCHAR(10));

ALTER table Empl
add Department VARCHAR(20);

UPDATE Empl
SET Department='Marketing'
where City='London';
select * from Empl;

select * from Empl where EName like '%[n,y]';
