(* � *)

type tChars = set of char;

var pass: string;
	ch: char;
	len, setChars, i: byte;
	gr1, gr2, gr3, lgr: byte;
	usedChars: tChars;

begin
	Randomize;
	{1}
	for i:=1 to 10 do begin
		{����� ��஫�}
		len := 0;
		{��஫�}
		pass := '';
		{���-�� ᨬ����� ��।������� ��㯯� � ��஫�}
		gr1:=0; gr2:=0; gr3:=0;

		{������� ��஫�}
		while (len<8) or (gr1<2) or (gr2<2) or (gr3<2) do begin
			setChars := 1 + Random(3);
			case setChars of
				1:	begin
						ch := Char(97 + Random(26));	//'a'..'z'
						Inc(gr1);
					end;
				2:	begin
						ch := Char(65 + Random(26));	//'A'..'Z'
						Inc(gr2);
					end;
				3: 	begin
						ch := Char(48 + Random(10));	//'0'..'9'
						Inc(gr3);
					end;
				else ch := '*';
			end;
			pass := pass + ch;
			Inc(len);
		end;
		Writeln(i:2, ') ', len:4, pass:len+20-len);
	end;

	Writeln;
	{2}	
	for i:=1 to 10 do begin
		{�ᯮ�짮����� ᨬ����}
		usedChars := [];
		{����� ��஫�}
		len := 0;
		{��஫�}
		pass := '';
		while len<8 do begin
			setChars := 1 + Random(3);
			case setChars of
				1:	ch := Char(97 + Random(26));	//'a'..'z'
				2:	ch := Char(65 + Random(26));	//'A'..'Z'
				3: 	ch := Char(48 + Random(10));	//'0'..'9'
				else ch := '*';
			end;
			if not (ch in usedChars) then begin
				pass := pass + ch;
				usedChars := usedChars + [ch];
				Inc(len);
			end;
		end;
		Writeln(i:2, ') ', len:4, pass:len+20-len);
	end;

	Writeln;
	{3}
	for i:=1 to 10 do begin
		{����� ��஫�}
		len := 0;
		{��஫�}
		pass := '';
		{��᫥���� �ᯮ�짮������ ��㯯�}
		lgr := 0;

		while len<8 do begin
			setChars := 1 + Random(3);
			case setChars of
				1:	ch := Char(97 + Random(26));	//'a'..'z'
				2:	ch := Char(65 + Random(26));	//'A'..'Z'
				3: 	ch := Char(48 + Random(10));	//'0'..'9'
				else ch := '*';
			end;
			if setChars<>lgr then begin
				pass := pass + ch;
				lgr := setChars;
				Inc(len);
			end;
		end;
		Writeln(i:2, ') ', len:4, pass:len+20-len);
	end;

	Writeln;
	{4}
	for i:=1 to 10 do begin
		{�ᯮ�짮����� ᨬ����}
		usedChars := [];
		{��᫥���� �ᯮ�짮������ ��㯯�}
		lgr := 0;
		{����� ��஫�}
		len := 0;
		{��஫�}
		pass := '';
		while len<8 do begin
			setChars := 1 + Random(3);
			case setChars of
				1:	ch := Char(97 + Random(26));	//'a'..'z'
				2:	ch := Char(65 + Random(26));	//'A'..'Z'
				3: 	ch := Char(48 + Random(10));	//'0'..'9'
				else ch := '*';
			end;
			if not (ch in usedChars) and (setChars<>lgr) then begin
				pass := pass + ch;
				usedChars := usedChars + [ch];
				lgr := setChars;
				Inc(len);
			end;
		end;
		Writeln(i:2, ') ', len:4, pass:len+20-len);
	end;
end.
