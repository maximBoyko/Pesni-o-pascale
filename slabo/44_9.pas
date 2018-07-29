(* И) Напишите булеву функцию, определяющую, можно ли из букв первого
слова составить второе (например, "клавиша" и "вилка" - TRUE). Учитывается
только набор букв, а не их количество. Подсказка: примените множества. *)

type tSet = set of char;

procedure MakeSet(const aStr : string; var aSet : tSet);
var i : word;

begin
	aSet := [];
	for i := 1 to Length(aStr) do
		aSet := aSet + [aStr[i]];
end;

function Test(const s1, s2 : string): boolean;
var setFromS1 : tSet;
	i : word;

begin
	Test := true;
	MakeSet(s1, setFromS1);
	for i := 1 to Length(s2) do
		if not (s2[i] in setFromS1) then begin
			Test := false;
			Break;
		end;
end;

var
	str1, str2 : string;

begin
	str1 := 'клавиша';
	str2 := 'вышка';
	
	if Test(str1, str2)
		then Writeln('Yes')
		else Writeln('No');
end.