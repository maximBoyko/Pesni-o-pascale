(* Д) Вращение строки вправо. Напишите процедуру, перемещающую 1-й
символ строки на место 2-го, 2-й - на место 3-го и т.д. Последний
символ должен занять 1-е место. Примените средства обработки строк. *)

procedure RotateRight(var s : string);
var
	rChar : char;
	len : word;

begin
	len := Length(s);
	rChar := s[len];
	Delete(s, len, 1);
	Insert(rChar, s, 1);
end;

var
	str : string;

begin
	str := 'pascal';
	Writeln(str);
	RotateRight(str);
	Writeln(str);
end.