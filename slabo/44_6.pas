(* �) ��饭�� ��ப� �����. ������ ��楤��� ��� ��६�饭�� 2-��
ᨬ���� �� ���� 1-��, 3-�� - �� ���� 2-�� � �.�. ���� ᨬ��� ������
���� ��᫥����. *)

procedure RotateLeft(var s : string);
var
	lChar : char;

begin
	lChar := s[1];
	Delete(s, 1, 1);
	Insert(lChar, s, Length(s)+1);
end;

var
	str : string;

begin
	str := 'pascal';
	Writeln(str);
	RotateLeft(str);
	Writeln(str);
end.