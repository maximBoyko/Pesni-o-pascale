(* Л) В строке найти возрастающую последовательность символов
наибольшей длины (сравнивайте коды символов). *)

function MaxSeq(const arg : string): string;
var
	maxS, currS : string;
	len, i : word;
begin
	len := Length(s);
	maxS := '';
	currS := '';

	for i := 1 to len - 1 do begin
		if Length(currS) = 0 then
			currS := currS + s[i];
		if Ord(s[i + 1]) > Ord(s[i]) then
			currS := currS + s[i + 1]
		else if (Ord(s[i + 1]) < Ord(s[i])) then begin
			if (Length(currS) > Length(maxS)) then
				maxS := currS;
			currS := '';
		end;
	end;

	if Length(currS) > Length(maxS) then
		maxS := currS
	else if Length(maxS) = 1 then
		maxS := '';

	MaxSeq := maxS;
end;

// var
	// str : string;

begin
	// str := 'pasbyzcal';
	// str := 'aababcabcdaxy';	
	// Writeln(MaxSeq(str));
	Writeln(MaxSeq('1234123123')); 
	Writeln(MaxSeq('1231230246')); 
	Writeln(MaxSeq('98123456345')); 
	Writeln(MaxSeq('321'));
end.