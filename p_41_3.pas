{ p_41_3 - ��⡮��� 祬������ }
program p_41_3;

const cSize = 4;

type tAces = array[1..cSize] of integer;
     tNames = array[1..cSize] of string;

var aces: tAces;
    names: tNames;

procedure BubbleSort2(var arg1: tAces; var arg2: tNames);
var i, j, t: integer;
    s: string;
begin
    for i:=1 to cSize-1 do
        for j:=1 to cSize-i do
            if arg1[j]<arg1[j+1] then begin
                t := arg1[j];
                arg1[j] := arg1[j+1];
                arg1[j+1] := t;

                s := arg2[j];
                arg2[j] := arg2[j+1];
                arg2[j+1] := s;
            end;
end;

function FunctionName(): Integer;
begin
    
end;



var i: integer;

begin
    for i:=1 to cSize do begin
        Write('�������� �������: ');
        Readln(names[i]);
        Write('���࠭�� �窨: ');
        Readln(aces[i]);
    end;
        
    BubbleSort2(aces, names);
    Writeln('�⮣� 祬������:');
    Writeln('����      �������       �窨');
    for i:=1 to cSize do
        Writeln(i:3, ' ':5, names[i], aces[i]:20-length(names[i]));
end.