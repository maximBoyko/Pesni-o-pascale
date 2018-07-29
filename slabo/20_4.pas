(*Подойдя  к  перекрестку,  пешеход  решает,  переходить  ли  ему  улицу  или
остановиться.  На  решение  влияет  характер  пешехода  и  ещё  два  фактора:
сигнал светофора  и  близость  опасно  движущегося  транспорта.  Напишите
программу  с процедурой,  которая  принимает  и  печатает  решение  в
зависимости  от  переданных в неё трех параметров, а именно:
·  Параметр A = true, если горит зеленый; 
·  Параметр B = true, если поблизости опасно движется транспорт; 
·  Параметр C - это число, определяющее характер пешехода так: 
1 -   послушный и осторожный - учитывает и светофор и опасность; 
2 -   послушный, но беспечный - смотрит только на светофор; 
3 -   хитрый вольнодумец - идет только на красный, если это ничем не грозит; 
4 -   непримиримый вольнодумец - идет только на красный; 
5 -   экстремал - идет только на красный, и так, чтобы грозила опасность; 
6 -   "безбашенный" - идет, несмотря ни на что; 
7 -   запуганный - никогда не идет через дорогу, а ищет подземный переход*)

var
	isGreen, isDanger: boolean;
	character, answer: integer;
procedure Decision(A, B: boolean; C: integer);
var ok: boolean;
begin
	ok := false;
	case C of
		1: if A and not B then ok := true;
		2: if A then ok := true;
		3: if not A and not B then ok := true;
		4: if not A then ok := true;
		5: if not A and B then ok := true;
		6: ok := true;
	end;

	if ok then
		Writeln('Перейдет')
	else
		Writeln('Не перейдет');
end;

begin
	Write('Светофор: ');
	Readln(answer);
	if answer = 1 then
		isGreen := true
	else
		isGreen := false;

	Write('Транспорт: ');
	Readln(answer);
	if answer = 1 then
		isDanger := true
	else
		isDanger := false;

	Write('Характер (1-7): ');
	Readln(character);

	Decision(isGreen, isDanger, character);
end.