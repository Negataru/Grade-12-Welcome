program frmOpenSafe_p;

uses
  Forms,
  frmOpenSafe_u in 'frmOpenSafe_u.pas' {frmOpenSafe},
  clsSafe_u in 'clsSafe_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmOpenSafe, frmOpenSafe);
  Application.Run;
end.
