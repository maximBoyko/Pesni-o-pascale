(*�������  �  ��४����,  ���室  �蠥�,  ���室���  ��  ���  㫨��  ���
��⠭�������.  ��  �襭��  �����  �ࠪ��  ���室�  �  ���  ���  䠪��:
ᨣ��� ᢥ���  �  ��������  ���᭮  �����饣���  �࠭ᯮ��.  ������
�ணࠬ��  � ��楤�ன,  �����  �ਭ�����  �  ���⠥�  �襭��  �
����ᨬ���  ��  ��।����� � ��� ��� ��ࠬ��஢, � ������:
�  ��ࠬ��� A = true, �᫨ ���� ������; 
�  ��ࠬ��� B = true, �᫨ ��������� ���᭮ �������� �࠭ᯮ��; 
�  ��ࠬ��� C - �� �᫮, ��।����饥 �ࠪ�� ���室� ⠪: 
1 -   ������ � ���஦�� - ���뢠�� � ᢥ��� � ���᭮���; 
2 -   ������, �� ��ᯥ�� - ᬮ��� ⮫쪮 �� ᢥ���; 
3 -   ���� ���쭮�㬥� - ���� ⮫쪮 �� ����, �᫨ �� ��祬 �� �஧��; 
4 -   ���ਬ�ਬ� ���쭮�㬥� - ���� ⮫쪮 �� ����; 
5 -   ���६�� - ���� ⮫쪮 �� ����, � ⠪, �⮡� �஧��� ���᭮���; 
6 -   "�����襭��" - ����, ��ᬮ��� �� �� ��; 
7 -   ���㣠��� - ������� �� ���� �१ ��ண�, � ��� �������� ���室*)

var
	isGreen, isDanger: boolean;
	character, answer: integer;
procedure Decision(A, B: boolean; C: integer);
var ok: boolean;
begin
	ok := false;
	case C of
		1: if A and not B then ok := true;
		2: if A then ok := true;
		3: if not A and not B then ok := true;
		4: if not A then ok := true;
		5: if not A and B then ok := true;
		6: ok := true;
	end;

	if ok then
		Writeln('��३���')
	else
		Writeln('�� ��३���');
end;

begin
	Write('������: ');
	Readln(answer);
	if answer = 1 then
		isGreen := true
	else
		isGreen := false;

	Write('�࠭ᯮ��: ');
	Readln(answer);
	if answer = 1 then
		isDanger := true
	else
		isDanger := false;

	Write('��ࠪ�� (1-7): ');
	Readln(character);

	Decision(isGreen, isDanger, character);
end.