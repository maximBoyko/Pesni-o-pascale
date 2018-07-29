(* Г *)

type tSet = set of char;

function CheckPass1(const aStr: string): boolean;
var s1, s2, s3: tSet;
	i, gr1, gr2, gr3, len: byte;
	ch: char;
begin
	len := Length(aStr);
	if len < 8 then
		CheckPass1 := false
	else begin
		CheckPass1 := true;
		s1:=['0'..'9']; s2:=['A'..'Z']; s3:=['a'..'z'];
		gr1 := 0; gr2 := 0; gr3 := 0;

		for i:=1 to len do begin
			ch := aStr[i];
			if ch in s1
				then Inc(gr1)
			else if ch in s2
				then Inc(gr2)
			else if ch in s3
				then Inc(gr3);
		end;

		if (gr1<2) or (gr2<2) or (gr3<2) then
			CheckPass1 := false;
	end;
end;

function CheckPass2(const aStr: string): boolean;
var len, i: byte;
	s: tSet;
begin
	len := Length(aStr);
	if len < 8 then
		CheckPass2 := false
	else begin
		CheckPass2 := true;
		s := [];
		for i:=1 to len do begin
			if aStr[i] in s then begin
				CheckPass2 := false;
				Break;
			end
			else
				s := s + [aStr[i]];
		end;
	end;
end;

function CheckPass3(const aStr: string): boolean;
var len, i: byte;
	lgr, gr: byte;
	s1, s2, s3: tSet;
begin
	len := Length(aStr);
	if len < 8 then
		CheckPass3 := false
	else begin
		CheckPass3 := true;
		lgr := 0;
		s1:=['0'..'9']; s2:=['A'..'Z']; s3:=['a'..'z'];
		for i:=1 to len do begin
			if aStr[i] in s1
				then gr := 1
			else if aStr[i] in s2
				then gr := 2
			else if aStr[i] in s3
				then gr := 3
			else
				gr := 0;

			if (gr=0) or (gr=lgr) then begin
				CheckPass3 := false;
				Break;
			end
			else
				lgr := gr;
		end;
	end;
end;

function CheckPass4(const aStr: string): boolean;
var len, i: byte;
	lgr, gr: byte;
	s, s1, s2, s3: tSet;
begin
	len := Length(aStr);
	if len < 8 then
		CheckPass4 := false
	else begin
		CheckPass4 := true;
		lgr := 0;
		s1:=['0'..'9']; s2:=['A'..'Z']; s3:=['a'..'z'];
		s:=[];
		for i:=1 to len do begin
			if aStr[i] in s1
				then gr := 1
			else if aStr[i] in s2
				then gr := 2
			else if aStr[i] in s3
				then gr := 3
			else
				gr := 0;

			if (gr=0) or (gr=lgr) or (aStr[i] in s) then begin
				CheckPass4 := false;
				Break;
			end
			else begin
				lgr := gr;
				s := s + [aStr[i]];
			end;
		end;
	end;
end;

var password: string;

begin
	Write('Пароль: ');
	Readln(password);

	Write('1) ');
	if CheckPass1(password)
		then Writeln('Да')
		else Writeln('Нет');

	Write('2) ');
	if CheckPass2(password)
		then Writeln('Да')
		else Writeln('Нет');

	Write('3) ');
	if CheckPass3(password)
		then Writeln('Да')
		else Writeln('Нет');

	Write('4) ');
	if CheckPass4(password)
		then Writeln('Да')
		else Writeln('Нет');
end.