program frmEmployee_p;

uses
  Forms,
  frmEmployee_u in 'frmEmployee_u.pas' {frmEmployee},
  clsEmployee_u in 'clsEmployee_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEmployee, frmEmployee);
  Application.Run;
end.
