{ p_38_2.pas - подвиг контрразведчика }
program p_38_2;

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

var p, a, b, c, d, e, f, g, h: tSet;
    fileIn, fileOut: text;

{----- Главная программа -----}
begin
    { Открытие выходного файла }
    Assign(fileIn, 'p_38_2_in.txt');
    Reset(fileIn);
    { Создание выходного файла }
    Assign(fileOut, '');
    Rewrite(fileOut);

    { очищаем перед вводом }
    a := [];    b := [];    c := [];    d := [];
    e := [];    f := [];    g := [];    h := [];
    p := [];

    ReadSet(fileIn, a);
    ReadSet(fileIn, b);
    ReadSet(fileIn, c);
    ReadSet(fileIn, d);
    ReadSet(fileIn, e);
    ReadSet(fileIn, f);
    ReadSet(fileIn, g);
    ReadSet(fileIn, h);

    { Решение }
    p := a*d*g*h;
    p := p-b-c-e-f;
    { Вывод решения в выходной файл }
    WriteSet(fileOut, p);

    Close(fileIn);
    Close(fileOut);
end.