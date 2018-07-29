{ p_30_0 - программа для исследования функции Eoln }
program p_30_0;

var f: text;
    n: integer;

begin
    Assign(f, 'police.txt');
    Reset(f);
    while not Eof(f) do begin
        Read(f, n);                     { чтение числа }
        Writeln(n, ' -- ', Eoln(f));    { печать признака конца строки }
    end;
    Close(f);
end.
