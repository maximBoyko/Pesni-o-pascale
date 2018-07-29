{ p_19_2 - применение процедуры с параметром }
program p_19_2;

var man : string;

{ --- объявление процедуры с параметром msg --- }
procedure Pause(msg : string);
begin
	Write(msg);
	Readln;
end;

begin 				{ ---главная программа--- }
	Writeln('Как тебя зовут?');
	Readln(man);
	Writeln('Здравствуй, ', man);
	Pause('Нажмите Enter...');
	Pause('Ещё раз...');
	Pause('И ещё разок!');
end.
