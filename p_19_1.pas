{ p_19_1 - пример применения процедуры }
program p_19_1;

var man : string;

procedure Pause;	{ --- описание процедуры--- }
begin
	Write('Нажмите Enter...');
	Readln;
end;

begin 				{ ---главная программа--- }
	Writeln('Как тебя зовут?');
	Readln(man);
	Writeln('Здравствуй, ', man);
	Pause;			{ вызов процедуры }
end.
