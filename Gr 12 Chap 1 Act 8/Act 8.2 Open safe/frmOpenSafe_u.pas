unit frmOpenSafe_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, clsSafe_u, XPMan;

type
  TfrmOpenSafe = class(TForm)
    edtCode1: TLabeledEdit;
    edtCode2: TLabeledEdit;
    edtCode3: TLabeledEdit;
    btnTestCodes: TButton;
    pnlResult: TPanel;
    XPManifest1: TXPManifest;
    procedure btnTestCodesClick(Sender: TObject);
  private
    objSafe : TSafe;
  public
    { Public declarations }
  end;

var
  frmOpenSafe: TfrmOpenSafe;

implementation

{$R *.dfm}

procedure TfrmOpenSafe.btnTestCodesClick(Sender: TObject);
begin
  objSafe := TSafe.Create(edtCode1.Text, edtCode2.Text, edtCode3.Text);
  if objSafe.SafeOpen then
    pnlResult.Caption := 'The safe will open'
  else
    pnlResult.Caption := 'The safe will NOT open';
  objSafe.Free;
end;

end.
