{ p_38_1.pas - решение директорской задачи, вариант 3 }
program p_38_1;

type tSet = set of byte;            { объявление типа "множество" }

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

var r, s1, s2, s3, s: tSet;
    fileIn, fileOut: text;
    n: integer;                 { общее число учеников }

{----- Главная программа -----}
begin
    { Открытие выходного файла }
    Assign(fileIn, 'p_37_3_in.txt');
    Reset(fileIn);
    { Создание выходного файла }
    Assign(fileOut, '');
    Rewrite(fileOut);
    { читаем общее число учеников }
    Readln(fileIn, n);
    { очищаем перед вводом }
    s1 := [];
    s2 := [];
    s3 := [];

    ReadSet(fileIn, s1);
    ReadSet(fileIn, s2);
    ReadSet(fileIn, s3);
    // пока не конец файла, объединяем участников всех кружков
    // while not Eof(fileIn) do
    //     ReadSet(fileIn, s);
    { Решение }
    r := [1..n] - (s1+s2+s3);
    { Вывод решения в выходной файл }
    Write('Отлынивающие: ');
    WriteSet(fileOut, r);

    { состоят в трех кружках }
    s := [];
    s := s1*s2*s3;
    Write('Состоят в трех кружках: ');
    WriteSet(fileOut, s);

    { состоят в двух кружках и не более }
    s := [];
    s := (s1*s3-s2)+(s1*s2-s3)+(s2*s3-s1);
    Write('Состоят в двух кружках и не более: ');
    WriteSet(fileOut, s);

    { состоят только в одном из кружков }
    s := [];
    s := (s1-s2-s3)+(s2-s1-s3)+(s3-s1-s2);
    Write('Состоят только в одном из кружков: ');
    WriteSet(fileOut, s);

    Close(fileIn);
    Close(fileOut);
end.