create table employees (id number(10) primary key, name varchar(30), age number(3), salary float(10), address varchar(100));
insert into employees values(001, 'Raghav', 19, 21000, 'Viman Nagar');
insert into employees values(002, 'Ram', 20, 22000, 'Undri');
insert into employees values(003, 'Raju', 21, 23000, 'MG Road');
insert into employees values(004, 'Himanshu', 22, 24000, 'Ring road');
insert into employees values(005, 'Radha', 23, 24000, 'kalyani road');
insert into employees values(006, 'Krishna', 24, 20000, 'fatima nagar');

select * from employees;

update employees set salary=25000, address='India' where age>20;

select * from employees;
delete from employees where salary=25000;
select * from employees;
select * from employees where age between 20 and 23;
select * from employees where age not between 20 and 23;
select * from employees where name like 'R%';
select * from employees where rownum<=3;
select distinct salary from employees;