unit clsLearner_u;

interface
type
   TLearner = class (TObject)
   private
     fName : string;
     fYearmark : integer;
     fExammark : integer;
     fFinalmark : real;
   public
     constructor Create(sName:string; iYMark:integer; iEMark:integer);
     procedure CalculateFinalMark(iYPerc:integer; iEPerc:integer);
     function GetName : string;
     function GetYearmark : integer;
     function GetExammark : integer;
     function GetFinalmark : real;
     function ToString : string;
 end;

implementation

{ TLearner }
uses SysUtils;

constructor TLearner.Create(sName: string; iYMark, iEMark: integer);
begin
  fName := sName;
  fYearmark := iYMark;
  fExammark := iEMark;
  fFinalmark := 0.0;
end;

procedure TLearner.CalculateFinalMark(iYPerc:integer; iEPerc:integer);
begin
  fFinalmark := (fYearMark * iYPerc/100) + (fExamMark * iEPerc/100);
end;

function TLearner.GetName : string;
begin
  Result := fName;
end;

function TLearner.GetYearmark : integer;
begin
  Result := fYearMark;
end;

function TLearner.GetExammark : integer;
begin
  Result := fExamMark;
end;

function TLearner.GetFinalmark : real;
begin
   Result := fFinalmark;
end;

function TLearner.ToString : string;
var
  sStr :string;
begin
  sStr := 'Name : ' + fName + #13 + 'Year mark : ' + #9 + IntToStr(fYearMark) + #13 + 'Exam mark : ' + #9 + IntToStr(fExamMark);
  Result := sStr + #13 + 'Final mark: ' + #9 + FloatToStrF(fFinalmark, ffFixed, 4,1);
end;

end.

