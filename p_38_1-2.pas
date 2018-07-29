{ P_38_1.pas }

const CMax = 255;

type TSet = set of 1..CMax;

procedure WriteSet(var aFile: text; const aSet : TSet);
var k : integer;
begin
  for k:=1 to CMax do
     if k in aSet
        then Write(aFile, k:4);
  Writeln(aFile);
end;

procedure ReadSet(var aFile: text; var aSet : TSet);
var k : integer;
begin
  While not Eoln(aFile) do begin
    Read(aFile, K);
    aSet:= aSet+[K];
  end;
  Readln (aFile);
end;

var
    R, S1, S2, S3 : TSet;
    FileIn, FileOut: text;
    n: integer;                 { общее число учеников }

begin
  Assign(FileIn, 'p_37_3_in.txt'); Reset(FileIn);
  Assign(FileOut, ''); Rewrite(FileOut);

  { читаем общее число учеников }
  Readln(fileIn, n);
  Writeln(FileOut, 'n = ', n);
  
  S1:=[]; ReadSet(FileIn, S1);
  S2:=[]; ReadSet(FileIn, S2);
  S3:=[]; ReadSet(FileIn, S3);

  Writeln(FileOut, 'Во все три кружка записались:');
  { вычисляем пересечение всех трех множеств }
  R:= S1*S2*S3;
  WriteSet(FileOut, R);

  Writeln(FileOut, 'В два или более кружка записались:');
  { вычисляем сумму попарных пересечений множеств }
  R:= S1*S2 + S2*S3 + S1*S3;
  WriteSet(FileOut, R);

  Writeln(FileOut, 'Только в один кружок записались:');
  { из множества всех записавшихся вычитаем тех, кто записался
    в два или более кружков }
  R:= (S1+S2+S3) - (S1*S2 + S2*S3 + S1*S3);
  WriteSet(FileOut, R);

  Readln;
  Close(FileIn); Close(FileOut);
end.

