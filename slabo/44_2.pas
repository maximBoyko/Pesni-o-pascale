(* �) ������ �㭪�� ��� �ਢ������ �� �㪢� � ���孥�� ॣ�����
(������ � ���᪨�). ���᪠���: �ᯮ���� � ⠡��� ����஢��. *)

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
	strRu := '��᪠�� 訪�७! (� � � �)';
	Writeln(strEn);
	UpAllChars(strEn);
	Writeln(strEn);

	Writeln(strRu);
	UpAllChars(strRu);
	Writeln(strRu);
end.