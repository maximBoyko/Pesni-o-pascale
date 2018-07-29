(* Д) Напишите функцию для ввода целого числа. Она принимает
строку-приглашение и возвращает введенное число. *)

function GetNumber(const str: string): integer;
var r: integer;
begin
	Write(str);
	Readln(r);
	GetNumber := r;
end;

var x: integer;

begin
	x := GetNumber('Введите стоимость покупки = ');
	Writeln('x = ', x);
end.