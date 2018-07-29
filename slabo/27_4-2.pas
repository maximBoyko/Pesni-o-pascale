var F_in, F_out: Text; 
C: char;            { входной сигнал = 0/1 } 
C1, C2, C3 : char;  { три последних значения } 
Res : char;         { выходной сигнал } 
cnt : integer;      { вспомогательный счетчик до трех } 
begin 
Assign(F_in,'27_4_in.txt'); 
Assign(F_out,'27_4_out.txt'); 
Reset(F_in); 
Rewrite(F_out); 
{ читаем исходное значение сигнала } 
if not Eof(F_in) then begin 
Readln(F_in, C); 
C1:=C; C2:=C; C3:=C; Res:=C; 
Writeln(F_out, C,' ',Res); 
end; 
{ обработка последующих строк входного файла } 
cnt:=0; 
while not Eof(F_in) do begin 
Readln(F_in, C); 
{ циклически обновляем самое старое значение сигнала } 
case cnt of 
0: C1:= C; 
1: C2:= C; 
2: C3:= C; 
end; 
cnt:= (cnt+1) mod 3;  { 0,1,2,0,1...} 
{ если все три совпадают, обновляем выходной сигнал } 
if (C1=C2) and (C1=C3) then Res:=C; 
Writeln(F_out, C,' ', Res); 
end; 
Close(F_in); Close(F_out); 
Writeln('OK'); Readln; 
end.