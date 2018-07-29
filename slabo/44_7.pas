(* Ж) *)
function IsLetter(c : char): boolean;
begin
	IsLetter := false;
	if (c in ['A'..'Z']) or (c in ['a'..'z']) then
		IsLetter := true;
end;

procedure WordList(const s : string);
var
	isWord : boolean;
	w : string;
	i, len : word;

begin
	isWord := false;
	w := '';
	len := Length(s);

	for i:=1 to len do begin
		if IsLetter(s[i]) then begin
			if not isWord then
				isWord := true;
			w := w + s[i];
		end
		else if isWord then begin
			isWord := false;
			Writeln(w);
			w := '';
		end
	end;
	if w <> '' then
		Writeln(w);
end;

function WordCounter(const s : string): word;
var
	isWord : boolean;
	i, len, res : word;
begin
	isWord := false;
	len := Length(s);
	res := 0;

	for i := 1 to len do begin
		if IsLetter(s[i]) then begin
			if not isWord then begin
				isWord := true;
				Inc(res);
			end
		end
		else if isWord then
			isWord := false;
	end;

	// if isWord then
	// 	Inc(res);

	WordCounter := res;
end;

function LettersCounter(const s : string): word;
var
	i, res : word;
begin
	res := 0;
	for i := 1 to Length(s) do
		if IsLetter(s[i]) then
			Inc(res);
	LettersCounter := res;
end;

function InsertSpaces(var s : string) : string;
var
	letters : word; {количество букв в строке}
	spaces : word;	{Количество необходимых пробелов}
	spaces2 : word;	{количество остаточных пробелов}
	words : word;	{количество слов в строке}
	nSpaces : word; {количество пробелов между словами}
	i, j, k : word;
	isWord : boolean;
	res : string;
begin
	letters := LettersCounter(s);
	spaces := 80 - letters;
	words := WordCounter(s);
	res := '';

	if (spaces > 0) then begin
		if (words > 1) then
			nSpaces := spaces div (words - 1)
		else
			nSpaces := spaces;

		spaces2 := spaces - nSpaces * (words - 1);
		Writeln('letters=', letters);
		Writeln('spaces=', spaces);
		Writeln('spaces2=', spaces2);
		Writeln('words=', words);
		Writeln('nSpaces=', nSpaces);

		isWord := false;
		i := 1;
		k := 1;
		while i <= 80 do begin
			{если буква}
			if IsLetter(s[k]) then begin
				{если вне слова}
				if not isWord then
					isWord := true;
				res := res + s[k];
				Inc(i);
				Inc(k);
			end
			{если не буква и в слове}
			else if isWord then begin
				isWord := false;
				for j := 1 to nSpaces do begin
					res := res + ' ';
					Inc(i);
				end;
			end
			{если не буква и вне слова}
			else begin
				res := res + s[k];
				Inc(i);
				Inc(k);
			end;
		end;
	end;

	InsertSpaces := res;
end;


var
	str : string;
	r : string;

begin
	str := 'After school I went into the army and studied astrophysics     *';
	Writeln(str);
	// WordList(str);
	// cnt := WordCounter(str);
	// Writeln('cnt = ', cnt);
	r := InsertSpaces(str);
	Writeln(r);
	Writeln(Length(r));
end.