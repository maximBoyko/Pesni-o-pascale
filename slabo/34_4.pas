(* �) ����� ��� �ணࠬ�� �ᯥ�⠥� �� �����⥫� (�஬� �������) 
���������� ���짮��⥫�� 楫��� ������⥫쭮�� �᫠. *)

var num, i: word;

begin
	Write('��᫮: ');
	Readln(num);

	for i:=2 to (num div 2) do begin
		while (num mod i) = 0 do begin
			Write(i, ' ');
			num := num div i;
		end;
	end;
end.