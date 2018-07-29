(* В) Напишите целочисленную функцию Division для деления
первого числа на второе без применения операции DIV. *)

function DivisionSign(n1, n2: integer): integer;
var r: integer;
	pos: boolean;
begin
	if n2 = 0
		then r := 0
		else begin
			if (n1>0) and (n2>0) then
				pos := true
			else if (n1<0) and (n2<0) then
				pos := true
			else
				pos := false;
			n1 := Abs(n1); n2 := Abs(n2);
			r := 0;
			while (n1 >= n2) do begin
				n1 := n1 - n2;
				Inc(r);
			end;
		end;
	if not pos
		then r := r * -1;
	DivisionSign := r;
end;

// function DivisionUnsign(n1, n2: word): word;
// var r: word;
// begin
// 	if n2 = 0
// 		then r := 0
// 		else begin
// 			r := 0;
// 			while (n1 >= n2) do begin
// 				n1 := n1 - n2;
// 				Inc(r);
// 			end;
// 		end;
// 	DivisionUnsign := r;
// end;

begin
	// Writeln(DivisionUnsign(20, 20));
	// Writeln(DivisionUnsign(20, 4));
	// Writeln(DivisionUnsign(21, 5));
	// Writeln(DivisionUnsign(11, 5));
	// Writeln(DivisionUnsign(14, 5));

	Writeln(DivisionSign(-20, 20));
	Writeln(DivisionSign(20, -4));
	Writeln(DivisionSign(-21, -5));
	Writeln(DivisionSign(11, 5));
	Writeln(DivisionSign(-14, 5));
end.
