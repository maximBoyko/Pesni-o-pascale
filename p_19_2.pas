{ p_19_2 - �ਬ������ ��楤��� � ��ࠬ��஬ }
program p_19_2;

var man : string;

{ --- ������� ��楤��� � ��ࠬ��஬ msg --- }
procedure Pause(msg : string);
begin
	Write(msg);
	Readln;
end;

begin 				{ ---������� �ணࠬ��--- }
	Writeln('��� ⥡� �����?');
	Readln(man);
	Writeln('��ࠢ���, ', man);
	Pause('������ Enter...');
	Pause('��� ࠧ...');
	Pause('� ��� ࠧ��!');
end.
