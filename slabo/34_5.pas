(* �) ������ �㭪�� ��� ����� 楫��� �᫠. ��� �ਭ�����
��ப�-�ਣ��襭�� � �����頥� ��������� �᫮. *)

function GetNumber(const str: string): integer;
var r: integer;
begin
	Write(str);
	Readln(r);
	GetNumber := r;
end;

var x: integer;

begin
	x := GetNumber('������ �⮨����� ���㯪� = ');
	Writeln('x = ', x);
end.