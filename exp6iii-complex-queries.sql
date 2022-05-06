Create table Passenger(Pid number(2) not null primary key, Pname varchar2(20), age number(3));
insert into Passenger values(0, 'Sachin', 65);
insert into Passenger values(1, 'Rahul', 66);
insert into Passenger values(2, 'Sourav', 67);
insert into Passenger values(3, 'Anil', 69);

create table reservation(pid number(2) not null, class varchar2(50), tid number(6), foreign key (pid) references Passenger(Pid));
insert into reservation values(0, 'AC', 8200);
insert into reservation values(1, 'AC', 8201);
insert into reservation values(2, 'SC', 8201);
insert into reservation values(1, 'SC', 8204);
insert into reservation values(3, 'AC', 8202);

select Pid, Pname from Passenger where age>65 and Pid in (select pid from reservation where class='AC');