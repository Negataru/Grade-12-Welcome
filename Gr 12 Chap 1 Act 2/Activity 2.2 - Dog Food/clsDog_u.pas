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
     function CalcFoodPerMeal: real;
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
  Result := fName;
end;

function TDog.GetAge: integer;
begin
  Result := fAge;
end;

function TDog.GetWeight: real;
begin
  Result := fWeight;
end;

function TDog.CalculateFee: real;
begin
  Result := fAge * fWeight;
end;

function TDog.DetermineCategory: string;
begin
 if (fWeight < 5.0) then
   Result := 'Small dog'
 else
   if (fWeight >= 5) AND (fWeight < 10) then
      Result := 'Medium-sized dog'
   else
      Result := 'Big dog';
end;

function TDog.CalcFoodPerMeal: real;
begin
  Result := fWeight * 100;
end;

end.

