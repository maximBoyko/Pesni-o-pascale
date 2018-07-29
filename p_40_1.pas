{ p_40_1.pas - программа "вопрос-ответ" с применением массива }
program p_40_1;

const cAnswers = 100;           { размер массива с ответами }

{ объявление типа для массива ответов }
type tAnswers = array[1..cAnswers] of string;

var answers: tAnswers;          { объявление массива ответов }
    fact: integer;              { фактическое количество ответов }
    f: text;                    { файл с ответами }
    s: string;                  { строка с вопросом }

{ Процедура ввода ответов из файла с подсчетом введенных строк }
procedure ReadFromFile(var aFile: text);
var i: integer;
begin
    fact := 0;

    for i:=1 to cAnswers do begin
        if Eof(aFile) then Break;
        Readln(aFile, answers[i]);
        fact := fact + 1;
    end;
end;

{----- Главная программа -----}
begin
    Assign(f, 'p_40_1_in.txt');
    Reset(f);
    ReadFromFile(f);
    Close(f);

    Randomize;

    repeat
        Write('Введите вопрос: ');
        Readln(s);
        if s<>'' then
            Writeln(answers[Random(fact)+1]);
    until s='';
end.