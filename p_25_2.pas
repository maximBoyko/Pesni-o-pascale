{ p_25_2 - �ᯥ�⪠ ⥪�� �ணࠬ�� }
program p_25_2;

var f: text;        { 䠩����� ��६����� }
    s: string;      { ��ப� }

begin
    Assign(f, 'p_25_2.pas');    { �����砥� ᮡ�⢥���� ��� }
    Reset(f);                   { ���뢠�� 䠩� ��� �⥭�� }
    while not Eof(f) do begin   { ���� �� ����� 䠩�� }
        Readln(f, s);           { ������ ��ப� �� 䠩�� }
        Writeln(s);             { �뢥�� ��ப� �� �࠭ }
    end;
    Close(f);                   { ����뢠�� 䠩� }
end.
