(* Напишите программу, меняющую символы "А" строки на символы "Б" *)

var
user_string : string;
len, i : integer;

begin
	Write('Введите строку: ');
	Readln(user_string);

	len := Length(user_string);

	for i:=1 to len do
		if user_string[i] = 'А'
			then user_string[i] := 'Б';

	Writeln(user_string);
end.
