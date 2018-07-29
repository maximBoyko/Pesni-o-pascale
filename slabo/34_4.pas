(* Г) Пусть ваша программа распечатает все множители (кроме единицы) 
введенного пользователем целого положительного числа. *)

var num, i: word;

begin
	Write('Число: ');
	Readln(num);

	for i:=2 to (num div 2) do begin
		while (num mod i) = 0 do begin
			Write(i, ' ');
			num := num div i;
		end;
	end;
end.