(* К) Дана строка, содержащая не менее трёх символов. Найти в ней три
стоящих подряд символа, дающих максимальную сумму своих кодов.  *)

var
	str : string;
	maxSum, sum, i, index : word;
	ch1, ch2, ch3 : char;

begin
	str := 'pasxyzcal';
	maxSum := 0;

	for i := 1 to Length(str) - 2 do begin
		ch1 := str[i];
		ch2 := str[i+1];
		ch3 := str[i+2];
		sum := Ord(ch1) + Ord(ch2) + Ord(ch3);
		if sum > maxSum then begin
			maxSum := sum;
			index := i;
		end;
	end;

	Writeln(str[index], str[index+1], str[index+2]);
	Writeln(Ord(str[index]):4, Ord(str[index+1]):4, Ord(str[index+2]):4);
end.