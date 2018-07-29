(* В) На основе первого варианта директорской программы придумайте способ
поиска учеников, записавшихся более чем в один кружок. *)

const cMax = 20;                { мощность множества, реально 250}
type tSet = set of 1..cMax;     { объявление типа "множество" }

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

var r, s1, s2, s3: tSet;
	s: tSet;
    fileIn, fileOut: text;

{----- Главная программа -----}
begin
    { Открытие выходного файла }
    Assign(fileIn, '37_3_in.txt');
    Reset(fileIn);
    { Создание выходного файла }
    Assign(fileOut, '37_3_out.txt');
    Rewrite(fileOut);
    { Ввод множеств из входного файла }
    s1 := [];   ReadSet(fileIn, s1);
    s2 := [];   ReadSet(fileIn, s2);
    s3 := [];   ReadSet(fileIn, s3);
    s := s1 * s2;
    s := s + s2 * s3;
    s := s + s1 * s3;
    { Решение }
    r := [1..255] - (s1+s2+s3);
    { Вывод решения в выходной файл }
    WriteSet(fileOut, r);
    WriteSet(fileOut, s);
    Close(fileIn);
    Close(fileOut);
end.