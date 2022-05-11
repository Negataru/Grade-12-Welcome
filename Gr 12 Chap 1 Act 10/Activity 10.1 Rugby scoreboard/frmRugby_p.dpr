program frmRugby_p;

uses
  Forms,
  frmRugby_u in 'frmRugby_u.pas' {frmRugby},
  clsRugbyScorecard_u in 'clsRugbyScorecard_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRugby, frmRugby);
  Application.Run;
end.
