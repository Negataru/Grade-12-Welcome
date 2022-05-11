unit clsEmployee_u;

interface
type
   TEmployee = class(TObject)
     private
	      fName: string;
        fRate, fHours : real;
     public
       	constructor Create(sName: string; rRate, rHours:real);
  	    function CalcBasicSal : real;
        function CalcBonus : real;
        function CalcTotalSal : real;
        function GetName : string;
        function GetRate : real;
        function GetHours : real;
        function ToString : string;
    end;

implementation

uses SysUtils;

{ TEmployee }

constructor TEmployee.Create(sName: string; rRate, rHours: real);
begin
   fName := sName;
   fHours := rHours;
   fRate := rRate;
end;

function TEmployee.CalcBasicSal: real;
begin
   Result := fHours * fRate;
end;

function TEmployee.CalcBonus: real;
var
  rBonusHours :real;
begin
  if (fHours > 160) then
    rBonusHours := fHours - 160
  else
    rBonusHours := 0;
  Result := 2 * rBonusHours * fRate;
end;

function TEmployee.CalcTotalSal: real;
begin
  Result := calcBasicSal + CalcBonus;
end;

function TEmployee.GetHours: real;
begin
  Result := fHours;
end;

function TEmployee.GetName: string;
begin
   Result := fName;
end;

function TEmployee.GetRate: real;
begin
   Result := fRate;
end;

function TEmployee.ToString: string;
var
  sStr : string;
begin
  sStr := 'Name : ' + #9 + fName + #13;
  sStr := sStr + 'Hours worked  : ' + #9 + FloatToStrF(fHours, ffFixed,8,1) + #13;
  sStr := sStr + 'Rate per hour : ' + #9 + FloatToStrF(fRate, ffCurrency,8,2) + #13;
  Result := sStr;
end;

end.
