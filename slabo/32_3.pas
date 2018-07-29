(* В) Процедура печати Writeln не способна распечатать название месяца, 
представленного в перечислении. Напишите для этого свою собственную
процедуру (объявите тип TMonth и воспользуйтесь оператором CASE). *)

type tmonth = (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dcb);

var m: tmonth;

procedure PrintMonth(m: tmonth);
begin
	case m of
			Jan: Writeln('January');
			Feb: Writeln('February');
			Mar: Writeln('March');
			Apr: Writeln('April');
			May: Writeln('May');
			Jun: Writeln('June');
			Jul: Writeln('July');
			Aug: Writeln('August');
			Sep: Writeln('September');
			Oct: Writeln('October');
			Nov: Writeln('November');
			Dcb: Writeln('December');
			else Writeln('Error');
		end;
end;

begin
	for m := Jan to Dcb do
		PrintMonth(m);
end.