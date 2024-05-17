select Name from stu
where DID IN(select DID from dep where DName='Computer' OR DName='Mechanical');

select Name from stu
where DID = (select DID FROM stu where rno = 102);

select Name from stu
where DID = (select DID from dep where DName='Electrical') 
AND Rno IN (select Rno from Academic where SPI>9);