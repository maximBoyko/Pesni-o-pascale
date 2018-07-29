{ p_18_2 - распечатка отдельных символов строки, краткий вариант }
program p_18_2;

var S : string;
	k : integer;

begin
	repeat
		Write('Введите строку: ');
		Readln(S);
		for k:=1 to Length(S) do Writeln(S[k]);
	until Length(S)=0;
end.
