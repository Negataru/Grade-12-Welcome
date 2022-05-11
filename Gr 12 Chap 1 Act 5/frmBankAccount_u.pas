unit frmBankAccount_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Spin, clsBankAccount_u,
  XPMan;

type
  TfrmBankAccount = class(TForm)
    pnlDisplay: TPanel;
    btnCreateAccount: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    gpbTransactions: TGroupBox;
    lblAmount: TLabel;
    edtAmount: TEdit;
    btnDeposit: TButton;
    btnWithdraw: TButton;
    gpbView: TGroupBox;
    btnAll: TButton;
    btnBalance: TButton;
    redOutput: TRichEdit;
    lblAccNumber: TLabel;
    edtAccNumber: TEdit;
    procedure btnCreateAccountClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure btnDepositClick(Sender: TObject);
    procedure btnWithdrawClick(Sender: TObject);
    procedure btnBalanceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    objBankAccount : TBankAccount;
  public
    { Public declarations }
  end;

var
  frmBankAccount: TfrmBankAccount;

implementation

{$R *.dfm}

procedure TfrmBankAccount.btnCreateAccountClick(Sender: TObject);
begin
  objBankAccount := TBankAccount.Create(edtAccNumber.Text);
  gpbTransactions.Visible := True;
  gpbView.Visible := True;
  btnCreateAccount.Enabled := False;
  bmbReset.Visible := True;
  edtAmount.SetFocus;
end;

procedure TfrmBankAccount.bmbResetClick(Sender: TObject);
begin
  edtAccNumber.Clear;
  edtAmount.Clear;
  redOutput.Clear;
  edtAccNumber.SetFocus;
  btnCreateAccount.Enabled := True;
  gpbTransactions.Visible := False;
  gpbView.Visible := False;
  objBankAccount.Free;
  bmbReset.Visible := False;
end;

procedure TfrmBankAccount.btnAllClick(Sender: TObject);
begin
  redOutput.Lines.Clear;
  redOutput.Lines.Add('Bank Account Details');
  redOutput.Lines.Add(' ');
  redOutput.Lines.Add('Account Number : ' + objBankAccount.GetAccNumber());
  redOutput.Lines.Add('Balance :        ' + #9 + FloatToStrF(objBankAccount.GetBalance(), ffCurrency,8,2));
end;

procedure TfrmBankAccount.btnDepositClick(Sender: TObject);
begin
  objBankAccount.DepositAmount(StrToFloat(edtAmount.Text));
  edtAmount.Clear;
  edtAmount.SetFocus;
  redOutput.Clear;
end;

procedure TfrmBankAccount.btnWithdrawClick(Sender: TObject);
begin
  objBankAccount.WithdrawAmount(StrToFloat(edtAmount.Text));
  edtAmount.Clear;
  edtAmount.SetFocus;
  redOutput.Clear;
end;

procedure TfrmBankAccount.btnBalanceClick(Sender: TObject);
begin
  redOutput.Lines.Clear;
  redOutput.Lines.Add(' ');
  redOutput.Lines.Add('Balance : ' + FloatToStrF(objBankAccount.GetBalance(),ffCurrency,8,2));
end;

procedure TfrmBankAccount.FormShow(Sender: TObject);
begin
  gpbTransactions.Visible := False;
  gpbView.Visible := False;
  btnCreateAccount.Enabled := True;
  {A user should not be able to click on Reset before an account was created, because
   the Free method for the object is called in the event handler for the OnClick event
   of the [Reset] Button}
  bmbReset.Visible := False;
end;

end.
