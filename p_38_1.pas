{ p_38_1.pas - �襭�� ��४��᪮� �����, ��ਠ�� 3 }
program p_38_1;

type tSet = set of byte;            { ������� ⨯� "������⢮" }

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

var r, s1, s2, s3, s: tSet;
    fileIn, fileOut: text;
    n: integer;                 { ��饥 �᫮ �祭���� }

{----- ������� �ணࠬ�� -----}
begin
    { ����⨥ ��室���� 䠩�� }
    Assign(fileIn, 'p_37_3_in.txt');
    Reset(fileIn);
    { �������� ��室���� 䠩�� }
    Assign(fileOut, '');
    Rewrite(fileOut);
    { �⠥� ��饥 �᫮ �祭���� }
    Readln(fileIn, n);
    { ��頥� ��। ������ }
    s1 := [];
    s2 := [];
    s3 := [];

    ReadSet(fileIn, s1);
    ReadSet(fileIn, s2);
    ReadSet(fileIn, s3);
    // ���� �� ����� 䠩��, ��ꥤ��塞 ���⭨��� ��� ��㦪��
    // while not Eof(fileIn) do
    //     ReadSet(fileIn, s);
    { ��襭�� }
    r := [1..n] - (s1+s2+s3);
    { �뢮� �襭�� � ��室��� 䠩� }
    Write('��뭨���騥: ');
    WriteSet(fileOut, r);

    { ����� � ��� ��㦪�� }
    s := [];
    s := s1*s2*s3;
    Write('������ � ��� ��㦪��: ');
    WriteSet(fileOut, s);

    { ����� � ���� ��㦪�� � �� ����� }
    s := [];
    s := (s1*s3-s2)+(s1*s2-s3)+(s2*s3-s1);
    Write('������ � ���� ��㦪�� � �� �����: ');
    WriteSet(fileOut, s);

    { ����� ⮫쪮 � ����� �� ��㦪�� }
    s := [];
    s := (s1-s2-s3)+(s2-s1-s3)+(s3-s1-s2);
    Write('������ ⮫쪮 � ����� �� ��㦪��: ');
    WriteSet(fileOut, s);

    Close(fileIn);
    Close(fileOut);
end.