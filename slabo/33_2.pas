(* Б) Ваша процедура принимает строковую переменную, вычисляет среднее
арифметическое кодов её символов и печатает его с двумя цифрами после точки.*)

var str: string;
	aver: real;
	cnt, sum, i: word;

begin
	Write('Введите строку: ');
	Readln(str);

	cnt := Length(str);
	sum := 0;
	
	for i:=1 to cnt do begin
		sum := sum + Ord(str[i]);
	end;

	aver := sum / cnt;
	Writeln('Среднее кодов символов: ', aver:0:2);
end.
