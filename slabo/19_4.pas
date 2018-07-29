(*Напишите и испытайте процедуру, принимающую два
параметра - числа, и печатающую их сумму и их разность. *)

var
	num1, num2 : integer;

procedure SumAndDiff(n1, n2 : integer);
begin
	Writeln(n1, '+', n2, '=', n1+n2);
	Writeln(n1, '-', n2, '=', n1-n2);
end;

begin
	Write('Введите два числа: ');
	Readln(num1, num2);

	SumAndDiff(num1, num2);
end.