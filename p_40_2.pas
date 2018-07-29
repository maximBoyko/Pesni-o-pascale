{ p_40_2 - полицейская база данных с применением массива }
program p_40_2;

const cNumbers = 1000;      { размер массива с номерами автомобилей }

type  tNumbers = array[1..cNumbers] of integer;

var   numbers: tNumbers;    { массив номеров }
      fact: integer;        { фактическое количество номеров в файле }
      f: text;              { файл с номерами }
      num: integer;         { номер проверяемого автомобиля }

{ Процедура ввода номеров из файла }
procedure ReadFromFile(var aFile: text);
var i: integer;
begin
    fact := 0;

    for i:=1 to cNumbers do begin
        while Eoln(aFile) do
            if Eof(aFile) then Break
            else Readln(aFile);
        if Eof(aFile) then Break;
        Read(aFile, numbers[i]);
        fact := fact + 1;
    end;
end;

{ Функция поиска в массиве номеров автомобилей }
function FindNumber(aNum: integer): boolean;
var i: integer;             { текущий номер в БД }
begin
    FindNumber := false;    { на случай, если файл пуст }
    { читаем номера из файла, пока НЕ конец файла И номер НЕ найден }
    for i:=1 to fact do
        if aNum=numbers[i] then begin
            FindNumber := true;
            Break;
        end;
end;

{----- главная программа -----}
begin
    Assign(f, 'p_38_2_in.txt');
    Reset(f);

    { ввод номеров из файла }
    ReadFromFile(f);

    Close(f);

    {главный цикл}
    repeat
        Write('Укажите номер автомобиля: ');
        Readln(num);
        if FindNumber(num)
            then Writeln('Эта машина в розыске, хватайте его!')    
            else Writeln('Пропустите его');
    until num=0;            { 0 - признак завершения программы }
end.
