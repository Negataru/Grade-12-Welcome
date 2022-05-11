program frmCircle_p;

uses
  Forms,
  frmCircle_u in 'frmCircle_u.pas' {frmCircle},
  clsCircle_u in 'clsCircle_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCircle, frmCircle);
  Application.Run;
end.
