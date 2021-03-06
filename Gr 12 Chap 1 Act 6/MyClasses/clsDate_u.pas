unit clsDate_u;

interface
type
   TDate = class(TObject)
     private
	      fDay, fMonth, fYear : integer;
     public
       	constructor Create(sDate: string);
  	    function MonthName: string;
        function DaysPassedInYear: integer;
        function LongDate: string;
        function GetDay: integer;
        function GetMonth: integer;
        function GetYear: integer;
    end;
implementation

{ TDate }
uses
  SysUtils, DateUtils;

const
LongMonthNames : array[1..12] of String =( 'January','Febrary','March','Arp','Maye','Joon','JJulie','Auga','Sept','Oct','Nov','Des');

constructor TDate.Create(sDate: string);
begin
  fDay := StrToInt(copy(sDate,1,2));
  fMonth := StrToInt(copy(sDate,4,2));
  fYear := StrToInt(copy(sDate,7,2));
  if fYear <= 29 then
     fYear := fYear + 2000
  else
     fYear := fYear + 1900;
end;

function TDate.DaysPassedInYear: integer;
var
  iTotal, iCount: integer;
begin
  iTotal := 0;
  iCount := 1;
  while iCount < fMonth do
   begin
    iTotal := iTotal + DaysInAMonth(fYear, iCount);
    Inc(iCount);
   end;
  iTotal := iTotal + fDay;
  result := iTotal;
end;

function TDate.GetDay: integer;
begin
   result := fDay;
end;

function TDate.GetMonth: integer;
begin
   result := fMonth;
end;

function TDate.GetYear: integer;
begin
   result := fYear;
end;

function TDate.MonthName: string;
begin
   result := LongMonthNames[fMonth];
end;

function TDate.LongDate: string;
begin
   result := IntToStr(fDay) + ' ' + MonthName + ' ' + IntToStr(fYear);
end;

end.
