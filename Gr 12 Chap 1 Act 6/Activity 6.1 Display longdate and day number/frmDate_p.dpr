program frmDate_p;

uses
  Forms,
  frmDate_u in 'frmDate_u.pas' {frmDate},
  clsDate_u in '..\MyClasses\clsDate_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDate, frmDate);
  Application.Run;
end.
