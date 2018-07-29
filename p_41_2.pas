{ p_41_2 - Пиратская делёжка по справедливости }
program p_41_2;

const cSize = 16;           { размер массива слитков }

type tGolds = array[1..cSize] of integer;

var golds: tGolds;

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
        golds[i] := 500+Random(500);
    BubbleSort(golds);
    Writeln('По справедливости:');
    for i:=1 to (cSize div 2) do begin
        Write(i:2, golds[i]:5, ' + ', golds[cSize+1-i]:3, ' = ');
        Writeln(golds[i]+golds[cSize+1-i]:4);
    end;
end.