(* �) �ணࠬ�� ��� ������ �⮨���� ���㯮�. ��� ������ ���㯪�
���짮��⥫� ������ ��� ����⢨⥫��� �᫠: ��� ���㯪� � 業� �� 1 �� �
�㡫��. �ਧ��� �����襭�� ����� ������ - �㫥��� ���. �ணࠬ�� ������
�������� ����� �⮨����� � �筮���� �� ������� (��� ����� ��᫥ �窨) �
���㣫����� � ������� ��஭�. �஢���� १���� �� ��������.  *)

var weight, price, cost, sum: real;

begin
	sum := 0.0;
	repeat
		Write('���: ');
		Readln(weight);
		if weight=0.0 then Break;
		Write('���� �� 1 ��: ');
		Readln(price);

		cost := weight * price;
		sum := sum + cost;
	until false;

	sum := Round(sum * 100 + 0.5) / 100;
	Writeln('���� �⮨�����: ', sum:0:2);
end.
