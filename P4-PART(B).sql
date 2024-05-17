create table Account
(ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME);


insert into Account 
values(101,'ANIL','VRCE',1000.00,'1-mar-95');
insert into Account
values(102,'SUNIL','AJNI',5000.00,'4-jan-96');
insert into Account
values(103,'MEHUL','KAROLBAGH',3500.00,'17-nov-95');
insert into Account
values(104,'MADHURI','CHANDI',1200.00,'17-dec-95');
insert into Account
values(105,'PRMOD','M.G. ROAD',3000.00,'27-mar-96');
insert into Account
values(106,'SANDIP','ANDHERI',2000.00,'31-mar-96');
insert into Account
values(107,'SHIVANI','VIRAR',1000.00,'5-sep-95');
insert into Account 
values(108,'KRANTI','NEHRU PLACE',5000.00,'2-jul-95');
insert into Account
values(109,'MINU','POWAI',7000.00,'10-aug-95');


delete Account where AMOUNT>=4000;

delete Account where BNAME='CHANDI';

delete Account where ADATE>1-10-1995;

truncate table Account;

drop table Account;