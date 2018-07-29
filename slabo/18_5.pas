(*ãáâì ¢ è  ¯à®£à ¬¬  ­ ¯¥ç â ¥â ¢¢¥¤¥­­ãî ¯®«ì§®¢ â¥«¥¬ áâà®ªã
¢à §àï¤ªã, ¤®¡ ¢«ïï ¯®¤çñàª¨¢ ­¨¥ «¨¡® ¯à®¡¥« ¯®á«¥ ª ¦¤®£® á¨¬¢®« , 
­ ¯à¨¬¥à: "Pascal" ¯à¥®¡à §ã¥â ¢ "P_a_s_c_a_l".*)
var
inp, out : string;
len, i: integer;

begin
	Write('‚¢¥¤¨â¥ áâà®ªã: ');
	Readln(inp);

	len := Length(inp);
	out := '';
	
	for i:=1 to len do begin
		out := out + inp[i];
		if (i >= 1) and (i < len) then
			out := out + '_';
	end;

	Writeln(out);
end.
