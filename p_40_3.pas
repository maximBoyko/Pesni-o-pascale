{ p_40_3 - ������ ������⢠ ࠧ����� �㪢 � 䠩�� }
program p_40_3;

type tCounts = array['a'..'z'] of integer;

var  counts: tCounts;       { ���ᨢ �� ���稪�� �㪢 }
     c: char;               { ⥪�騩 ᨬ��� 䠩��, �� �� ������ ���稪� }
     f: text;               { 䠩� � ⥪�⮬ �ணࠬ�� }

{----- ������� �ணࠬ�� -----}
begin
    for c:='a' to 'z' do counts[c] := 0;

    Assign(f, 'p_40_3.pas');
    Reset(f);

    while not Eof(f) do begin
        Read(f, c);
        if c in ['a'..'z'] then
            counts[c] := counts[c] + 1;
    end;

    Close(f);

    for c:='a' to 'z' do
        Writeln(c, counts[c]:6);
end.