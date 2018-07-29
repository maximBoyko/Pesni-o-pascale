(* Е) Вращение строки влево. Напишите процедуру для перемещения 2-го
символа на место 1-го, 3-го - на место 2-го и т.д. Первый символ должен
стать последним. *)

procedure RotateLeft(var s : string);
var
	lChar : char;

begin
	lChar := s[1];
	Delete(s, 1, 1);
	Insert(lChar, s, Length(s)+1);
end;

var
	str : string;

begin
	str := 'pascal';
	Writeln(str);
	RotateLeft(str);
	Writeln(str);
end.