{ p_37_2.pas - ввод и вывод числового множества }
program p_37_2;

type tSet = set of 1..255;      { объявление типа "множество" }

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

{----- Программа для проверки процедуры ввода -----}
var s1: tSet;
    f, d: text;
begin
   Assign(f, '');               { вывод на экран }
   Rewrite(f);
   Assign(d, '');               { ввод с клавиатуры }
   Reset(d);
   ReadSet(d, s1);              { вводим множество из файла }
   WriteSet(f, s1);             { печатаем }
   Close(f);
   Close(d);
end.