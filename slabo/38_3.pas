(* ‚ *)

type tSet = set of byte;

procedure ReadSet(var aFile: text; var aSet: tSet);
var num: byte;
begin
	while not Eoln(aFile) do begin
		Read(aFile, num);
		aSet := aSet + [num];
	end;
	Readln(aFile);
end;

procedure WriteSet(var aFile: text; const aSet: tSet);
var i: byte;
begin
	for i:=0 to 255 do
		if i in aSet then Write(aFile, i:4);
	Writeln(aFile);
end;

var fIn, fOut: text;
	s: tSet;

begin
	Assign(fIn, '38_3_in.txt');
	Reset(fIn);
	Assign(fOut, '');
	Rewrite(fOut);

	s := [];
	ReadSet(fIn, s);
	WriteSet(fOut, s);

	Close(fIn);
	Close(fOut);
end.
