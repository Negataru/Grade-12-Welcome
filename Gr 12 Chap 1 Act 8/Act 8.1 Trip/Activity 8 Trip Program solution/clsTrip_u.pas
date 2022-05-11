unit clsTrip_u;

interface
type
   TTrip = class (TObject)
   private
     fDate, fDriver: string;
     fDistance: integer;
     fHours: real;
   public
    	constructor Create(sDate, sDriver : string; iDistance : integer);
     	procedure SetHours(rHours : real);
 	    function CalcFuelCost (rPricePerKM:real):real;
 	    function CalcDriverCost (rRatePerHour:real):real;
	    function GetDate : string;
     	function GetDriver : string;
     	function GetHours : real;
	    function GetDistance : integer;
 end;

implementation

{ TTrip }
uses SysUtils;

{ TTrip }

constructor TTrip.Create(sDate, sDriver: string; iDistance: integer);
begin
  fDate := sDate;
  fDriver := sDriver;
  fDistance  := iDistance;
end;

procedure TTrip.SetHours(rHours: real);
begin
   fHours := rHours;
end;

function TTrip.CalcDriverCost(rRatePerHour: real) : real;
begin
  Result := fHours * rRatePerHour;
end;

function TTrip.CalcFuelCost(rPricePerKM: real) : real;
begin
  Result := fDistance * rPricePerKM;
end;

function TTrip.GetDate: string;
begin
   Result := fDate;
end;

function TTrip.GetDistance: integer;
begin
  Result := fDistance;
end;

function TTrip.GetDriver: string;
begin
  Result := fDriver;
end;

function TTrip.GetHours: real;
begin
  Result := fHours;
end;

end.

