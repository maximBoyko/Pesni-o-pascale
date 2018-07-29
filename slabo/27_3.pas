(*�) ��� 䠩�, ��ப� ���ண� ᮤ�ঠ� ��㣫� ᪮��� (�� ����� ����
�ணࠬ�� ��� ��⥬���᪨� �몫���� - �������). ��� �ணࠬ�� ������
�ᯥ���� ��ப�, ��� ᪮��� ���⠢���� ����୮.*)

function Check(const s: string): boolean;
var brackets, i, len: integer;
begin
	brackets := 0;
	len := Length(s);
	Check := true;
	for i:=1 to len do begin
		if (s[i]=')') and (brackets > -1) then begin
			Check := false;
			Break;
		end;
		if s[i]='(' then
			brackets := brackets - 1
		else if s[i]=')' then
			brackets := brackets + 1;
	end;

	if brackets <> 0 then
		Check := false;
end;

var f: text;
	str: string;

begin
	Assign(f, '27_3.txt');
	Reset(f);

	while not Eof(f) do begin
		Readln(f, str);
		if not Check(str) then
			Writeln(str);
	end;

	Close(f);
end.
