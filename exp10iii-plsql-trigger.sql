declare
v_sum number := 10;
v_divide number := 0;
v_result number;
begin
v_result := v_sum / v_divide; dbms_output.put_line('v_result: '||v_result);
exception
when zero_divide then dbms_output.put_line('DIVIDING BY ZERO: '||sqlerrm); end;