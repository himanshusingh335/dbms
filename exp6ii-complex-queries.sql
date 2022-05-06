create table Student(Roll_No number(2) not null primary key, Student_Name varchar2(50));
insert into Student values(1, 'Raj');
insert into Student values (2, 'Rohit');
insert into Student values (3, 'Raj');

create table Performance(Roll_No number(2) , Course varchar2(50), Marks number(3), foreign key (Roll_No) references Student(Roll_No));
insert into Performance values(1, 'Math', 80);
insert into Performance values (1, 'English', 70);
insert into Performance values(2, 'Math', 75);
insert into Performance values (3, 'English', 80);
insert into Performance values(2, 'Physics', 65);
insert into Performance values (3, 'Math', 80);

select Roll_No, sum(Marks) from Performance group by Roll_No;
select Student.Roll_no, Student.Student_Name, Performance.Course, Performance.Marks from Student inner join Performance on Student.Roll_No=Performance.Roll_No;