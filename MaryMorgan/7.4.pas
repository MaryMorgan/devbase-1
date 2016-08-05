program prog_7_4_Prime_number;

var
	N, i, c: integer;

begin
	writeln('Enter the number: ');
	readln (N);
	c:=0;

	if N<2 then 
	begin 
		writeln('Invalid date'); 
		readln();
		exit;
	end
	else 
		if N<3 then
			writeln('It is a prime number.');
		
	for i:= 2 to (N div 2) do 
 		if ((N mod i)=0) then
 			c:=c+1;

 	if c>0 then
 		writeln('It is a composite number.')
	else
		writeln('It is a prime number.');

readln();
end.	