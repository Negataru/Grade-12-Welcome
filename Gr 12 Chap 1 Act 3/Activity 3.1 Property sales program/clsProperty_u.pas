unit clsProperty_u;

interface
type
   TProperty = class(TObject)
     private
	      fOwnerName: string;
        fCostPrice, fPercComm: real;
     public
       	constructor Create(sName : string; rCostPrice, rPercComm:real);
  	    function CalculateComm : real;
        function CalculateSellPrice : real;
        function GetOwnerName : string;
        function GetCostPrice : real;
        function GetPercComm : real;
     end;
implementation
  
{ TProperty }

constructor TProperty.Create(sName: string; rCostPrice, rPercComm: real);
begin
   fOwnerName := sName;
   fCostPrice := rCostPrice;
   fPercComm := rPercComm;
end;

function TProperty.CalculateSellPrice: real;
begin
   result := fCostPrice + CalculateComm;
end;

function TProperty.CalculateComm: real;
begin
   result := (fPercComm * fCostPrice / 100);
end;

function TProperty.GetCostPrice: real;
begin
  result := fCostPrice;
end;

function TProperty.GetOwnerName: string;
begin
   result := fOwnerName;
end;

function TProperty.GetPercComm: real;
begin
   result := fPercComm;
end;

end.
