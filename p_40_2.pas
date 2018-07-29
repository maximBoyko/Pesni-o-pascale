{ p_40_2 - ����楩᪠� ���� ������ � �ਬ������� ���ᨢ� }
program p_40_2;

const cNumbers = 1000;      { ࠧ��� ���ᨢ� � ����ࠬ� ��⮬������ }

type  tNumbers = array[1..cNumbers] of integer;

var   numbers: tNumbers;    { ���ᨢ ����஢ }
      fact: integer;        { 䠪��᪮� ������⢮ ����஢ � 䠩�� }
      f: text;              { 䠩� � ����ࠬ� }
      num: integer;         { ����� �஢��塞��� ��⮬����� }

{ ��楤�� ����� ����஢ �� 䠩�� }
procedure ReadFromFile(var aFile: text);
var i: integer;
begin
    fact := 0;

    for i:=1 to cNumbers do begin
        while Eoln(aFile) do
            if Eof(aFile) then Break
            else Readln(aFile);
        if Eof(aFile) then Break;
        Read(aFile, numbers[i]);
        fact := fact + 1;
    end;
end;

{ �㭪�� ���᪠ � ���ᨢ� ����஢ ��⮬������ }
function FindNumber(aNum: integer): boolean;
var i: integer;             { ⥪�騩 ����� � �� }
begin
    FindNumber := false;    { �� ��砩, �᫨ 䠩� ���� }
    { �⠥� ����� �� 䠩��, ���� �� ����� 䠩�� � ����� �� ������ }
    for i:=1 to fact do
        if aNum=numbers[i] then begin
            FindNumber := true;
            Break;
        end;
end;

{----- ������� �ணࠬ�� -----}
begin
    Assign(f, 'p_38_2_in.txt');
    Reset(f);

    { ���� ����஢ �� 䠩�� }
    ReadFromFile(f);

    Close(f);

    {������ 横�}
    repeat
        Write('������ ����� ��⮬�����: ');
        Readln(num);
        if FindNumber(num)
            then Writeln('�� ��設� � ஧�᪥, 墠⠩� ���!')    
            else Writeln('�ய���� ���');
    until num=0;            { 0 - �ਧ��� �����襭�� �ணࠬ�� }
end.
