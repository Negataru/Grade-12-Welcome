program frmTrip_p;

uses
  Forms,
  frmTrip_u in 'frmTrip_u.pas' {frmTrip},
  clsTrip_u in 'clsTrip_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTrip, frmTrip);
  Application.Run;
end.
