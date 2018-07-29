(* В) Напишите функцию для приведения любой буквы к нижнему регистру. *)

function UpChar(aChar : char): char;
const cHighChars = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЪЫЭЮЯ';
	  cLowChars = 'абвгдеёжзийклмнопрстуфхцчшщьъыэюя';
var j : byte;
begin
	if aChar in ['a'..'z'] then
		aChar := UpCase(aChar)
	else if aChar in ['а'..'я'] then
		for j := 1 to Length(cLowChars) do
			if aChar = cLowChars[j] then
				aChar := cHighChars[j];

	UpChar := aChar;
end;

function DownChar(aChar : char): char;
const cHighChars = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЪЫЭЮЯ';
	  cLowChars = 'абвгдеёжзийклмнопрстуфхцчшщьъыэюя';
var j : byte;
begin
	if aChar in ['A'..'Z'] then
		aChar := LowerCase(aChar)
	else if aChar in ['А'..'Я'] then
		for j := 1 to Length(cHighChars) do
			if aChar = cHighChars[j] then
				aChar := cLowChars[j];

	DownChar := aChar;
end;

procedure UpAllChars(var aStr : string);
var
	i, len : word;

begin
	len := Length((aStr));

	for i := 1 to len do begin
		aStr[i] := UpChar(aStr[i]);
	end;
end;

procedure DownAllChars(var aStr : string);
var
	i, len : word;

begin
	len := Length((aStr));

	for i := 1 to len do begin
		aStr[i] := DownChar(aStr[i]);
	end;
end;


var
	strEn, strRu : string;

begin
	strEn := 'pascal is awesome!';
	strRu := 'паскаль шикарен! (а п р я)';
	Writeln(strEn);
	UpAllChars(strEn);
	Writeln(strEn);
	DownAllChars(strEn);
	Writeln(strEn);

	Writeln(strRu);
	UpAllChars(strRu);
	Writeln(strRu);
	DownAllChars(strRu);
	Writeln(strRu);
end.