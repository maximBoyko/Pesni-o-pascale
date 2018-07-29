{ p_37_1.pas - �뢮� ������⢠ � 䠩� }
program p_37_1;

type tSet = set of 1..255;      { ������� ⨯� "������⢮" }

{----- ��楤�� �뢮�� ������⢠ � 䠩� -----}
procedure WriteSet(var aFile: text; const aSet: tSet);
var k: integer;
begin
    for k:=1 to 255 do          { 横� �� �ᥬ ����⠬ ������⢠ }
        if k in aSet then       { �᫨ k �室�� � ������⢮ }
            Write(aFile, k:4);  { ���⠥� � ��ப� }
    Writeln(aFile);             { �� ����砭�� - ���室 �� ᫥������ ��ப� }
end;

{----- �ணࠬ�� ��� �஢�ન ��楤��� WriteSet -----}
var s1: tSet;
    f: text;
begin
   Assign(f, '');               { ��뢠�� 䠩� � �࠭�� }
   Rewrite(f);
   s1 := [3, 10, 25];           { ���祭�� ������⢠ }
   WriteSet(f, s1);             { ���⠥� }
   Close(f);
end.