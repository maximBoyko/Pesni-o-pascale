(* �) ������ ��� �㭪樨, �ਭ����騥 ��ப� � �������騥: 
� ��ப�, � ���ன ᨬ���� ��室��� ��ப� ��������� ���� �� ࠧ� �
᫥���� � ��䠢�⭮� ���浪�, ���ਬ�� "PASCAL" - "ACLPS"; 
�  � ��, �� ���冷� ᫥������� ᨬ����� ⠪�� ��, ��� � ��室��� ��ப�, 
���ਬ�� "PASCAL" - "PASCL". *)

function Func1(const aStr: string): string;
var i: byte;
	s: set of char;
	str: string;
begin
	s := [];
	for i:=1 to Length(aStr) do
			s := s + [aStr[i]];

	str := '';
	for i:=32 to 255 do
		if Chr(i) in s then
			str := str + Chr(i);

	Func1 := str;
end;

function Func2(const aStr: string): string;
var i: byte;
	s: set of char;
	str: string;
begin
	s := [];
	str := '';
	for i:=1 to Length(aStr) do begin
		if not (aStr[i] in s) then begin
			s := s + [aStr[i]];
			str := str + aStr[i];
		end;
	end;

	Func2 := str;
end;

var str: string;

begin
	Write('��ப�: ');
	Readln(str);

	Writeln(Func1(str));
	Writeln(Func2(str));
end.