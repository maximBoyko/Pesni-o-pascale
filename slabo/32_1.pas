(* А) Напомню, что функция SizeOf возвращает объём памяти,
занимаемый переменной, например: 
Writeln( SizeOf( LongInt ) );  { 4 } 
Writeln( SizeOf( M1 ) );       { 1 } 
Воспользуйтесь ею для распечатки размеров всех известных вам
порядковых типов данных.  *)

begin
	Writeln('char: ', SizeOf(char));
	Writeln('byte: ', SizeOf(byte));
	Writeln('shortint: ', SizeOf(shortint));
	Writeln('smallint: ', SizeOf(smallint));
	Writeln('word: ', SizeOf(word));
	Writeln('integer: ', SizeOf(integer));
	Writeln('longint: ', SizeOf(longint));
	Writeln('longword: ', SizeOf(longword));
	Writeln('int64: ', SizeOf(int64));
	Writeln('qword: ', SizeOf(qword));
end.