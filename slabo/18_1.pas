(* ������ �ணࠬ�� ��� ������ �㪢 "�"
�� ��������� ���짮��⥫�� ��ப�*)

var
user_string : string;
count_A, len, i : integer;

begin
	Write('������ ��ப�: ');
	Readln(user_string);

	count_A := 0;
	len := Length(user_string);

	for i:=1 to len do
		if (user_string[i] = '�') or (user_string[i] = '�')
			then count_A := count_A + 1;

	Writeln(count_A);
end.
