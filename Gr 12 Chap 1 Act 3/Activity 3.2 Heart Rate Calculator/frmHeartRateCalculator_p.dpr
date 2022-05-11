program frmHeartRateCalculator_p;

uses
  Forms,
  frmHeartRateCalculator_u in 'frmHeartRateCalculator_u.pas' {frmHearRateCalculator},
  clsHeartRateCalculator_u in 'clsHeartRateCalculator_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHearRateCalculator, frmHearRateCalculator);
  Application.Run;
end.
