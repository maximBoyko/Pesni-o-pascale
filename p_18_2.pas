{ p_18_2 - �ᯥ�⪠ �⤥���� ᨬ����� ��ப�, ��⪨� ��ਠ�� }
program p_18_2;

var S : string;
	k : integer;

begin
	repeat
		Write('������ ��ப�: ');
		Readln(S);
		for k:=1 to Length(S) do Writeln(S[k]);
	until Length(S)=0;
end.
