{ p_18_1 - �ᯥ�⪠ �⤥���� ᨬ����� ��ப� }
program p_18_1;

var S : string;
	C : char;
	k, L : integer;

begin
	repeat
		Write('������ ��ப�: ');
		Readln(S);
		L := Length(S);	{ ��।��塞 ����� ��ப� }
		for k:=1 to L do begin
			C := S[k];	{ �롨ࠥ� ��।��� ᨬ��� }
			Writeln(C);	{ � ���⠥� ��� � �⤥�쭮� ��ப� }
		end;
	until L=0;			{ L=0, �᫨ ��ப� ���� }
end.
