(* �) ��饭�� ��ப� ��ࠢ�. ������ ��楤���, ��६������ 1-�
ᨬ��� ��ப� �� ���� 2-��, 2-� - �� ���� 3-�� � �.�. ��᫥����
ᨬ��� ������ ������ 1-� ����. �ਬ���� �।�⢠ ��ࠡ�⪨ ��ப. *)

procedure RotateRight(var s : string);
var
	rChar : char;
	len : word;

begin
	len := Length(s);
	rChar := s[len];
	Delete(s, len, 1);
	Insert(rChar, s, 1);
end;

var
	str : string;

begin
	str := 'pascal';
	Writeln(str);
	RotateRight(str);
	Writeln(str);
end.