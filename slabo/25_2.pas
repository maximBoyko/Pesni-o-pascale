(*�) ������ �ணࠬ�� ��� �뢮�� �� �࠭ 䠩��,
��� ���ண� �������� � ����������. *)

var
	f: text;
	fileName: string;
	str: string;

begin
	Write('�������� 䠩��: ');
	Readln(fileName);
	Assign(f, fileName);
	Reset(f);
	while not Eof(f) do begin
		Readln(f, str);
		Writeln(str);
	end;
	Close(f);
end.