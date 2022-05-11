unit clsHeartRateCalculator_u;

interface
type
   THeartRateCalculator = class(TObject)
     private
	      fName : string;
        fYearOfBirth : integer;
     public
        constructor Create(sName: string; iYearOfBirth: integer);
        function CalculateAge: integer;
  	    function CalcMaxHeartRate : integer;
        function IsBelowMax(iCurrRate: integer): boolean;
        function GetName : string;
        function GetYearOfBirth : integer;
     end;

implementation

uses
  DateUtils; 

{ THeartRateCalculator }

function THeartRateCalculator.CalcMaxHeartRate: integer;
begin
  Result := 220 - CalculateAge;
end;

function THeartRateCalculator.CalculateAge: integer;
begin
   Result := YearOf(ToDay) - fYearOfBirth;
end;

function THeartRateCalculator.IsBelowMax(iCurrRate: integer): boolean;
begin
  if (iCurrRate <= CalcMaxHeartRate) then
    Result := True
  else
    Result := False;
end;

constructor THeartRateCalculator.Create(sName: string; iYearOfBirth: integer);
begin
   fName := sName;
   fYearOfBirth := iYearOfBirth;
end;

function THeartRateCalculator.GetName: string;
begin
   Result := fName;
end;

function THeartRateCalculator.GetYearOfBirth: integer;
begin
   Result := fYearOfBirth;
end;

end.
