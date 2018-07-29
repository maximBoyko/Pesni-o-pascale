(* Б) Напишите функцию, принимающую числовое множество и
возвращающую количество содержащихся в нём элементов. *)

type tSet = set of byte;

procedure ReadSet(var aFile: text; var aSet: tSet);
var num: byte;
begin
	while not Eoln(aFile) do begin
		Read(aFile, num);
		aSet := aSet + [num];
	end;
	Readln(aFile);
end;

function NumberOfElements(const aSet: tSet): byte;
var cnt, i: byte;
begin
	cnt := 0;
	for i:=1 to 255 do begin
		if i in aSet then
			Inc(cnt);
	end;
	NumberOfElements := cnt;
end;

var s: tSet;
	cnt: byte;
	fIn: text;

begin
	Assign(fIn, '');
	Reset(fIn);

	s := [];
	ReadSet(fIn, s);
	cnt := NumberOfElements(s);
	Writeln('cnt = ', cnt);
	Close(fIn);
end.