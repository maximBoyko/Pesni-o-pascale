(* �) ������ �ணࠬ�� ��� �८�ࠧ������ ��ண� ��ਠ�� ���� ������
"Police.txt" (� ��᪮�쪨�� �᫠�� � ��ப�) � ���� ��ਠ�� (�� ������ ���
� ��ப�). *)

var fIn, fOut: text;
	num: integer;

begin
	Assign(fIn, 'police.txt');
	Assign(fOut, 'police2.txt');
	Reset(fIn);
	Rewrite(fOut);

	while not Eof(fIn) do begin
		Read(fIn, num);
		Writeln(fOut, num);
	end;

	Close(fIn);
	Close(fOut);
end.