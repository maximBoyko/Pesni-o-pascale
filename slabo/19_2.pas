(*Напишите и испытайте процедуру (назовем ее Line - линия), 
печатающую строку заданной длины, составленную из звездочек*)

procedure Line(number : integer);
var i : integer;
begin
	for i:=1 to number do
		Write('*');
	Writeln;
end;

begin
	Line(3);
	Line(7);
end.