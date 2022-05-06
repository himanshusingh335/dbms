DECLARE
shape VARCHAR(20):='circle';
l NUMBER(4,2):=3;
b NUMBER(4,2):=7;
radius NUMBER(1) :=3;
s NUMBER(4,2):=4;
a NUMBER(4,2);
area NUMBER(6,2);
ar NUMBER(4,2);
pi CONSTANT NUMBER(3,2):=3.14;
BEGIN
CASE
WHEN shape='square' THEN
BEGIN
ar:=s*s;
dbms_output.Put_line('Area of Square ' || ar); END;
WHEN shape='circle' THEN
BEGIN
area :=pi*radius*radius; dbms_output.Put_line('Area of a circle ' || area); END;
WHEN shape='rectangle' THEN
BEGIN
a:=l*b;
dbms_output.Put_line('Area of recatangle ' || a); END;
END CASE;
END;
