{ p_19_1 - �ਬ�� �ਬ������ ��楤��� }
program p_19_1;

var man : string;

procedure Pause;	{ --- ���ᠭ�� ��楤���--- }
begin
	Write('������ Enter...');
	Readln;
end;

begin 				{ ---������� �ணࠬ��--- }
	Writeln('��� ⥡� �����?');
	Readln(man);
	Writeln('��ࠢ���, ', man);
	Pause;			{ �맮� ��楤��� }
end.
