(* �)"�� �㬠� � ᥪ㭤�� ��᮪�...". ��૨�� ����ਫ� ᥪ㭤����, 
����� �����뢠� ᥪ㭤�, ��襤訥 � ��砫� ��⮪. ����� ��� �ணࠬ��
��ॢ���� �� �᫮ � �ਢ��� ���, ������ � ᥪ㭤�. 
���᪠���: ��-�����, �ਬ���� ����樨 DIV � MOD. ��-�����, 
��६����� ��� ᥪ㭤 ���� ��� LONGINT (� �� INTEGER), ��᪮���
������⢮ ᥪ㭤 � ��⪠� (86400) �� ��������� � ⨯� INTEGER. *)

var time: longword;
	hour: byte;
	minutes: byte;
	seconds: byte;

begin
	Write('������ �६� � ᥪ. �� 0 �� 86400: ');
	Readln(time);

	hour := time div 3600;
	minutes := (time mod 3600) div 60;
	seconds := time mod 60;
	Writeln(hour, ':', minutes, ':', seconds);
end.
