{ p_41_1 - Сортировка массива целых чисел }
program p_41_1;

const cSize = 10;           { размер массива }

type tGolds = array[1..cSize] of integer;

var golds: tGolds;

procedure PrintArray(const aArray: tGolds; aLim: integer);
var i: integer;
begin
    for i:=1 to aLim do
        Write(aArray[i]:5);
    Writeln;
end;

procedure BubbleSort(var arg: tGolds);
var i, j, t: integer;
begin
    for i:=1 to cSize-1 do
        for j:=1 to cSize-i do
            if arg[j]>arg[j+1] then begin
                t := arg[j];
                arg[j] := arg[j+1];
                arg[j+1] := t;
            end;
end;

var i: integer;

begin
    Randomize;
    for i:=1 to cSize do
        golds[i] := 1+Random(1000);

    Writeln('До сортировки:');
    PrintArray(golds, cSize);

    BubbleSort(golds);

    Writeln('После сортировки:');
    PrintArray(golds, cSize);
end.