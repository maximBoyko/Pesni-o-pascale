(*� 17-� ����� ���� ᮧ��� ��������, �஢����騩 ������ ⠡����
㬭������. ���ࠡ�⠩� �ணࠬ�� P_17_1 ⠪, �⮡� �業�� ���⠢�﫠�� �
��楤��, �ਭ����饩 ���� ��ࠬ��� - ������⢮ ����饭��� �訡��.*)

var  A, B, C : integer;  { ᮬ����⥫� � �ந�������� }
	 Q, E : integer; { ���稪 ����ᮢ � ���稪 �訡�� }

procedure GetRating(err: integer);
var  S: string;
begin
	case err of	{ ���⠢�塞 �業�� }
		0:		S:='�⫨筮!';
		1,2:	S:='����';
		3..5:	S:='������⢮�⥫쭮';
		else	S:='���!';
	end;

	Writeln(S);
end;

begin
	Randomize;
	E:= 0; { ����塞 ���稪� �訡�� }

	for Q:= 1 to 15 do begin  { 15 ����ᮢ }
		A:= 1+ Random(10);
		B:= 1+ Random(10);

		Write(Q,') ����쪮 �㤥� ', A,' x ',B, ' ? ');
		Readln(C);

		{ �᫨ �⢥� ������, 㢥��稢��� ���稪 �訡�� }
		if A*B <> C then
			E:= E+1;
	end;

	GetRating(E);	
end.