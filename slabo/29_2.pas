(* Б) Можно ли в решении предыдущей задачи назначить одно и то же
имя как входному, так и выходному файлам? Испытайте на практике. *)

var fIn, fOut: text;
	num: integer;

begin
	Assign(fIn, 'police.txt');
	Assign(fOut, 'police.txt');
	Reset(fIn);
	Rewrite(fOut);

	while not Eof(fIn) do begin
		Read(fIn, num);
		Writeln(fOut, num);
	end;

	Close(fIn);
	Close(fOut);
end.