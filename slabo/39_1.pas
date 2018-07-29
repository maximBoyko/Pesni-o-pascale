(* € *)

var a: array['a'..'z'] of integer;
	c: char;

begin
	a['s'] := 10;
	a['r'] := 10;
	c := 'd';	a[c] := 10;
	Readln(c);	a[c] := 10;
end.