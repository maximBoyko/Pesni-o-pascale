(* �) ��ନ��� �� ������⢠ �� ����ᠬ ��⮬������ - ��⮡���,
��㧮���� � �������誨. ���᫨� ������⢮ ��設 ������� ����� *)

type tSet = set of byte;

function NumberOfElements(const aSet: tSet): byte;
var cnt, i: byte;
begin
	cnt := 0;
	for i:=0 to 255 do
		if i in aSet
			then Inc(cnt);
	NumberOfElements := cnt;
end;

var c1, c2, c3, s: tSet;
	col1, col2, col3, col4: tSet;
	i, cnt: byte;

begin
	c1:=[]; c2:=[]; c3:=[];

	{���}
	for i:=0 to 255 do begin
		if (i mod 7) = 0			{��⮡���}
			then c1 := c1 + [i]
		else if (i mod 5) = 0		{��㧮����}
			then c2 := c2 + [i]
		else 						{�������}
			c3 := c3 + [i];
	end;

	col1:=[]; col2:=[]; col3:=[]; col4:=[];
	{梥�}
	for i:=0 to 255 do begin
		if (i mod 4) = 0			{����}
			then col1 := col1 + [i]
		else if (i mod 3) = 0		{�����}
			then col2 := col2 + [i]
		else if (i mod 2) = 0		{����}
			then col3 := col3 + [i]
		else
			col4 := col4 + [i];		{���}
	end;

	cnt := 0;
	s := [];

	s := c3*col1 + c2*col3 + c1;
	Writeln(NumberOfElements(c3*col1));
	Writeln(NumberOfElements(c2*col3));
	Writeln(NumberOfElements(c1));

	cnt := NumberOfElements(s);
	Writeln('�ᥣ�: ', cnt);
end.
