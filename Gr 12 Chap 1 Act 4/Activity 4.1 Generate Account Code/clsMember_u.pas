unit clsMember_u;

interface
type
 TMember = class (TObject)
   private
      fSurname : string;
      fDOB     : string;
   public
      //Initialise the two fields to empty strings
      constructor Create;
   
      procedure SetSurname(sSurname : string);
	    procedure SetDOB(sDOB : string);
		
 	    function GetSurname : string;
	    function GetDOB : string;
     	//Generate the account code as specified 
      function CreateAccCode : string;
   end;

implementation

{ TMember }

constructor TMember.Create;
begin
   fSurname := '';
   fDOB     := '';
end;

procedure TMember.SetSurname(sSurname: string);
begin
  fSurname := sSurname;
end;

procedure TMember.SetDOB(sDOB: string);
begin
  fDOB :=  sDOB
end;

function TMember.CreateAccCode: string;
var
  k    : integer;
  sCode: string;
begin
  sCode := '';
  for k := length(fSurname) downto 1 do
     sCode := sCode + Upcase(fSurname[k]);
  Result := sCode + copy(fDOB,6,2);
end;

function TMember.GetDOB: string;
begin
   Result := fDOB;
end;

function TMember.GetSurname: string;
begin
   Result := fSurname;
end;

end.
 