create table employees (id number(10) primary key, name varchar(30), age number(3), salary float(10), address varchar(100));
insert into employees values(001, 'Raghav', 19, 21000, 'Viman Nagar');
insert into employees values(002, 'Ram', 20, 22000, 'Undri');
insert into employees values(003, 'Raju', 21, 23000, 'MG Road');
insert into employees values(004, 'Himanshu', 22, 24000, 'Ring road');
insert into employees values(005, 'Radha', 23, 24000, 'kalyani road');
insert into employees values(006, 'Krishna', 24, 20000, 'fatima nagar');

select * from employees;

select * from employees where salary in (select max(salary) from employees);
select * from employees where salary in (select min(salary) from employees);
select sum(salary) as total from employees;
select round(salary) as total from employees;
select ceil(salary) as total from employees;
select count(*) from employees;
select avg(age) from employees;
