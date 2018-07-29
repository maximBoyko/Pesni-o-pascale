(* З) Напишите булеву функцию, определяющую, является ли строка (параметр) 
палиндромом. Палиндром читается одинаково в обоих направлениях. *)

function IsPalindrom(const s : string): boolean;
var l, r : word;
begin
	l := 1;
	r := Length(s);
	IsPalindrom := true;
	while l < r do begin
		if s[l] <> s[r] then begin
			IsPalindrom := false;
			Break;
		end;
		Inc(l);
		Dec(r);
	end;
end;

var
	str : string;

begin
	str := 'pasusap';
	Write(str, ': ');
	if IsPalindrom(str)
		then Writeln('Yes')
		else Writeln('No');
end.