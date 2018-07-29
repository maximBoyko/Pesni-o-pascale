(*Создайте процедуру, печатающую все числа, кроме единицы, на которые
без остатка делится число N, где N - параметр процедуры. Напишите
программу для проверки этой процедуры. *)

var num : integer;

procedure GetDividers(n : integer);
var i : integer;
begin
	for i:=2 to n div 2 do
		if n mod i = 0 then
			Write(i, ' ');
end;

begin
	Write('Введите число: ');
	Readln(num);

	GetDividers(num);
end.