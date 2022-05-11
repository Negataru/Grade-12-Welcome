unit frmWages_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, clsWaiter_u, ComCtrls;

type
  TfrmWaiter = class(TForm)
    edtName: TEdit;
    lblName: TLabel;
    lblHours: TLabel;
    edtHours: TEdit;
    lblRate: TLabel;
    edtRate: TEdit;
    btnInfo: TButton;
    bmbNext: TBitBtn;
    bmbClose: TBitBtn;
    btnAllInfo: TButton;
    pnlWage: TPanel;
    procedure bmbNextClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnAllInfoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    objWaiter : TWaiter;
  public
    { Public declarations }
  end;

var
  frmWaiter: TfrmWaiter;

implementation

{$R *.dfm}

procedure TfrmWaiter.bmbNextClick(Sender: TObject);
begin
  edtName.Clear;
  edtHours.Clear;
  edtRate.Clear;
  pnlWage.Caption := '';
  edtName.SetFocus;
  objWaiter.Free;
  bmbNext.Visible := False;
end;

procedure TfrmWaiter.btnInfoClick(Sender: TObject);
begin
  if not (Assigned(objWaiter)) then
     objWaiter := TWaiter.Create(edtName.Text, StrToFloat(edtHours.Text), StrToFloat(edtRate.Text));
  pnlWage.Caption := objWaiter.ToString ;
  bmbNext.Visible := True;
end;

procedure TfrmWaiter.btnAllInfoClick(Sender: TObject);
begin
  if not (Assigned(objWaiter)) then
    objWaiter := TWaiter.Create(edtName.Text, StrToFloat(edtHours.Text), StrToFloat(edtRate.Text));
  pnlWage.Caption := objWaiter.DisplayAllInfo ;
  bmbNext.Visible := True;
end;

procedure TfrmWaiter.FormShow(Sender: TObject);
begin
   bmbNext.Visible := False;
end;

end.
