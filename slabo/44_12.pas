(* М) Напишите булеву функцию, проверяющую, следуют ли символы строки
по неубыванию своих кодов. *)

function IsOrdered(const s : string): boolean;
var
	i, len : word;
	lastChar, currChar : byte;
begin
	IsOrdered := true;
	len := Length(s);
	lastChar := Ord(s[1]);

	for i := 2 to len do begin
		currChar := Ord(s[i]);
		if lastChar > currChar then begin
			IsOrdered := false;
			Break;
		end;
	end;
end;


begin
	Writeln(IsOrdered('1248')); 
	Writeln(IsOrdered('1240')); 
	Writeln(IsOrdered('111223'));
	Writeln(IsOrdered('5111223'));
end.