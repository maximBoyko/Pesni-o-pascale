{ p_29_2 - ����楩᪠� ���� ������, ����� 2 }
program p_29_2;

function FindNumber(var aFile: text; aNumber: integer): boolean;
var n: integer;             { ⥪�騩 ����� � �� }
begin
    FindNumber := false;    { �� ��砩, �᫨ 䠩� ���� }
    Reset(aFile);           { ������ �⥭�� ��⠭�������� � ��砫� 䠩�� }
    n := 0;                 { � ��砫� 横�� ������ ���������騩 ����� }
    { �⠥� ����� �� 䠩��, ���� �� ����� 䠩�� � ����� �� ������ }
    while not Eof(aFile) and (n<>aNumber) do begin
        Read(aFile, n);
        FindNumber := (n=aNumber);    { true, �᫨ ����� ��襫�� }
    end;
end;

var f: text;
    num: integer;

{----- ������� �ணࠬ�� -----}
begin
    Assign(f, 'police.txt');
    repeat
        Write('������ ����� ��⮬�����: ');
        Readln(num);
        if FindNumber(f, num)
            then Writeln('�� ��設� � ஧�᪥, 墠⠩� ���!')    
            else Writeln('�ய���� ���');
    until num=0;            { 0 - �ਧ��� �����襭�� �ணࠬ�� }
    Close(f);
end.
