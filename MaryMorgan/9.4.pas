program Proc_func_Double_string;

var
	s: string;

procedure writeDouble(st: string);
	var
		i, l: Integer;
	begin
		l:= length (s);

		for i:=1 to l do 
		begin 
			write(s[i], s[i]);
		end;
		writeln();	
	end;
	
function CountLetterA(st: string) : integer;
	var
		a: string;
		i, l, count: Integer;

	begin
		a:= 'a';
		count:=0;
		l:= length (s);

		for i:=1 to l do 
		begin 
			if (s[i] = a) then
			count:=count+1;
		end;
		
		CountLetterA := count;
	end;

begin
	writeln('Enter the line:');
	readln(s);

    writeln('Result:');
    writeDouble(s);

    writeln('Result:');
    writeln(CountLetterA(s));

readln();
end.