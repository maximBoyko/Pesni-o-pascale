(*���짮��⥫� ������ ��ப� � ⥫�䮭�� ����஬ (⮫쪮 ����), 
������⢮ ��� ��࠭�� �������⭮. ��� �ணࠬ�� ������ ��������� �����
���ᠬ�, ࠧ�����騬� ��� �� �ਠ��, �.�. �� �� ���� ���� ᯮᮡ���: 
�  ��稭�� � ����� ���, ���ਬ�� 112-345-1; 
�  ��稭�� � ��᫥���� ���, ���ਬ�� 1-123-451.*)

var
	str, tar : string;
	len, i, n : integer;

begin
	Write('������ ⥫�䮭�� �����: ');
	Readln(str);

	len := Length((str));

	for i:=1 to len do begin
		Write(str[i]);
		if (i mod 3 = 0) and (i<>len) then
			Write('-');
	end;

	Writeln;

	// for i:=1 to len do begin
	// 	Write(str[i]);
	// 	if ((len-i) mod 3 = 0) and (i<>len) then
	// 		Write('-');
	// end;

	tar := '';
	n := 1;
	for i:=len downto 1 do begin
		tar := str[i] + tar;
		if (n mod 3 = 0) and (i>1) then
			tar := '-' + tar;
		n := n + 1;
	end;

	Writeln(tar);
end.