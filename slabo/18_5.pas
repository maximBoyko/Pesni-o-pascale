(*����� ��� �ணࠬ�� �����⠥� ��������� ���짮��⥫�� ��ப�
�ࠧ�浪�, �������� �����ન����� ���� �஡�� ��᫥ ������� ᨬ����, 
���ਬ��: "Pascal" �८�ࠧ�� � "P_a_s_c_a_l".*)
var
inp, out : string;
len, i: integer;

begin
	Write('������ ��ப�: ');
	Readln(inp);

	len := Length(inp);
	out := '';
	
	for i:=1 to len do begin
		out := out + inp[i];
		if (i >= 1) and (i < len) then
			out := out + '_';
	end;

	Writeln(out);
end.
