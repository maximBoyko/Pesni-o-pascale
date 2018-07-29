(*В) Напишите три функции для подсчета: 
·  строк в файле; 
·  видимых символов в файле; 
·  всех символов файла (фактический объём файла). 
Функции принимают один  параметр - ссылку на файловую переменную. 
Напишите программу, определяющую упомянутые характеристики файла.*)

var
	f: text;

function Lines(var f: text): integer;
var
	res: integer;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do begin
		Readln(f);
		res := res + 1;
	end;
	Lines := res;
end;

function VisChars(var f: text): integer;
var
	res: integer;
	// ch: char;
	s: string;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do	begin
		// Read(f, ch);
		// if Ord(ch) >= 32 then
		// 	res := res + 1;
		Readln(f, s);
		res := res + Length(s);
	end;
	VisChars := res;
end;

function Chars(var f: text): integer;
var
	res: integer;
	ch: char;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do begin
		Read(f, ch);
		res := res + 1;
	end;
	Chars := res;
end;

begin
	Assign(f, 'text.txt');
	Writeln('Строк в файле: ', Lines(f));
	Writeln('Видимых символов в файле: ', VisChars(f));
	Writeln('Всех символов в файле: ', Chars(f));
	Close(f);
end.
