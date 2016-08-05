program multiplication_table_by_four;
uses crt;

var
a, i: integer;

begin

a:=4;

for i:=1 to 10 do
	begin
	writeln(a, ' * ', i,  ' = ', a*i);
	delay(50);
	end;

readln();
end.