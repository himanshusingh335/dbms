create table employees (id number(10) primary key, name varchar(30), age number(3), salary float(10), address varchar(100));

alter table employees drop column address;
alter table employees drop (age, name);
alter table employees modify (salary float(20));
rename employees to employee;
truncate table employee;
drop table employee;