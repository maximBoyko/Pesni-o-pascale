(*����� ⥫�䮭��� ����஢ ���筮 ᮤ�ঠ� �������⥫�� ᨬ����: 
᪮���, ���窨, �஡���, ���ਬ��: 8(123)45-67-89. �।�������, ��
���짮��⥫� �� ⠪ � ������. ����� ��� �ணࠬ�� 㤠��� �� ⠪�� ��ப� ��
ᨬ����, �஬� ���. ���ਬ��, ��᫥ ����� 㪠������� ��� ����� ���
������ ��������: 8123456789.*)
var
inp, out : string;
len, i, j : integer;

begin
	Write('������ ��ப�: ');
	Readln(inp);

	j := 0;
	len := Length(inp);
	out := '';

	for i:=1 to len do
		if (inp[i] >= '0') and (inp[i] <= '9') then begin
			out := out + inp[i];
			j := j + 1;
		end;

		// case inp[i] of
		// 	'0'..'9': begin
		// 				out := out + inp[i];
		// 				j := j + 1;
		// 			  end;
		// end;

	Writeln(out);
end.
