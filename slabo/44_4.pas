(* Г) Напишите собственные процедуры и функции обработки строк, 
повторяющие те, что встроены в Паскаль. Дайте им названия, похожие на
стандартные, например: MyCopy, MyDelete и так далее. *)
function MyPos(subS : string; s : string) : word;
var i, j, res, lenStr, lenSub : word;

begin
	res := 0;
	lenStr := Length(s);
	lenSub := Length((subS));

	for i := 1 to (lenStr - lenSub + 1) do begin
		res := i;
		
		for j := 1 to lenSub do begin
			if s[i + j - 1] <> subS[j] then begin
				res := 0;
				Break;
			end;
		end;

		if res <> 0 then
			Break;
	end;

	MyPos := res;
end;

procedure MyInsert(const sInsert : string; var sTarget : string; index : word);
var i, lenTar : word;
	res, temp : string;
begin
	temp := '';
	res := '';
	lenTar := Length(sTarget);

	{ сохраняем остаток строки после позиции вставки }
	for i := index to lenTar do
		temp := temp + sTarget[i];

	{ накапливаем строку до позиции вставки }
	for i := 1 to index - 1 do
		res := res + sTarget[i];

	{ прибавляем к выходной строке вставляемую строку }
	res := res + sInsert;

	{ прибавляем к ней же остаток строки }
	res := res + temp;

	sTarget := res;	
end;

procedure MyDelete(var aStr : string; index, count : word);
var
	res : string;
	i : word;
begin
	res := '';
	{ накапливание части строки до удаляемой части }
	for i := 1 to index - 1 do
		res := res + aStr[i];

	{ накапливание части строки после удаляемой части }
	for i := index + count to Length(aStr) do
		res := res + aStr[i];

	aStr := res;
end;

{ -1 = 1 меньше 2; 0 = равны; 1 = 1 больше 2 }
function StringComparison(const aStr1, aStr2 : string): shortint;
var
	len1, len2, i : word;
begin
	len1 := Length(aStr1);
	len2 := Length(aStr2);

	if (len1 = 0) and (len2 = 0) then
		StringComparison := 0
	else if (len1 <> 0) and (len2 = 0) then
		StringComparison := 1
	else if (len1 = 0) and (len2 <> 0) then
		StringComparison := -1
	else begin
		i := 1;
		StringComparison := 0;
		while true do begin
			if Ord(aStr1[i]) > Ord(aStr2[i]) then begin
				StringComparison := 1;
				Break;
			end
			else if Ord(aStr1[i]) < Ord(aStr2[i]) then begin
				StringComparison := -1;
				Break;
			end
			else
				Inc(i);

			if (i > len1) and (i > len2) then
				Break
			else if (i > len1) and (i <= len2) then begin
				StringComparison := -1;
				Break;
			end
			else if (i <= len1) and (i > len2) then begin
				StringComparison := 1;
				Break;
			end;
		end;
	end;
end;

function MyUpCase(ch : char): char;
begin
	MyUpCase := ch;
	if ch in ['a'..'z'] then
		MyUpCase := Chr(Ord(ch) - 32);
end;

 var
	// str : string;
	// p : word;
	c : char;
begin
	// str := 'BORLAND PASCAL';
	// Writeln('MyPos:');
	// p := MyPos('LA', str);
	// Writeln('LA:  p = ', p);
	// p := MyPos('PAS', str);
	// Writeln('PAS: p = ', p);
	// p := MyPos('pas', str);
	// Writeln('pas: p = ', p);
	// p := MyPos('A', str);
	// Writeln('A:   p = ', p);
	// p := MyPos('ALI', str);
	// Writeln('ALI: p = ', p);

	//Спартак - *чемпион!
	// str := 'Спартакчемпион!';
	// MyInsert(' - ', str, 8);
	// Writeln(str);

	// str := 'Free Pascal forever!';
	// MyDelete(str, 6, 7);
	// Writeln(str);

	// Writeln(StringComparison('Borland', 'Pascal'));
	// Writeln(StringComparison('ABC', 'AB'));
	// Writeln(StringComparison('ABC', 'ABB'));
	// Writeln(StringComparison('ABC', 'abc'));
	// Writeln(StringComparison('45', '1000'));
	// Writeln(StringComparison('%', '%'));

	c:= MyUpCase('r');  { 'R' } 
	Writeln(c);
	c:= 'n'; 
	c:= MyUpCase( c );  { 'N' }
	Writeln(c);
end.