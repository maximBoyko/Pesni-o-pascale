{ p_38_3.pas - ���� ��࠭ �ᥤ�� }
program p_38_3;

type tBoundSet = set of byte;           { ������⢮ �࠭�� }
     tStateSet = set of char;           { ������⢮ ��࠭ }

{----- ��ᯥ�⪠ ������⢠ ��࠭ (ᨬ�����) -----}
procedure WriteCharSet(var aFile: text; const aSet: tStateSet);
var c: char;
begin
    for c:='A' to 'Z' do
        if c in aSet then Write(aFile, c:2);
    Writeln(aFile);
end;

{----- ���� ������⢠ �࠭�� (�ᥫ) -----}
procedure ReadSet(var aFile: text; var aSet: tBoundSet);
var k: integer;
begin
    while not Eoln(aFile) do begin  { ���� �� ����� ��ப� }
        Read(aFile, k);             { �⠥� ��।��� �᫮ }
        aSet := aSet + [k];         { � ������塞 � �������� }
    end;
    Readln(aFile);                  { ���室 �� ᫥������ ��ப� }
end;

var fileIn, fileOut: text;
    r: tStateSet;                       { ������⢮ �ᥤ�� (१����) }
    sa, s: tBoundSet;                   { �࠭��� ���⢠ "�" � ���� }
    state: char;                        { �㪢� � ��������� ��।��� ��࠭� }

{----- ������� �ணࠬ�� -----}
begin
    { ����⨥ ��室���� 䠩�� }
    Assign(fileIn, 'p_38_3_in.txt');
    Reset(fileIn);
    { �������� ��室���� 䠩�� }
    Assign(fileOut, '');
    Rewrite(fileOut);

    r := []; sa := [];
    state := 'A';
    ReadSet(fileIn, sa);
    
    while not Eof(fileIn) do begin
        s := [];
        state := Succ(state);
        ReadSet(fileIn, s);
        if s*sa<>[] then
            r := r + [state];
    end;

    WriteCharSet(fileOut, r);

    Close(fileIn);
    Close(fileOut);
end.