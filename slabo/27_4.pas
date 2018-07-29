(* ƒ *)

var fIn, fOut: text;
	sigIn1, sigIn2, sigOut: char;
	str: string;
	seq: integer;

begin
	Assign(fIn, '27_4_in.txt');
	Assign(fOut, '27_4_out.txt');
	Reset(fIn);
	Rewrite(fOut);

	if not Eof(fIn) then
		Readln(fIn, str);
	sigIn1 := str[1];
	sigOut := sigIn1;
	Writeln(fOut, sigIn1, ' ', sigOut);
	seq := 1;

	while not Eof(fIn) do begin
		Readln(fIn, str);
		sigIn2 := str[1];

		if sigIn2 = sigIn1 then
			seq := seq + 1
		else
			seq := 1;

		if (seq=3) then begin
			sigOut := sigIn2;
			seq := 1;
		end;
		Writeln(fOut, sigIn2, ' ', sigOut);
		sigIn1 := sigIn2;
	end;

	Close(fIn);
	Close(fOut);
end.
