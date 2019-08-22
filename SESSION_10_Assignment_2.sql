CREATE DATABASE Bank;

USE Bank;

CREATE TABLE Customer
(
	C_ID	VARCHAR(10) NOT NULL,
    CNAME	VARCHAR(20) NOT NULL,
    MNO		INT,
    ADDRESS	VARCHAR(30),
    CITY	VARCHAR(10),
    PRIMARY KEY (C_ID)
);

ALTER TABLE Customer ADD COLUMN DOB date;
ALTER TABLE Customer MODIFY ADDRESS VARCHAR(20);

use bank;
insert into customer values('C1','Ankur',838289,'Domlur','Bangalore','1990-09-11');
insert into customer values('C2','John',89849,'Vaishali','Jaipus','1992-10-10');
insert into customer values('C3','Raman',888950,'Marathali','bangalore','1987-08-15');

update customer set city = 'Bangalore' where c_id = 'C2';
delete from customer where c_id = 'C3';

CREATE TABLE Account
(
	ACCT_NO	VARCHAR(10) PRIMARY KEY,
    C_ID	VARCHAR(10) NOT NULL,
    TYPE	VARCHAR(10),
    Balance		INT,
     foreign key (C_ID) references customer (C_ID)
);

insert into account values ('CA1', 'C1', 'Savings', 50000);
insert into account values ('CA2', 'C1', 'Savings', 10000);