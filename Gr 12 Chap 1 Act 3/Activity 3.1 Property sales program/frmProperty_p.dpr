program frmProperty_p;

uses
  Forms,
  frmProperty_u in 'frmProperty_u.pas' {frmEmployee},
  clsProperty_u in 'clsProperty_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEmployee, frmEmployee);
  Application.Run;
end.
