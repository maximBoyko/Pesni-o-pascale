(* �) ������ �㫥�� �㭪�� Test � �ணࠬ�� ��� �� ��������樨. 
�㭪�� ������ �஢�����, ������� �� ��� ���⪠ ��ࢮ� �᫮ �� ��஥. *)

function Test(n1, n2: integer): boolean;
begin
	Test := (n1 mod n2) = 0;
end;

begin
	Writeln(Test(20, 4));
	Writeln(Test(21, 5));
end.
