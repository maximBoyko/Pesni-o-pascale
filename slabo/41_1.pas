(* �) ������ �ணࠬ�� ��� ���஢�� 䠬���� �祭���� � ��䠢�⭮�
���浪� (䠬���� ������� �� 䠩��). �ணࠬ�� ������ ���஢��� �� ��� ��
�����⠭��, ⠪ � �� �뢠��� 䠬����, - �� �롮� ���짮��⥫�. *)


const fileName = '41_1_in.txt';
	  cMax = 50;

type  tList = array[1..cMax] of string;

{�⥭�� �� 䠩�� � ���ᨢ}
procedure ReadFromFile(var aFile: text; var aArray: tList; var size: byte);
begin
	size := 0;
	while not Eof(aFile) do begin
		if not Eoln(aFile) then begin
			Inc(size);
			Read(aFile, aArray[size]);
		end
		else
			Readln(aFile);
	end;
end;

{���஢�� ���ᨢ� �� �����⠭��}
procedure SortInAscending(var aArray: tList; size: byte);
var temp: string;
	i, j: byte;
begin
	for i:=1 to size-1 do
		for j:=1 to size-i do
			if aArray[j]>aArray[j+1] then begin
				temp := aArray[j];
				aArray[j] := aArray[j+1];
				aArray[j+1]:= temp;
			end;
end;

{���஢�� ���ᨢ� �� �뢠���}
procedure SortInDecreasing(var aArray: tList; size: byte);
var temp: string;
	i, j: byte;
begin
	for i:=1 to size-1 do
		for j:=1 to size-i do
			if aArray[j]<aArray[j+1] then begin
				temp := aArray[j];
				aArray[j] := aArray[j+1];
				aArray[j+1]:= temp;
			end;
end;

{�뢮� ���ᨢ� �� �࠭}
procedure PrintList(const aArray: tList; size: byte);
var i: byte;
begin
	for i:=1 to size do
		Writeln(aArray[i]);
end;


var   inFile: text;
	  choice, listSize: byte;
	  nameList: tList;

begin
	Assign(inFile, fileName);
	{$I-}
	Reset(inFile);
	{$I+}
	if IOResult<>0 then begin
		Writeln('�訡�� ������ 䠩��');
		Exit;
	end;

	ReadFromFile(inFile, nameList, listSize);
	Writeln(listSize);

	Writeln('����஢��');
	Writeln('1-�� �����⠭��');
	Writeln('2-�� �뢠���');
	Readln(choice);

	case choice of
		1: SortInAscending(nameList, listSize);		{�� �����⠭��}
		2: SortInDecreasing(nameList, listSize);	{�� �뢠���}
		else Writeln('������ �롮�');
	end;

	PrintList(nameList, listSize);

	Close(inFile);
end.