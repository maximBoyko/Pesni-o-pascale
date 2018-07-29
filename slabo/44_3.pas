(* �) ������ �㭪�� ��� �ਢ������ �� �㪢� � ������� ॣ�����. *)

function UpChar(aChar : char): char;
const cHighChars = '���������������������������������';
	  cLowChars = '������񦧨�����������������������';
var j : byte;
begin
	if aChar in ['a'..'z'] then
		aChar := UpCase(aChar)
	else if aChar in ['�'..'�'] then
		for j := 1 to Length(cLowChars) do
			if aChar = cLowChars[j] then
				aChar := cHighChars[j];

	UpChar := aChar;
end;

function DownChar(aChar : char): char;
const cHighChars = '���������������������������������';
	  cLowChars = '������񦧨�����������������������';
var j : byte;
begin
	if aChar in ['A'..'Z'] then
		aChar := LowerCase(aChar)
	else if aChar in ['�'..'�'] then
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
	strRu := '��᪠�� 訪�७! (� � � �)';
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