create table employees (id number(10) primary key, name varchar(30), age number(3), salary float(10), address varchar(100));
insert into employees values(001, 'Raghav', 19, 21000, 'Viman Nagar');
insert into employees values(002, 'Ram', 20, 22000, 'Undri');
insert into employees values(003, 'Raju', 21, 23000, 'MG Road'); insert into employees values(004, 'Himanshu', 22, 24000, 'Ring road'); insert into employees values(005, 'Radha', 23, 24000, 'kalyani road'); insert into employees values(006, 'Krishna', 24, 20000, 'fatima nagar');
select * from employees;
CREATE TABLE emp_temp AS
SELECT *
FROM employees;
BEGIN
UPDATE emp_temp SET salary=salary+8000 WHERE age <= 22;
dbms_output.Put_line('Number of record updated: ' ||To_char(SQL%rowcount));
END;
/
select * from emp_temp;