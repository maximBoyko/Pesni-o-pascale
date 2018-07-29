{ es - программа для удаления лишних пробелов 
в комментариях }

program es;

var fileName: string;
	f: text;
	ch0, ch1: char;
	isComment: boolean;

begin
	Assign(f, fileName);
	Reset(f);

	if not Eof(f) then
		Readln(f, ch0);
	if not Eof(f) then
		Readln(f, ch1);

	while not Eof(f) do begin
		if (ch0='(') and (ch1='*') then
			isComment := true
		else if (ch0=' ') and (ch1=' ') then
			
	end;
end;