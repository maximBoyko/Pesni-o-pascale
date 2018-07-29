(* А) Напишите программу для преобразования второго варианта базы данных
"Police.txt" (с несколькими числами в строке) в первый вариант (по одному числу
в строке). *)

var fIn, fOut: text;
	num: integer;

begin
	Assign(fIn, 'police.txt');
	Assign(fOut, 'police2.txt');
	Reset(fIn);
	Rewrite(fOut);

	while not Eof(fIn) do begin
		Read(fIn, num);
		Writeln(fOut, num);
	end;

	Close(fIn);
	Close(fOut);
end.