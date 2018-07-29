{ p_33_2.pas - Программа для исследования точности вещественных типов}

var F0 : real;
    F1 : single;
    F2 : double;
    F3 : extended;

begin
    F0:= 1/3;
    F1:= 1/3;
    F2:= 1/3;
    F3:= 1/3;

    Writeln('Single = ', F1:23:18);
    Writeln('Real = ', F0:23:18);
    Writeln('Double = ', F2:23:18);
    Writeln('Extended= ', F3:23:18);
end.