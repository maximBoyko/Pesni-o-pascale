(*������ � ���⠩� ��楤���, �ਭ������� ���
��ࠬ��� - �᫠, � �������� �� �㬬� � �� ࠧ�����. *)

var
	num1, num2 : integer;

procedure SumAndDiff(n1, n2 : integer);
begin
	Writeln(n1, '+', n2, '=', n1+n2);
	Writeln(n1, '-', n2, '=', n1-n2);
end;

begin
	Write('������ ��� �᫠: ');
	Readln(num1, num2);

	SumAndDiff(num1, num2);
end.