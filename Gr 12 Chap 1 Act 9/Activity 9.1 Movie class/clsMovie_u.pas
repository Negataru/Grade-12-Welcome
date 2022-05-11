unit clsMovie_u;

interface
type
   TMovie = class(TObject)
     private
	      fTitle :string;
        fRating: integer;
     public
       	constructor Create(sTitle : string; iRating:integer);
  	    function DeterminePopularity : string;
        function GetTitle : string;
        function GetRating : integer;
        function ToString : string;
    end;

implementation

uses SysUtils;

{ TEmployee }

constructor TMovie.Create(sTitle: string; iRating: integer);
begin
   fTitle := sTitle;
   fRating := iRating;
end;

function TMovie.DeterminePopularity: string;
begin
   case fRating of
     1,2,3,4 : Result := 'LOW';
     5,6,7   : Result := 'MEDIUM';
     8,9,10  : Result := 'HIGH'
     else
        Result := 'Invalid';
   end;

end;

function TMovie.GetTitle: string;
begin
   Result := fTitle;
end;

function TMovie.GetRating: integer;
begin
   Result := fRating;
end;

function TMovie.ToString: string;
var
  sStr : string;
begin
  sStr := 'Title   : ' + #9 + fTitle + #13;
  sStr := sStr + 'Rating  : ' + #9 + IntToStr(fRating) + #13;
  Result := sStr;
end;

end.

