(* ������ �ணࠬ��, �������� ᨬ���� "�" ��ப� �� ᨬ���� "�" *)

var
user_string : string;
len, i : integer;

begin
	Write('������ ��ப�: ');
	Readln(user_string);

	len := Length(user_string);

	for i:=1 to len do
		if user_string[i] = '�'
			then user_string[i] := '�';

	Writeln(user_string);
end.
