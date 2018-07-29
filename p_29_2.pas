{ p_29_2 - полицейская база данных, версия 2 }
program p_29_2;

function FindNumber(var aFile: text; aNumber: integer): boolean;
var n: integer;             { текущий номер в БД }
begin
    FindNumber := false;    { на случай, если файл пуст }
    Reset(aFile);           { позицию чтения устанавливаем в начало файла }
    n := 0;                 { в начале цикла задаем несуществующий номер }
    { читаем номера из файла, пока НЕ конец файла И номер НЕ найден }
    while not Eof(aFile) and (n<>aNumber) do begin
        Read(aFile, n);
        FindNumber := (n=aNumber);    { true, если номер нашелся }
    end;
end;

var f: text;
    num: integer;

{----- главная программа -----}
begin
    Assign(f, 'police.txt');
    repeat
        Write('Укажите номер автомобиля: ');
        Readln(num);
        if FindNumber(f, num)
            then Writeln('Эта машина в розыске, хватайте его!')    
            else Writeln('Пропустите его');
    until num=0;            { 0 - признак завершения программы }
    Close(f);
end.
