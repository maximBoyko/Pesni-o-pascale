(* А) Напишите процедуры для ввода и вывода множества символов. Можно ли
здесь для счетчика цикла применить символьную переменную? *)

type tSetChars = set of char;

procedure ReadSet(var aFile: text; var s: tSetChars);
var c: char;
begin
	while not Eoln(aFile) do begin
		Read(aFile, c);
		s := s + [c];
	end;
	Readln(aFile);
end;

procedure WriteSet(var aFile: text; var s: tSetChars);
var c: char;
begin
	for c:=Chr(32) to Chr(255) do begin
		if c in s then
			Write(aFile, c:3);
	end;
	Writeln(aFile);
end;

var s: tSetChars;
	fIn, fOut: text;

begin
	Assign(fIn, '');
	Reset(fIn);
	Assign(fOut, '');
	Rewrite(fOut);

	ReadSet(fIn, s);
	WriteSet(fOut, s);

	Close(fIn);
	Close(fOut);
end.