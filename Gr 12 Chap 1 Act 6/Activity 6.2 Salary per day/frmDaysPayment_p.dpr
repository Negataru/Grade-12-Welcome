program frmDaysPayment_p;

uses
  Forms,
  frmDaysPayment_u in 'frmDaysPayment_u.pas' {frmDaysPayment},
  clsDate_u in '..\MyClasses\clsDate_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDaysPayment, frmDaysPayment);
  Application.Run;
end.
