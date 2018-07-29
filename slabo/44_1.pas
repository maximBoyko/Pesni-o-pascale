(* А) Напишите процедуру, переводящую все символы строки
(латинские буквы) к верхнему регистру. *)

var
	str : string;

procedure UpAllChars(var aStr : string);
var
	i, len : word;
begin
	len := Length((aStr));
	for i := 1 to len do
		aStr[i] := UpCase(aStr[i]);
end;

begin
	str := 'pascal is awesome';
	Writeln(str);
	UpAllChars(str);
	Writeln(str);
end.