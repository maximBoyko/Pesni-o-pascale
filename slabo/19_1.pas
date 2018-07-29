(*Напишите ещё одну версию процедуры Pause, выводящую сообщение
либо на русском, либо на английском языке. Параметр этой процедуры должен
быть булевым*)

procedure Pause(lang : boolean);
begin
	if lang then
		Writeln('Нажмите Enter...')
	else
		Writeln('Press Enter...');
end;

begin
	Pause(true);
	Pause(false);
end.