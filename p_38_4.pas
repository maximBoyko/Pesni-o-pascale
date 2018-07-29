{ p_38_4.pas - ��� ����䥭� }
program p_38_4;

var simples: set of byte;       { ������⢮ �ᥫ }
    n, m: integer;
    f: text;

begin
    Assign(f, '');
    Rewrite(f);

    simples := [2..255];        { ᭠砫� ������⢮ ������ }
    { 横� ���ન����� ��⠢��� �ᥫ }
    for n:=2 to (255 div 2) do begin
        { �᫨ �᫮ ��� �� ���ભ�� }
        if n in simples then
            { �஢��塞 �� ��⭮��� ��� �� ��᫥���騥 }
            for m:=2*n to 255 do
                { �᫨ ���⮪ (m/n) ࠢ�� ���, � m - ��⠢��� }
                if (m mod n) = 0
                    { � ��� ���� ���ભ��� �� ������⢠ }
                    then simples := simples - [m];
    end;
    { �ᯥ�⪠ ������⢠ ������ �ᥫ }
    for n:=2 to 255 do
        if n in simples then Writeln(f, n);

    Close(f);
end.