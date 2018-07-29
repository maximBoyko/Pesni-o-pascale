(*Б) Напишите программу для вывода на экран файла,
имя которого задается с клавиатуры. *)

var
	f: text;
	fileName: string;
	str: string;

begin
	Write('Название файла: ');
	Readln(fileName);
	Assign(f, fileName);
	Reset(f);
	while not Eof(f) do begin
		Readln(f, str);
		Writeln(str);
	end;
	Close(f);
end.