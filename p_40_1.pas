{ p_40_1.pas - �ணࠬ�� "�����-�⢥�" � �ਬ������� ���ᨢ� }
program p_40_1;

const cAnswers = 100;           { ࠧ��� ���ᨢ� � �⢥⠬� }

{ ������� ⨯� ��� ���ᨢ� �⢥⮢ }
type tAnswers = array[1..cAnswers] of string;

var answers: tAnswers;          { ������� ���ᨢ� �⢥⮢ }
    fact: integer;              { 䠪��᪮� ������⢮ �⢥⮢ }
    f: text;                    { 䠩� � �⢥⠬� }
    s: string;                  { ��ப� � ����ᮬ }

{ ��楤�� ����� �⢥⮢ �� 䠩�� � �����⮬ ��������� ��ப }
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

{----- ������� �ணࠬ�� -----}
begin
    Assign(f, 'p_40_1_in.txt');
    Reset(f);
    ReadFromFile(f);
    Close(f);

    Randomize;

    repeat
        Write('������ �����: ');
        Readln(s);
        if s<>'' then
            Writeln(answers[Random(fact)+1]);
    until s='';
end.