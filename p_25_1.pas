{ p_25_1 - �ᯥ�⪠ ⥪�� �ணࠬ�� }
program p_25_1;

var f: text;		{ 䠩����� ��६����� }
	s: string;		{ ��ப� }

begin
	Assign(f, 'p_25_1.pas');	{ �����砥� ᮡ�⢥���� ��� }
	Reset(f);					{ ���뢠�� 䠩� ��� �⥭�� }
	repeat
		if Eof(f) then			{ �४����, �᫨ ����� 䠩�� }
			Break;
		Readln(f, s);			{ ������ ��ப� �� 䠩�� }
		Writeln(s);				{ �뢥�� ��ப� �� �࠭ }
	until false;
	Close(f);					{ ����뢠�� 䠩� }
end.
