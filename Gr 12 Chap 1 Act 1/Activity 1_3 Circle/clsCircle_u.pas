unit clsCircle_u;

interface
uses
   SysUtils;
type   
   TCircle = class (TObject)
   private
        fRadius  :real;
        fCircum  :real;
        fArea    :real;
   public
     constructor Create(rRadius:real);
     function GetRadius:real;
     function GetCircum:real;
     function GetArea:real;
     procedure CalculateCircum;
     procedure CalculateArea;
   end;

implementation

{TCircle}

constructor TCircle.Create(rRadius:real);
begin
  fRadius := rRadius;
end;

function TCircle.GetRadius:real;
begin
  Result := fRadius;
end;

function TCircle.GetCircum:real;
begin
  Result := fCircum;
end;

function TCircle.GetArea:real;
begin
  Result := fArea;
end;

procedure TCircle.CalculateCircum;
begin
  fCircum := 2 * PI * fRadius;
end;

procedure TCircle.CalculateArea;
begin
  fArea := PI * Sqr(fRadius);
end;

end.

