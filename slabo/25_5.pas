(*�)  �ᮢ��襭���� �ணࠬ�� "�����-�⢥�" (����� 16) � ⥬, �⮡�
�⢥�� �࠭����� �� � �ணࠬ��, � � �⤥�쭮� ⥪�⮢�� 䠩��. �����
���짮��⥫� �ணࠬ�� ᠬ� ᬮ��� �稭��� �⢥��.*)

var
	x, rows, i: integer;
	s: string;
	f: text;

begin
	Assign(f, '25_5_answers.txt');
	Randomize; { �⮡� ��砩�� �� �� �������� }
	Reset(f);

	{ ������⢮ ��ப � 䠩�� �⢥⮢ }
	rows := 0;
	while not Eof(f) do begin
		Readln(f);
		rows := rows + 1;
	end;

	repeat
		Write('��� �����: ');
		Readln(s);

		if s='' then Break;		{ �����襭�� 横��, �᫨ S='' }
		x:= 1+Random(rows);
		Reset(f);
		for i:=1 to x do
			Readln(f, s);
		Writeln(s);				{ ����� �⢥� }
	until false;				{ ��᪮���� 横� }

	Close(f);
end.
