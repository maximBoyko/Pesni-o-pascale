(* Г) Напишите две функции, принимающие строку и возвращающие: 
· строку, в которой символы исходной строки встречаются лишь по разу и
следуют в алфавитном порядке, например "PASCAL" - "ACLPS"; 
·  то же, но порядок следования символов такой же, как в исходной строке, 
например "PASCAL" - "PASCL". *)

function Func1(const aStr: string): string;
var i: byte;
	s: set of char;
	str: string;
begin
	s := [];
	for i:=1 to Length(aStr) do
			s := s + [aStr[i]];

	str := '';
	for i:=32 to 255 do
		if Chr(i) in s then
			str := str + Chr(i);

	Func1 := str;
end;

function Func2(const aStr: string): string;
var i: byte;
	s: set of char;
	str: string;
begin
	s := [];
	str := '';
	for i:=1 to Length(aStr) do begin
		if not (aStr[i] in s) then begin
			s := s + [aStr[i]];
			str := str + aStr[i];
		end;
	end;

	Func2 := str;
end;

var str: string;

begin
	Write('Строка: ');
	Readln(str);

	Writeln(Func1(str));
	Writeln(Func2(str));
end.