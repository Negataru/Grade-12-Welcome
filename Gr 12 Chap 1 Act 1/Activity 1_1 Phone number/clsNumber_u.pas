unit clsNumber_u;

interface
type
  TNumber = class(TObject)
    private
      fPrefix : string;
      fWord : string;
      function IsValidWord : Boolean;
    public
      constructor Create(sPrefix, sWord: string);
      function GetNumber: string;
  end;
implementation

{ TNumber }

constructor TNumber.Create(sPrefix, sWord: string);
begin
   fPrefix := sPrefix;
   fWord := sWord;
end;

function TNumber.GetNumber: string;
var
  i : integer ;
  sNumber : string;
begin
  if NOT (IsValidWord) then
    begin
      Result := 'Invalid word';
      Exit;
    end ;
  sNumber := fPrefix + '-' ;
  for i := 1 to length(fWord) do
    begin
      case UpCase(fWord[i]) of
        'A','B','C' : sNumber := sNumber + '2' ;
        'D','E','F' : sNumber := sNumber + '3' ;
        'G','H','I' : sNumber := sNumber + '4' ;
        'J','K','L' : sNumber := sNumber + '5' ;
        'M','N','O' : sNumber := sNumber + '6' ;
        'P','Q','R', 'S' : sNumber := sNumber + '7' ;
        'T','U','V' : sNumber := sNumber + '8' ;
        'W','X','Y','Z' : sNumber := sNumber + '9' ;
      end;
    end;
  Result := sNumber;
end ;

function TNumber.IsValidWord: Boolean;
var
  i : integer ;
  bIsValid : Boolean;
begin
  if length(fWord) <> 7 then
    begin
      Result := False;
      Exit;
    end ;
  bIsValid := True ;
  i := 1 ;
  while (bIsValid) AND (i <= length(fWord)) do
    begin
      if NOT (UpCase(fWord[i]) IN ['A'..'Z']) then
          bIsValid := False
      else
        Inc(i) ;
    end;
  Result := bIsValid;
end;

end.
