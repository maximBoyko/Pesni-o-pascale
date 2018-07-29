var
S : string;
len, i : integer;

begin
	Write('Введите строку: ');
	Readln(S);

	len := Length(S);

	// for i:=1 to len do
	// 	S := S + S[i];

	for i:=len downto 1 do
		S := S + S[i];

	Writeln(S);
end.
