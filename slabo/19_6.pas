(*Почтальон разносит газеты по улице, состоящей из N домов. Четные и
нечетные номера расположены по разные стороны улицы. В здравом уме
почтальон не рискует лишний раз переходить её. Ваша программа должна
напечатать последовательность номеров, по которым будут разнесена почта,
когда почтальон начинает работу: 
·  с первого дома; 
·  со второго дома; 
·  с N-го(то есть последнего) дома. *)

var
	i, num, p: integer;

begin
	Write('Введите количество домов: ');
	Readln(num);
	(* с первого дома *)
	// for i:=1 to num do
	// 	if i mod 2 <> 0 then
	// 		Write(i, ' ');

	// Writeln;
	// for i:=num downto 1 do
	// 	if i mod 2 = 0 then
	// 		Write(i, ' ');

	(* со второго дома *)
	// Writeln;
	// for i:=2 to num do
	// 	if i mod 2 = 0 then
	// 		Write(i, ' ');

	// Writeln;
	// for i:=num downto 1 do
	// 	if i mod 2 <> 0 then
	// 		Write(i, ' ');

	(* с num-го дома *)
	Writeln;
	p := num mod 2;

	for i:=num downto 1 do
		if i mod 2 = p then
			Write(i, ' ');
	Writeln;
	for i:=1 to num do
		if i mod 2 <> p then
			Write(i, ' ');

	Writeln;
end.