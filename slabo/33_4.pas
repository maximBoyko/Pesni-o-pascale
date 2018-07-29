(* Г) Напечатайте с тремя знаками после точки 20 случайных чисел в диапазоне
от 0 до 10 так, чтобы числа следовали по возрастанию. Подсказка: сравнивайте
очередное число с предыдущим. *)

var i: integer;
	lastNum, num: real;

begin
	Randomize;
	lastNum := 0.0;

	for i:=1 to 20 do begin
		repeat
			num := Random(500*i)/1000;
		until lastNum<num;
		Writeln(i, ') ', num:0:3);
		lastNum := num;
	end;
end.
