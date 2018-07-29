(*Пользователь вводит строку с телефонным номером (только цифры), 
количество цифр заранее неизвестно. Ваша программа должна дополнить номер
дефисами, разбивающими его на триады, т.е. по три цифры двумя способами: 
·  начиная с первых цифр, например 112-345-1; 
·  начиная с последних цифр, например 1-123-451.*)

var
	str, tar : string;
	len, i, n : integer;

begin
	Write('Введите телефонный номер: ');
	Readln(str);

	len := Length((str));

	for i:=1 to len do begin
		Write(str[i]);
		if (i mod 3 = 0) and (i<>len) then
			Write('-');
	end;

	Writeln;

	// for i:=1 to len do begin
	// 	Write(str[i]);
	// 	if ((len-i) mod 3 = 0) and (i<>len) then
	// 		Write('-');
	// end;

	tar := '';
	n := 1;
	for i:=len downto 1 do begin
		tar := str[i] + tar;
		if (n mod 3 = 0) and (i>1) then
			tar := '-' + tar;
		n := n + 1;
	end;

	Writeln(tar);
end.