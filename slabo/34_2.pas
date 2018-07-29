(* Б) Напишите булеву функцию Test и программу для её демонстрации. 
Функция должна проверять, делится ли без остатка первое число на второе. *)

function Test(n1, n2: integer): boolean;
begin
	Test := (n1 mod n2) = 0;
end;

begin
	Writeln(Test(20, 4));
	Writeln(Test(21, 5));
end.
