(*���⠫쮭 ࠧ���� ������ �� 㫨�, ����饩 �� N �����. ���� �
����� ����� �ᯮ������ �� ࠧ�� ��஭� 㫨��. � ��ࠢ�� 㬥
���⠫쮭 �� ���� ��譨� ࠧ ���室��� ��. ��� �ணࠬ�� ������
�������� ��᫥����⥫쭮��� ����஢, �� ����� ���� ࠧ��ᥭ� ����,
����� ���⠫쮭 ��稭��� ࠡ���: 
�  � ��ࢮ�� ����; 
�  � ��ண� ����; 
�  � N-��(� ���� ��᫥�����) ����. *)

var
	i, num, p: integer;

begin
	Write('������ ������⢮ �����: ');
	Readln(num);
	(* � ��ࢮ�� ���� *)
	// for i:=1 to num do
	// 	if i mod 2 <> 0 then
	// 		Write(i, ' ');

	// Writeln;
	// for i:=num downto 1 do
	// 	if i mod 2 = 0 then
	// 		Write(i, ' ');

	(* � ��ண� ���� *)
	// Writeln;
	// for i:=2 to num do
	// 	if i mod 2 = 0 then
	// 		Write(i, ' ');

	// Writeln;
	// for i:=num downto 1 do
	// 	if i mod 2 <> 0 then
	// 		Write(i, ' ');

	(* � num-�� ���� *)
	Writeln;
	p := num mod 2;

	for i:=num downto 1 do
		if i mod 2 = p then
			Write(i, ' ');
	Writeln;
	for i:=1 to num do
		if i mod 2 <> p then
			Write(i, ' ');

	Writeln;
end.