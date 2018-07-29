{ p_40_3 - Подсчет количества различных букв в файле }
program p_40_3;

type tCounts = array['a'..'z'] of integer;

var  counts: tCounts;       { массив из счетчиков букв }
     c: char;               { текущий символ файла, он же индекс счетчика }
     f: text;               { файл с текстом программы }

{----- Главная программа -----}
begin
    for c:='a' to 'z' do counts[c] := 0;

    Assign(f, 'p_40_3.pas');
    Reset(f);

    while not Eof(f) do begin
        Read(f, c);
        if c in ['a'..'z'] then
            counts[c] := counts[c] + 1;
    end;

    Close(f);

    for c:='a' to 'z' do
        Writeln(c, counts[c]:6);
end.