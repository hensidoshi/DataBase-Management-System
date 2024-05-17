select FirstName from Student where Website is NULL and FirstName like '_____%';

select * from Student where LastName like 'Pat%';

select * from Student where City like '[^b]%';

select * from Student where FirstName like '[A,H]%';

select * from  Student where FirstName like 'H[a,e,i,o,u]%';