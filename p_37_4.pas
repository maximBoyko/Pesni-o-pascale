{ p_37_4.pas - �襭�� ��४��᪮� �����, ��ਠ�� 2 }
program p_37_4;

type tSet = set of byte;     { ������� ⨯� "������⢮" }

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

var r, s: tSet;
    fileIn, fileOut: text;
    n: integer;             { ��饥 �᫮ �祭���� }

{----- ������� �ணࠬ�� -----}
begin
    { ����⨥ ��室���� 䠩�� }
    Assign(fileIn, 'p_37_3_in.txt');
    Reset(fileIn);
    { �������� ��室���� 䠩�� }
    Assign(fileOut, 'p_37_4_out.txt');
    Rewrite(fileOut);
    { �⠥� ��饥 �᫮ �祭���� }
    Readln(fileIn, n);

    s := [];                { ��頥� ��। ������ }
    { ���� �� ����� 䠩��, ��ꥤ��塞 ���⭨��� ��� ��㦪�� }
    while not Eof(fileIn) do
        ReadSet(fileIn, s);
    { ��襭�� }
    r := [1..n] - s;
    { �뢮� �襭�� � ��室��� 䠩� }
    WriteSet(fileOut, r);

    Close(fileIn);
    Close(fileOut);
end.