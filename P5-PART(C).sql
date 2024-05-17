alter table DEPOSIT
drop column ADATE;

sp_rename 'DEPOSIT.CNAME' , 'CUSTOMERNAME';

sp_rename 'DEPOSIT' , 'DEPOSIT_DETAIL';

drop table DEPOSIT_DETAIL;