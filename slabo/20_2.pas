(*������� ��楤���, �������� �� �᫠, �஬� �������, �� �����
��� ���⪠ ������� �᫮ N, ��� N - ��ࠬ��� ��楤���. ������
�ணࠬ�� ��� �஢�ન �⮩ ��楤���. *)

var num : integer;

procedure GetDividers(n : integer);
var i : integer;
begin
	for i:=2 to n div 2 do
		if n mod i = 0 then
			Write(i, ' ');
end;

begin
	Write('������ �᫮: ');
	Readln(num);

	GetDividers(num);
end.