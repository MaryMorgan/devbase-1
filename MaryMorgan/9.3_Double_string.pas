program Double_string;
uses crt;


var
	s, a: string;
	i, l, count: Integer;

begin
	writeln('Enter the string.');
	readln(s);

	l:= length (s);

	for i:=1 to l do 
	begin 
		write(s[i], s[i]);
	end;

	writeln();	
	
	a:= 'a';
	count:=0;
	for i:=1 to l do 
	begin 
		if (s[i] = a) then
		count:=count+1;
	end;

	writeln(count);

readln();
end.