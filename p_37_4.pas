{ p_37_4.pas - решение директорской задачи, вариант 2 }
program p_37_4;

type tSet = set of byte;     { объявление типа "множество" }

{----- Процедура чтения множества из файла -----}
procedure ReadSet(var aFile: text; var aSet: tSet);
var k: integer;
begin
    while not Eoln(aFile) do begin  { пока не конец строки }
        Read(aFile, k);             { читаем очередное число }
        aSet := aSet + [k];         { и добавляем к множеству }
    end;
    Readln(aFile);                  { переход на следующую строку }
end;

{----- Процедура вывода множества в файл -----}
procedure WriteSet(var aFile: text; const aSet: tSet);
var k: integer;
begin
    for k:=1 to 255 do          { цикл по всем элементам множества }
        if k in aSet then       { если k входит в множество }
            Write(aFile, k:4);  { печатаем в строке }
    Writeln(aFile);             { по окончании - переход на следующую строку }
end;

var r, s: tSet;
    fileIn, fileOut: text;
    n: integer;             { общее число учеников }

{----- Главная программа -----}
begin
    { Открытие выходного файла }
    Assign(fileIn, 'p_37_3_in.txt');
    Reset(fileIn);
    { Создание выходного файла }
    Assign(fileOut, 'p_37_4_out.txt');
    Rewrite(fileOut);
    { читаем общее число учеников }
    Readln(fileIn, n);

    s := [];                { очищаем перед вводом }
    { пока не конец файла, объединяем участников всех кружков }
    while not Eof(fileIn) do
        ReadSet(fileIn, s);
    { Решение }
    r := [1..n] - s;
    { Вывод решения в выходной файл }
    WriteSet(fileOut, r);

    Close(fileIn);
    Close(fileOut);
end.