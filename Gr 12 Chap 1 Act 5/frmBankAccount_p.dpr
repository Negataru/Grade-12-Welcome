program frmBankAccount_p;

uses
  Forms,
  frmBankAccount_u in 'frmBankAccount_u.pas' {frmBankAccount},
  clsBankAccount_u in 'clsBankAccount_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmBankAccount, frmBankAccount);
  Application.Run;
end.
