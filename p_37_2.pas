{ p_37_2.pas - ���� � �뢮� �᫮���� ������⢠ }
program p_37_2;

type tSet = set of 1..255;      { ������� ⨯� "������⢮" }

{----- ��楤�� �⥭�� ������⢠ �� 䠩�� -----}
procedure ReadSet(var aFile: text; var aSet: tSet);
var k: integer;
begin
    while not Eoln(aFile) do begin  { ���� �� ����� ��ப� }
        Read(aFile, k);             { �⠥� ��।��� �᫮ }
        aSet := aSet + [k];         { � ������塞 � �������� }
    end;
    Readln(aFile);                  { ���室 �� ᫥������ ��ப� }
end;

{----- ��楤�� �뢮�� ������⢠ � 䠩� -----}
procedure WriteSet(var aFile: text; const aSet: tSet);
var k: integer;
begin
    for k:=1 to 255 do          { 横� �� �ᥬ ����⠬ ������⢠ }
        if k in aSet then       { �᫨ k �室�� � ������⢮ }
            Write(aFile, k:4);  { ���⠥� � ��ப� }
    Writeln(aFile);             { �� ����砭�� - ���室 �� ᫥������ ��ப� }
end;

{----- �ணࠬ�� ��� �஢�ન ��楤��� ����� -----}
var s1: tSet;
    f, d: text;
begin
   Assign(f, '');               { �뢮� �� �࠭ }
   Rewrite(f);
   Assign(d, '');               { ���� � ���������� }
   Reset(d);
   ReadSet(d, s1);              { ������ ������⢮ �� 䠩�� }
   WriteSet(f, s1);             { ���⠥� }
   Close(f);
   Close(d);
end.