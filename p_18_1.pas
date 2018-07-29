{ p_18_1 - распечатка отдельных символов строки }
program p_18_1;

var S : string;
	C : char;
	k, L : integer;

begin
	repeat
		Write('Введите строку: ');
		Readln(S);
		L := Length(S);	{ определяем длину строки }
		for k:=1 to L do begin
			C := S[k];	{ выбираем очередной символ }
			Writeln(C);	{ и печатаем его в отдельной строке }
		end;
	until L=0;			{ L=0, если строка пуста }
end.
