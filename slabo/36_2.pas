(* Б) Напечатайте 20 случайных чисел в диапазоне от 1 до 50 так, чтобы каждое
число встретилось в распечатке лишь по разу. Подсказка: после генерации числа
функцией Random проверьте его на вхождение в множество уже напечатанных
чисел. *)
var i: byte;
	nums: set of byte;
	num: byte;

begin
	nums := [];
	i := 1;
	repeat
		num := 1 + Random(10);
		if not (num in nums) then begin
			nums := nums + [num];
			Writeln(num);
			Inc(i);
		end;
	until i=10;
end.