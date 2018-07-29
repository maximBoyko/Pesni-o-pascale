{ p_20_1 - первый этап разработки }
program p_10_1;

var S: string;
    k: integer; { глобальная переменная }

procedure Scan(var arg : string);
var
    k: integer; { локальная переменная }
begin
    for k:=1 to Length(arg) do
        if arg[k]='A' then
            arg[k] := 'B';
end;

begin   {--- главная программа ---}
    for k:=1 to 3 do begin
        Write('Введите строку: ');
        Readln(S);
        Scan(S);
        Writeln(S);
    end;
end.
