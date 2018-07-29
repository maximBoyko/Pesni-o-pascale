(* �) ��楤�� ���� Writeln �� ᯮᮡ�� �ᯥ���� �������� �����, 
�।�⠢������� � ����᫥���. ������ ��� �⮣� ᢮� ᮡ�⢥����
��楤��� (���� ⨯ TMonth � ��ᯮ������ �����஬ CASE). *)

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