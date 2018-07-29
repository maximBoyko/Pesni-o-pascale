(* А) Напишите программу для сортировки фамилий учеников в алфавитном
порядке (фамилии берутся из файла). Программа должна сортировать их как по
возрастанию, так и по убыванию фамилий, - на выбор пользователя. *)


const fileName = '41_1_in.txt';
	  cMax = 50;

type  tList = array[1..cMax] of string;

{Чтение из файла в массив}
procedure ReadFromFile(var aFile: text; var aArray: tList; var size: byte);
begin
	size := 0;
	while not Eof(aFile) do begin
		if not Eoln(aFile) then begin
			Inc(size);
			Read(aFile, aArray[size]);
		end
		else
			Readln(aFile);
	end;
end;

{сортировка массива по возрастанию}
procedure SortInAscending(var aArray: tList; size: byte);
var temp: string;
	i, j: byte;
begin
	for i:=1 to size-1 do
		for j:=1 to size-i do
			if aArray[j]>aArray[j+1] then begin
				temp := aArray[j];
				aArray[j] := aArray[j+1];
				aArray[j+1]:= temp;
			end;
end;

{сортировка массива по убыванию}
procedure SortInDecreasing(var aArray: tList; size: byte);
var temp: string;
	i, j: byte;
begin
	for i:=1 to size-1 do
		for j:=1 to size-i do
			if aArray[j]<aArray[j+1] then begin
				temp := aArray[j];
				aArray[j] := aArray[j+1];
				aArray[j+1]:= temp;
			end;
end;

{вывод массива на экран}
procedure PrintList(const aArray: tList; size: byte);
var i: byte;
begin
	for i:=1 to size do
		Writeln(aArray[i]);
end;


var   inFile: text;
	  choice, listSize: byte;
	  nameList: tList;

begin
	Assign(inFile, fileName);
	{$I-}
	Reset(inFile);
	{$I+}
	if IOResult<>0 then begin
		Writeln('Ошибка открытия файла');
		Exit;
	end;

	ReadFromFile(inFile, nameList, listSize);
	Writeln(listSize);

	Writeln('Сортировка');
	Writeln('1-по возрастанию');
	Writeln('2-по убыванию');
	Readln(choice);

	case choice of
		1: SortInAscending(nameList, listSize);		{по возрастанию}
		2: SortInDecreasing(nameList, listSize);	{по убыванию}
		else Writeln('Неверный выбор');
	end;

	PrintList(nameList, listSize);

	Close(inFile);
end.