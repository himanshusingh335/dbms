create table employees (id number(10) primary key, name varchar(30), age number(3), salary float(10), address varchar(100));
insert into employees values(001, 'Raghav', 19, 21000, 'Viman Nagar');
insert into employees values(002, 'Ram', 20, 22000, 'Undri');
insert into employees values(003, 'Raju', 21, 23000, 'MG Road'); 
insert into employees values(004, 'Himanshu', 22, 24000, 'Ring road'); 
insert into employees values(005, 'Radha', 23, 24000, 'kalyani road'); 
insert into employees values(006, 'Krishna', 24, 20000, 'fatima nagar');
select * from employees;
Declare
n_count number;
Begin
Select count(1) into n_count from employees
Where name = 'Raghav';
if n_count > 0 then
-- do something here if exists
dbms_output.put_line('The Name entered EXISTS');
else
-- do something here if not exists dbms_output.put_line('The Name entered does not EXIST'); end if;
End;
