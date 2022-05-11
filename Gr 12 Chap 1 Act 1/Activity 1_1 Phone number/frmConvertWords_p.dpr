program frmConvertWords_p;

uses
  Forms,
  frmConvertWords_u in 'frmConvertWords_u.pas' {frmConvertNumbers},
  clsNumber_u in 'clsNumber_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmConvertNumbers, frmConvertNumbers);
  Application.Run;
end.
