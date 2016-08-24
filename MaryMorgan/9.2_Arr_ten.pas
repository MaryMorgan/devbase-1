program Arr_ten;

var
	a: array [1..10] of integer;
	i:integer;

begin

	for i:=1 to 10 do 
	begin 
		writeln('Enter the number');
		readln(a[i]);
	end;

	writeln();

	for i:=10 downto 1 do
	begin
		writeln(a[i]);
	end;

	writeln();

	for i:=10 downto 1 do
	begin
		if (a[i] mod 2 <> 0) then
		begin
			writeln(a[i]);
		end;
	end;

	writeln();

	for i:=1 to 10 do 
	begin 
		write(a[i], ' ');
	end;
readln();
end.