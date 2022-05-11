unit clsSafe_u;

interface

type
  TSafe = class(TObject)
  private
    fCode1, fCode2, fCode3 : string;
    function IsValidCode(sCode : string) : Boolean;
  public
    constructor Create(sCode1, sCode2, sCode3 : string) ;
    function SafeOpen : Boolean;
  end;

implementation

{ TSafe }
Uses SysUtils;

constructor TSafe.Create(sCode1, sCode2, sCode3: string);
begin
  fCode1 := sCode1;
  fCode2 := sCode2;
  fCode3 := sCode3;
end;

function TSafe.IsValidCode(sCode: string): Boolean;
var
  iSum, i, iLast : integer ;
begin
  if Length(sCode) <> 10 then
    begin
      Result := False;
      Exit;
    end;
  iSum := 0 ;
  for i := 1 to 9 do
     iSum := iSum + StrToInt(sCode[i]);
  iLast := StrToInt(sCode[10]);
  Result :=  (iSum MOD iLast = 0);
end;

function TSafe.SafeOpen: Boolean;
begin
  Result :=  IsValidCode(fCode1) AND IsValidCode(fCode2) AND IsValidCode(fCode3);
end;

end.
