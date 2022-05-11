unit frmCodeGenerator_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons, clsMember_u, XPMan;

type
  TfrmCodeGenerator = class(TForm)
    pnlDisplay: TPanel;
    lblSurname: TLabel;
    edtSurname: TEdit;
    lblDOB: TLabel;
    lblAccCode: TLabel;
    bmbCreate: TBitBtn;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    edtDOB: TEdit;
    procedure bmbCreateClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
     objMember: TMember;
  public
    { Public declarations }
  end;

var
  frmCodeGenerator: TfrmCodeGenerator;

implementation

{$R *.dfm}

procedure TfrmCodeGenerator.bmbCreateClick(Sender: TObject);
begin
    objMember := TMember.Create;
    objMember.SetSurname(edtSurname.Text);
    objMember.SetDOB(edtDOB.Text);
    lblAccCode.Caption := 'Account Code: ' + objMember.CreateAccCode;
    objMember.Free;      
end;

procedure TfrmCodeGenerator.bmbResetClick(Sender: TObject);
begin
   edtSurname.Clear;
   edtDOB.Clear;
   lblAccCode.Caption := 'Account Code:';
   edtSurname.SetFocus;
end;

end.
