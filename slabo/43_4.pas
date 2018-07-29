(* Г) В одном ряду вперемежку лежат дыни и арбузы. Могут ли фермеры
отсортировать их за один проход ряда так, чтобы в начале оказались
все дыни, а в конце ряда - все арбузы? Напишите такую программу, 
обозначив арбузы единицами, а дыни - нулями. *)

const
	cSize = 10;

type
	tSeq = array[1..cSize] of byte;

procedure PrintSeq(const aArray : tSeq);
var i : word;
begin
	for i := 1 to cSize do
		Write(aArray[i]:2);
	Writeln;
end;

procedure Swap(var num1, num2 : byte);
var t : byte;
begin
	t := num1;
	num1 := num2;
	num2 := t;
end;

procedure SortSeq(var aArray : tSeq);
var l, r, i : word;
begin
	l := 1;
	r := cSize;
	while l < r do begin
		if aArray[l] = 1 then
			for i := r downto l do
				if aArray[i] = 0 then begin
					Swap(aArray[l], aArray[i]);
					r := i - 1;
					Break;
				end
				else
					Dec(r);
		Inc(l);
	end;	
end;

var
	i : word;
	seq : tSeq;

begin
	Randomize;
	for i := 1 to cSize do
		seq[i] := Random(2);
	PrintSeq(seq);
	SortSeq(seq);
	PrintSeq(seq);
end.