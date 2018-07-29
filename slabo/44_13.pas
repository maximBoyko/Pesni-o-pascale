(* �) ������ �㭪�� ��� ��஢���� ��ப� ���� ����⠭���� ��
ᨬ�����, �ᯮ�������� �� ������� �������: ���� ᨬ��� ������������
� ��᫥����, ��⨩ - � ���쨬 �� ���� � �.�. *)

procedure Swap(var ch1, ch2 : char);
var
	t : char;
begin
	t := ch1;
	ch1 := ch2;
	ch2 := t;
end;

function Encrypt(s : string): string;
var
	l, r : word;
begin
	l := 1;
	r := Length(s);
	while l < r do begin
		Swap(s[l], s[r]);
		l := l + 2;
		r := r - 2;
	end;

	Encrypt := s;
end;

var
	strIn, strOut : string;

begin
	strIn := 'pasgcal';
	Writeln(strIn);
	strOut := Encrypt(strIn);
	Writeln(strOut);
end.