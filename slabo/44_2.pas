(* Б) Напишите функцию для приведения любой буквы к верхнему регистру
(включая и русские). Подсказка: вспомните о таблице кодировки. *)

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

procedure UpAllChars(var aStr : string);
var
	i, len : word;

begin
	len := Length((aStr));

	for i := 1 to len do begin
		aStr[i] := UpChar(aStr[i]);
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

	Writeln(strRu);
	UpAllChars(strRu);
	Writeln(strRu);
end.