(* �) �����⠩� � �६� ������� ��᫥ �窨 20 ��砩��� �ᥫ � ���������
�� 0 �� 10 ⠪, �⮡� �᫠ ᫥������ �� �����⠭��. ���᪠���: �ࠢ������
��।��� �᫮ � �।��騬. *)

var i: integer;
	lastNum, num: real;

begin
	Randomize;
	lastNum := 0.0;

	for i:=1 to 20 do begin
		repeat
			num := Random(500*i)/1000;
		until lastNum<num;
		Writeln(i, ') ', num:0:3);
		lastNum := num;
	end;
end.
