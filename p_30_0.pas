{ p_30_0 - �ணࠬ�� ��� ��᫥������� �㭪樨 Eoln }
program p_30_0;

var f: text;
    n: integer;

begin
    Assign(f, 'police.txt');
    Reset(f);
    while not Eof(f) do begin
        Read(f, n);                     { �⥭�� �᫠ }
        Writeln(n, ' -- ', Eoln(f));    { ����� �ਧ���� ���� ��ப� }
    end;
    Close(f);
end.
