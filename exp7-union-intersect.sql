create table Student(Roll_No number(2) not null primary key, Student_Name varchar2(50));
insert into Student values(1, 'Raj');
insert into Student values (2, 'Rohit');
insert into Student values (3, 'Rajul');

create table HighSchoolStudent(Roll_No number(2) not null primary key, Student_Name varchar2(50));
insert into HighSchoolStudent values(1, 'Raj');
insert into HighSchoolStudent values (2, 'Rohit');
insert into HighSchoolStudent values (4, 'Ramu');

select * from Student;
select * from HighSchoolStudent;
Select Student_Name from Student union select Student_Name from HighSchoolStudent;
Select Student_Name from Student union all select Student_Name from HighSchoolStudent;
Select Student_Name from Student intersect select Student_Name from HighSchoolStudent;
Select Student_Name from Student where Student_Name not in (select Student_Name from HighSchoolStudent);
Select Student_Name from Student where Student_Name in (select Student_Name from HighSchoolStudent);