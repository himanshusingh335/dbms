create table Accounts3(Account_id varchar(5), Name varchar(20), Bal number(11,2)); 
insert into Accounts3 values ('AC001','Anuj',400);
insert into Accounts3 values ('AC002','Robert',10000); 
insert into Accounts3 values ('AC003','Mita',500); 
insert into Accounts3 values ('AC004','Sunita',15000);
insert into Accounts3 values ('AC005','Melba',10000); 
SELECT * FROM accounts3;
Create table temp (Account_id varchar(5), Balance number(11,2), Comments varchar2(20));
DECLARE
acct_balance NUMBER(11,2);
acct varchar(5) := 'AC001';
debit_amt CONSTANT NUMBER(5,2) := 500.00; 
BEGIN
SELECT Bal INTO acct_balance FROM Accounts3 WHERE Account_id = acct
FOR UPDATE OF bal;
IF acct_balance >= debit_amt THEN
UPDATE Accounts3 SET Bal = Bal - debit_amt WHERE Account_id = acct;
ELSE
INSERT INTO temp VALUES
(acct, acct_balance, 'insufficient funds');
-- insert account, current balance, and message END IF;
COMMIT;
END;
/
SELECT * from Accounts3; 
SELECT * from temp;