{ p_20_1 - ���� �⠯ ࠧࠡ�⪨ }
program p_10_1;

var S: string;
    k: integer; { ������쭠� ��६����� }

procedure Scan(var arg : string);
var
    k: integer; { �����쭠� ��६����� }
begin
    for k:=1 to Length(arg) do
        if arg[k]='A' then
            arg[k] := 'B';
end;

begin   {--- ������� �ணࠬ�� ---}
    for k:=1 to 3 do begin
        Write('������ ��ப�: ');
        Readln(S);
        Scan(S);
        Writeln(S);
    end;
end.
