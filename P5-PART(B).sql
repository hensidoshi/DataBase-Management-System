create table DEPOSIT
(ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME);

alter table DEPOSIT
add CITY VARCHAR(20),
PINCODE INT;

alter table DEPOSIT
alter column CNAME VARCHAR(35);

alter table DEPOSIT
alter column AMOUNT INT;

sp_rename 'DEPOSIT.ACTNO' ,'ANO';

alter table DEPOSIT
drop column CITY;