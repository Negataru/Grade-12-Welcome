program frmCodeGenerator_p;

uses
  Forms,
  frmCodeGenerator_u in 'frmCodeGenerator_u.pas' {frmCodeGenerator},
  clsMember_u in 'clsMember_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCodeGenerator, frmCodeGenerator);
  Application.Run;
end.
