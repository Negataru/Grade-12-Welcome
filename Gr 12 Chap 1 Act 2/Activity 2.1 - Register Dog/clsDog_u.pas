unit clsDog_u;

interface
type
   TDog = class (TObject)
   private
        fName    : string;
        fAge     : integer;
        fWeight  : real;
   public
     constructor Create(sName: string; iAge: integer; rWeight: real);
     function GetName: string;
     function GetAge: integer;
     function GetWeight: real;
     function DetermineCategory: string;
     function CalculateFee: real;
 end;

implementation
{ TDog}

constructor TDog.Create(sName: string; iAge: integer; rWeight: real);
begin
  fName := sName;
  fAge := iAge;
  fWeight := rWeight;
end;

function TDog.GetName: string;
begin
  result := fName;
end;

function TDog.GetAge: integer;
begin
  result := fAge;
end;

function TDog.GetWeight: real;
begin
  result := fWeight;
end;

function TDog.CalculateFee: real;
begin
  result := fAge * fWeight;
end;

function TDog.DetermineCategory: string;
begin
 if (fWeight < 5.0) then
   result := 'Small dog'
 else
   if (fWeight >= 5) AND (fWeight <= 10) then
      result := 'Medium-sized dog'
   else
      result := 'Big dog';
end;

end.

