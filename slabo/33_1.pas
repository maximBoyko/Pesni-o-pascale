(* �) ������ ��� �㭪樨, ���㣫��騥 ����⢥���� �᫮: 
�  �� ����襣� ���祭�� (���ਬ��: 3.1 � 4;  3.9 � 4); 
�  �� ����襣� ���祭�� (���ਬ��: 3.1 � 3;  3.9 � 3).  *)

var num: real;
	num2: integer;

begin
	Write('������ ����⢥���� �᫮: ');
	Readln(num);

	num2 := Round(num + 0.5);
	Writeln(num2);

	num2 := Round(num-0.5);
	Writeln(num2);
end.
