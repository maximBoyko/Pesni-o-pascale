{ p_38_3.pas - поиск стран соседей }
program p_38_3;

type tBoundSet = set of byte;           { множество границ }
     tStateSet = set of char;           { множество стран }

{----- Распечатка множества стран (символов) -----}
procedure WriteCharSet(var aFile: text; const aSet: tStateSet);
var c: char;
begin
    for c:='A' to 'Z' do
        if c in aSet then Write(aFile, c:2);
    Writeln(aFile);
end;

{----- Ввод множества границ (чисел) -----}
procedure ReadSet(var aFile: text; var aSet: tBoundSet);
var k: integer;
begin
    while not Eoln(aFile) do begin  { пока не конец строки }
        Read(aFile, k);             { читаем очередное число }
        aSet := aSet + [k];         { и добавляем к множеству }
    end;
    Readln(aFile);                  { переход на следующую строку }
end;

var fileIn, fileOut: text;
    r: tStateSet;                       { множество соседей (результат) }
    sa, s: tBoundSet;                   { границы царства "А" и прочих }
    state: char;                        { буква с названием очередной страны }

{----- Главная программа -----}
begin
    { Открытие выходного файла }
    Assign(fileIn, 'p_38_3_in.txt');
    Reset(fileIn);
    { Создание выходного файла }
    Assign(fileOut, '');
    Rewrite(fileOut);

    r := []; sa := [];
    state := 'A';
    ReadSet(fileIn, sa);
    
    while not Eof(fileIn) do begin
        s := [];
        state := Succ(state);
        ReadSet(fileIn, s);
        if s*sa<>[] then
            r := r + [state];
    end;

    WriteCharSet(fileOut, r);

    Close(fileIn);
    Close(fileOut);
end.