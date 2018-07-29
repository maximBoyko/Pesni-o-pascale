{ p_37_1.pas - вывод множества в файл }
program p_37_1;

type tSet = set of 1..255;      { объявление типа "множество" }

{----- Процедура вывода множества в файл -----}
procedure WriteSet(var aFile: text; const aSet: tSet);
var k: integer;
begin
    for k:=1 to 255 do          { цикл по всем элементам множества }
        if k in aSet then       { если k входит в множество }
            Write(aFile, k:4);  { печатаем в строке }
    Writeln(aFile);             { по окончании - переход на следующую строку }
end;

{----- Программа для проверки процедуры WriteSet -----}
var s1: tSet;
    f: text;
begin
   Assign(f, '');               { связываем файл с экраном }
   Rewrite(f);
   s1 := [3, 10, 25];           { значение множества }
   WriteSet(f, s1);             { печатаем }
   Close(f);
end.