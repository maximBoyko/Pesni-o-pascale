{ p_38_2.pas - ������ �����ࠧ���稪� }
program p_38_2;

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

var p, a, b, c, d, e, f, g, h: tSet;
    fileIn, fileOut: text;

{----- ������� �ணࠬ�� -----}
begin
    { ����⨥ ��室���� 䠩�� }
    Assign(fileIn, 'p_38_2_in.txt');
    Reset(fileIn);
    { �������� ��室���� 䠩�� }
    Assign(fileOut, '');
    Rewrite(fileOut);

    { ��頥� ��। ������ }
    a := [];    b := [];    c := [];    d := [];
    e := [];    f := [];    g := [];    h := [];
    p := [];

    ReadSet(fileIn, a);
    ReadSet(fileIn, b);
    ReadSet(fileIn, c);
    ReadSet(fileIn, d);
    ReadSet(fileIn, e);
    ReadSet(fileIn, f);
    ReadSet(fileIn, g);
    ReadSet(fileIn, h);

    { ��襭�� }
    p := a*d*g*h;
    p := p-b-c-e-f;
    { �뢮� �襭�� � ��室��� 䠩� }
    WriteSet(fileOut, p);

    Close(fileIn);
    Close(fileOut);
end.