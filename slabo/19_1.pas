(*������ ��� ���� ����� ��楤��� Pause, �뢮����� ᮮ�饭��
���� �� ���᪮�, ���� �� ������᪮� �몥. ��ࠬ��� �⮩ ��楤��� ������
���� �㫥��*)

procedure Pause(lang : boolean);
begin
	if lang then
		Writeln('������ Enter...')
	else
		Writeln('Press Enter...');
end;

begin
	Pause(true);
	Pause(false);
end.