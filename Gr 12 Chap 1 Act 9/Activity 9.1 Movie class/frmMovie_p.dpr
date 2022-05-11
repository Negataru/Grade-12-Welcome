program frmMovie_p;

uses
  Forms,
  frmMovie_u in 'frmMovie_u.pas' {frmDate},
  clsMovie_u in 'clsMovie_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDate, frmDate);
  Application.Run;
end.
