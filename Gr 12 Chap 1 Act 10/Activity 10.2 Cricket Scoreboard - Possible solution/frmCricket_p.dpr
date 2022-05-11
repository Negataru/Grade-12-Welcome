program frmCricket_p;

uses
  Forms,
  frmCricket_u in 'frmCricket_u.pas' {frmCricket},
  clsCricketScorecard_u in 'clsCricketScorecard_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCricket, frmCricket);
  Application.Run;
end.
