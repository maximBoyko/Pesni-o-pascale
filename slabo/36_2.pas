(* �) �����⠩� 20 ��砩��� �ᥫ � ��������� �� 1 �� 50 ⠪, �⮡� ������
�᫮ ����⨫��� � �ᯥ�⪥ ���� �� ࠧ�. ���᪠���: ��᫥ �����樨 �᫠
�㭪樥� Random �஢���� ��� �� �宦����� � ������⢮ 㦥 �����⠭���
�ᥫ. *)
var i: byte;
	nums: set of byte;
	num: byte;

begin
	nums := [];
	i := 1;
	repeat
		num := 1 + Random(10);
		if not (num in nums) then begin
			nums := nums + [num];
			Writeln(num);
			Inc(i);
		end;
	until i=10;
end.