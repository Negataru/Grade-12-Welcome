unit clsWaiter_u;

interface
type
  TWaiter = class(TObject)
    public
      fName : string;
      fHours : real;
      fRate : real;
    public
      constructor Create(sName:string; rHours: real; rRate: real);
      function CalculateWage: real;
      function GetName: string;
      function GetHours: real;
      function GetRate: real;
      function ToString: string;
      function DisplayAllInfo :string;
    end;

implementation

uses
   SysUtils;
{ TWaiter }

function TWaiter.CalculateWage: real;
begin
  Result := fHours * fRate;
end;

constructor TWaiter.Create(sName: string; rHours, rRate: real);
begin
   fName := LowerCase(sName);
   fName[1] := UpCase(fName[1]);
   fHours := rHours;
   fRate := rRate;
end;

function TWaiter.GetHours: real;
begin
  Result := fHours;
end;

function TWaiter.GetName: string;
begin
  Result := fName;
end;

function TWaiter.GetRate: real;
begin
  Result := fRate;
end;

function TWaiter.ToString: string;
begin
  Result := fName + ' : ' + FloatToStrF(fHours, ffFixed, 3,1) + ' hours @ ' + FloatToStrF(fRate, ffCurrency, 5,2) + ' per hour.';
end;

function TWaiter.DisplayAllInfo :string;
begin
  Result := ToString + ' Wage: ' + FloatToStrF(CalculateWage, ffCurrency,8,2);
end;

end.
