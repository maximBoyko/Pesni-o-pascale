(*�) ������ �� �㭪樨 ��� ������: 
�  ��ப � 䠩��; 
�  ������� ᨬ����� � 䠩��; 
�  ��� ᨬ����� 䠩�� (䠪��᪨� ���� 䠩��). 
�㭪樨 �ਭ����� ����  ��ࠬ��� - ��뫪� �� 䠩����� ��६�����. 
������ �ணࠬ��, ��।������� 㯮����� �ࠪ���⨪� 䠩��.*)

var
	f: text;

function Lines(var f: text): integer;
var
	res: integer;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do begin
		Readln(f);
		res := res + 1;
	end;
	Lines := res;
end;

function VisChars(var f: text): integer;
var
	res: integer;
	// ch: char;
	s: string;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do	begin
		// Read(f, ch);
		// if Ord(ch) >= 32 then
		// 	res := res + 1;
		Readln(f, s);
		res := res + Length(s);
	end;
	VisChars := res;
end;

function Chars(var f: text): integer;
var
	res: integer;
	ch: char;
begin
	res := 0;
	Reset(f);
	while not Eof(f) do begin
		Read(f, ch);
		res := res + 1;
	end;
	Chars := res;
end;

begin
	Assign(f, 'text.txt');
	Writeln('��ப � 䠩��: ', Lines(f));
	Writeln('������� ᨬ����� � 䠩��: ', VisChars(f));
	Writeln('��� ᨬ����� � 䠩��: ', Chars(f));
	Close(f);
end.
