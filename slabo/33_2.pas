(* �) ��� ��楤�� �ਭ����� ��ப���� ��६�����, ������ �।���
��䬥��᪮� ����� �� ᨬ����� � ���⠥� ��� � ���� ��ࠬ� ��᫥ �窨.*)

var str: string;
	aver: real;
	cnt, sum, i: word;

begin
	Write('������ ��ப�: ');
	Readln(str);

	cnt := Length(str);
	sum := 0;
	
	for i:=1 to cnt do begin
		sum := sum + Ord(str[i]);
	end;

	aver := sum / cnt;
	Writeln('�।��� ����� ᨬ�����: ', aver:0:2);
end.
