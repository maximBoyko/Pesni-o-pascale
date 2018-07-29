(* Напишите программу для подсчета букв "А"
во введенной пользователем строке*)

var
user_string : string;
count_A, len, i : integer;

begin
	Write('Введите строку: ');
	Readln(user_string);

	count_A := 0;
	len := Length(user_string);

	for i:=1 to len do
		if (user_string[i] = 'А') or (user_string[i] = 'а')
			then count_A := count_A + 1;

	Writeln(count_A);
end.
