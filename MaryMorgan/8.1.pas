program prog_8_1_Yolka;

var
	strIndex, NSpace, NYolka, N, i, j: integer;

begin
	writeln('Enter the number: ');
	readln(N);

	writeln(); //1
	NSpace:=0;
	NYolka:=2*n-1;
	for strIndex:=1 to N do 
	begin
		for i:=1 to NSpace do
			write(' ');

		for j:=1 to NYolka do
			write('v');			

		NSpace:=NSpace+1;
		NYolka:=NYolka-2;
		writeln();		
	end;

	writeln(); //2
	NYolka:=1;
	for strIndex:=1 to N do 
	begin
		for j:=1 to NYolka do
			write('^');			

		NYolka:=NYolka+2;
		writeln();		
	end;

writeln(); //3
	NSpace:=2*n-2;
	NYolka:=1;
	for strIndex:=1 to N do 
	begin
		for i:=1 to NSpace do
			write(' ');

		for j:=1 to NYolka do
			write('^');			

		NSpace:=NSpace-2;
		NYolka:=NYolka+2;
		writeln();		
	end;

writeln(); //4
	NSpace:=0;
	NYolka:=2*n-1;
	for strIndex:=1 to N do 
	begin
		for i:=1 to NSpace do
			write(' ');

		for j:=1 to NYolka do
			write('v');			

		NSpace:=NSpace+2;
		NYolka:=NYolka-2;
		writeln();		
	end;

writeln(); //5
	NYolka:=2*n-1;
	for strIndex:=1 to N do 
	begin
		for j:=1 to NYolka do
			write('v');			

		NYolka:=NYolka-2;
		writeln();		
	end;
readln();
end.