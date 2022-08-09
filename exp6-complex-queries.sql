create table employees (id int(10) NOT NULL, name varchar(30), age int(3), salary float(10), address varchar(100), PRIMARY KEY(id));
insert into employees values(001, 'Raghav', 19, 21000, 'Viman Nagar');
insert into employees values(002, 'Ram', 20, 22000, 'Undri');
insert into employees values(003, 'Raju', 21, 23000, 'MG Road');
insert into employees values(004, 'Himanshu', 22, 24000, 'Ring road');
insert into employees values(005, 'Radha', 23, 24000, 'kalyani road');
insert into employees values(006, 'Krishna', 24, 20000, 'fatima nagar');

select * from employees;

create table responsibility (id int(10), responsibility varchar(100), foreign key(id) references employees(id));
insert into responsibility values(001, 'accounting');
insert into responsibility values(001, 'managing');
insert into responsibility values(002, 'clerk');
insert into responsibility values(003, 'clerk');
insert into responsibility values(004, 'managing');
insert into responsibility values(005, 'clerk');
insert into responsibility values(006, 'clerk');

select * from responsibility;

select id, name, age, salary, address from employees where age between 20 and 24 and id in (select id from responsibility where responsibility='clerk');
select employees.id, employees.name, employees.age, employees.salary, responsibility.responsibility from employees join responsibility on employees.id=responsibility.id where age between 20 and 24 and employees.id in (select id from responsibility where responsibility='clerk');
select responsibility.responsibility, avg(employees.salary) from responsibility join employees on responsibility.id=employees.id group by responsibility having avg(salary)>21000 order by avg(salary) desc;
select responsibility.responsibility, count(employees.salary) from responsibility join employees on responsibility.id=employees.id group by responsibility having avg(salary)>21000 order by avg(salary) desc;
select responsibility.responsibility, count(employees.salary) from responsibility join employees on responsibility.id=employees.id group by responsibility order by avg(salary) desc;
