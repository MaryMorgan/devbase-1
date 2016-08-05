program prog_7_3_Triangle;

var
	i, j, g, N: integer;

begin
	writeln('Enter the number: ');
	readln (N);
	for i:=1 to N do 
	begin
		for j:=i-1 to N-2 do
			write(' ');

		if i<2 then
			g:=1
		else
			g:=g+2;

		for j:=1 to g do //j больше не используется, переприсвоили.
			write('^');

		writeln();
	end;

readln();
end.