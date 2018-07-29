{ p_30_1 - обработка журнала, первый вариант }
program p_30_1;

var inFile, outFile: text;          { входной и выходной файлы }
    counter: integer;               { счетчик строк входного файла }

{----- Процедура обработки одной строки -----}
procedure HandleString;
var n: integer;                     { оценка, прочитанная из файла }
    cnt: integer;                   { количество оценок }
    sum: integer;                   { сумма баллов }
    rating: integer;                { средний балл }
begin
    sum := 0; cnt := 0;             { очищаем накопитель и счетчик строк }
    while not Eoln(inFile) do begin { пока не конец строки }
        Read(inFile, n);            { читаем оценку в переменную n}
        sum := sum + n;             { накапливаем сумму баллов }
        cnt := cnt + 1;             { наращиваем счетчик оценок }
    end;
    if cnt>0
        then begin                  { если оценки были }
            rating := sum div cnt;
            Writeln(outFile, counter:4, cnt:13, sum:14, rating:10);
        end
        else                        { а если оценок не было }
            Writeln(outFile, counter:4, ' Ученик не аттестован');
end;

{----- Главная программа -----}
begin
    counter := 0;                   { обнуляем счетчие строк }
    { открываем входной файл }
    Assign(inFile, 'p_30_1.in');
    Reset(inFile);
    { создаем выходной файл }
    Assign(outFile, 'p_30_1.out');
    Rewrite(outFile);
    { выводим шапку таблицы }
    Writeln(outFile, ' Номер     Количество      Сумма      Средний');
    Writeln(outFile, 'ученика      оценок        баллов      балл');
    { пока не конец входного файла }
    while not Eof(inFile) do begin
        counter := counter + 1;     { наращиваем счетчик строк }
        HandleString;               { обрабатываем строку }
        Readln(inFile);             { переход на следующую строку }
    end;
    { закрываем оба файла }
    Close(inFile);
    Close(outFile);
end.
