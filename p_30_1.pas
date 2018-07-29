{ p_30_1 - ��ࠡ�⪠ ��ୠ��, ���� ��ਠ�� }
program p_30_1;

var inFile, outFile: text;          { �室��� � ��室��� 䠩�� }
    counter: integer;               { ���稪 ��ப �室���� 䠩�� }

{----- ��楤�� ��ࠡ�⪨ ����� ��ப� -----}
procedure HandleString;
var n: integer;                     { �業��, ���⠭��� �� 䠩�� }
    cnt: integer;                   { ������⢮ �業�� }
    sum: integer;                   { �㬬� ������ }
    rating: integer;                { �।��� ���� }
begin
    sum := 0; cnt := 0;             { ��頥� ������⥫� � ���稪 ��ப }
    while not Eoln(inFile) do begin { ���� �� ����� ��ப� }
        Read(inFile, n);            { �⠥� �業�� � ��६����� n}
        sum := sum + n;             { ����������� �㬬� ������ }
        cnt := cnt + 1;             { ���騢��� ���稪 �業�� }
    end;
    if cnt>0
        then begin                  { �᫨ �業�� �뫨 }
            rating := sum div cnt;
            Writeln(outFile, counter:4, cnt:13, sum:14, rating:10);
        end
        else                        { � �᫨ �業�� �� �뫮 }
            Writeln(outFile, counter:4, ' �祭�� �� ����⮢��');
end;

{----- ������� �ணࠬ�� -----}
begin
    counter := 0;                   { ����塞 ���稥 ��ப }
    { ���뢠�� �室��� 䠩� }
    Assign(inFile, 'p_30_1.in');
    Reset(inFile);
    { ᮧ���� ��室��� 䠩� }
    Assign(outFile, 'p_30_1.out');
    Rewrite(outFile);
    { �뢮��� 蠯�� ⠡���� }
    Writeln(outFile, ' �����     ������⢮      �㬬�      �।���');
    Writeln(outFile, '�祭���      �業��        ������      ����');
    { ���� �� ����� �室���� 䠩�� }
    while not Eof(inFile) do begin
        counter := counter + 1;     { ���騢��� ���稪 ��ப }
        HandleString;               { ��ࠡ��뢠�� ��ப� }
        Readln(inFile);             { ���室 �� ᫥������ ��ப� }
    end;
    { ����뢠�� ��� 䠩�� }
    Close(inFile);
    Close(outFile);
end.
