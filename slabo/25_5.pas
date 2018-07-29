(*Д)  Усовершенствуйте программу "вопрос-ответ" (глава 16) с тем, чтобы
ответы хранились не в программе, а в отдельном текстовом файле. Тогда
пользователи программы сами смогут сочинять ответы.*)

var
	x, rows, i: integer;
	s: string;
	f: text;

begin
	Assign(f, '25_5_answers.txt');
	Randomize; { чтобы случайный ряд не повторялся }
	Reset(f);

	{ количество строк в файле ответов }
	rows := 0;
	while not Eof(f) do begin
		Readln(f);
		rows := rows + 1;
	end;

	repeat
		Write('Ваш вопрос: ');
		Readln(s);

		if s='' then Break;		{ завершение цикла, если S='' }
		x:= 1+Random(rows);
		Reset(f);
		for i:=1 to x do
			Readln(f, s);
		Writeln(s);				{ печать ответа }
	until false;				{ бесконечный цикл }

	Close(f);
end.
