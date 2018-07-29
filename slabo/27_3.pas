(*В) Дан файл, строки которого содержат круглые скобки (это может быть
программа или математические выкладки - неважно). Ваша программа должна
распечатать строки, где скобки расставлены неверно.*)

function Check(const s: string): boolean;
var brackets, i, len: integer;
begin
	brackets := 0;
	len := Length(s);
	Check := true;
	for i:=1 to len do begin
		if (s[i]=')') and (brackets > -1) then begin
			Check := false;
			Break;
		end;
		if s[i]='(' then
			brackets := brackets - 1
		else if s[i]=')' then
			brackets := brackets + 1;
	end;

	if brackets <> 0 then
		Check := false;
end;

var f: text;
	str: string;

begin
	Assign(f, '27_3.txt');
	Reset(f);

	while not Eof(f) do begin
		Readln(f, str);
		if not Check(str) then
			Writeln(str);
	end;

	Close(f);
end.
