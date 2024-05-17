create table DEPOSIT
(ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME);

craete table BRANCH
(BNAME VARCHAR(50),
CITY VARCHAR(50));

create table CUSTOMER
(CNAME VARCHAR(50),
CITY VARCHAR(50));

create table BORROW
(LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2));


insert into DEPOSIT 
values(101,'ANIL','VRCE',1000.00,1-3-95);

insert into DEPOSIT
values(102,'SUNIL','AJNI',5000.00,4-1-96);

insert into DEPOSIT 
values(103,'MEHUL','KAROLBAGH',3500.00,17-11-95);

insert into DEPOSIT 
values(104,'MADHURI','CHANDI',1200.00,17-12-95);

insert into DEPOSIT
values(105,'PRMOD','M.G. ROAD',3000.00,27-3-96);

insert into DEPOSIT
values(106,'SANDIP','ANDHERI',2000.00,31-3-96);

insert into DEPOSIT
values(107,'SHIVANI','VIRAR',1000.00,5-9-95);

insert into DEPOSIT 
values(108,'KRANTI','NEHRU PLACE',5000.00,2-7-95);

insert into DEPOSIT
values(109,'MINU','POWAI',7000.00,10-8-95);


insert into BRANCH
values('VRCE','NAGPUR');

insert into BRANCH
values('AJNI','NAGPUR');

insert into BRANCH
values('KAROLBAGH','DELHI');

insert into BRANCH
values('CHANDI','DELHI');

insert into BRANCH
values('DHARAMPETH','NAGPUR');

insert into BRANCH
values('M.G.ROAD','BANGLORE');

insert into BRANCH
values('ANDHERI','BOMBAY');

insert into BRANCH
values('VIRAR','BOMBAY');

insert into BRANCH
values('NEHRU PLACE','DELHI');

insert into BRANCH
values('POWAI','BOMBAY');


insert into CUSTOMER
values('ANIL','CALCUTTA');

insert into CUSTOMER
values('SUNIL','DELHI');

insert into CUSTOMER
values('MEHUL','BARODA');

insert into CUSTOMER
values('MANDAR','PATNA');

insert into CUSTOMER
values('MADHURI','NAGPUR');

insert into CUSTOMER
values('PRAMOD','NAGPUR');

insert into CUSTOMER
values('SANDIP','SURAT');

insert into CUSTOMER
values('SHIVANI','BOMBAY');

insert into CUSTOMER
values('KRANTI','BOMBAY');

insert into CUSTOMER
values('NAREN','BOMBAY');


insert into BORROW 
values(201,'ANIL','VRCE',1000.00); 

insert into BORROW 
values(206,'MEHUL','AJNI',5000.00);

insert into BORROW 
values(311,'SUNIL','DHARAMPETH',3000.00);

insert into BORROW
values(321,'MADHURI','ANDHERI',2000.00);

insert into BORROW
values(375,'PRMOD','VIRAR',8000.00);

insert into BORROW
values(481,'KRANTI','NEHRU PLACE',3000.00);


select * from  DEPOSIT;

select * from BORROW;

select * from CUSTOMER;

select ACTNO,CNAME,AMOUNT from DEPOSIT;

select LOANNO,AMOUNT from BORROW;

select * from BORROW where BNAME='ANDHERI';

select ACTNO,CNAME from  DEPOSIT where ACTNO=106;

select CNAME from BORROW where AMOUNT>5000;

select CNAME from CUSTOMER where ADATE>1/12/96;

select CNAME from DEPOSIT where ACTNO<105;









