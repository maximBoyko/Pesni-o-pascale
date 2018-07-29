(* Д *)
{0000-9999}

const cMax = 10000;

var l, r, m: word;
	answer: char;

begin
	l := 0; r := cMax;
	repeat
		m := (l+r) div 2;
		Writeln(l, ' ', r);
		Write('Код больше ', m, '? ');
		Readln(answer);

		if answer='y' then
			l := m+1
		else if answer='n' then
			r := m;

		if (r-l)<1 then begin
			Writeln('Код - ', l);
			Writeln(l, ' ', r);
			Break;
		end;
	until l>r;
end.