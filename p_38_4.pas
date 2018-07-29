{ p_38_4.pas - решето Эратосфена }
program p_38_4;

var simples: set of byte;       { множество чисел }
    n, m: integer;
    f: text;

begin
    Assign(f, '');
    Rewrite(f);

    simples := [2..255];        { сначала множество полное }
    { цикл вычеркивания составных чисел }
    for n:=2 to (255 div 2) do begin
        { если число ещё не вычеркнуто }
        if n in simples then
            { проверяем на кратность ему все последующие }
            for m:=2*n to 255 do
                { если остаток (m/n) равен нулю, то m - составное }
                if (m mod n) = 0
                    { и его надо вычеркнуть из множества }
                    then simples := simples - [m];
    end;
    { распечатка множества простых чисел }
    for n:=2 to 255 do
        if n in simples then Writeln(f, n);

    Close(f);
end.