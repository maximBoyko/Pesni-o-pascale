(* �) ����� �� � �襭�� �।��饩 ����� �������� ���� � � ��
��� ��� �室����, ⠪ � ��室���� 䠩���? ���⠩� �� �ࠪ⨪�. *)

var fIn, fOut: text;
	num: integer;

begin
	Assign(fIn, 'police.txt');
	Assign(fOut, 'police.txt');
	Reset(fIn);
	Rewrite(fOut);

	while not Eof(fIn) do begin
		Read(fIn, num);
		Writeln(fOut, num);
	end;

	Close(fIn);
	Close(fOut);
end.