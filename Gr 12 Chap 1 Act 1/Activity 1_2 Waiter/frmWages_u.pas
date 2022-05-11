unit frmWages_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, clsWaiter_u;

type
  TfrmWaiter = class(TForm)
    edtName: TEdit;
    lblName: TLabel;
    lblHours: TLabel;
    edtHours: TEdit;
    lbkRate: TLabel;
    edtRate: TEdit;
    btnCalc: TButton;
    pnlWage: TPanel;
    bmbNext: TBitBtn;
    bmbClose: TBitBtn;
    procedure bmbNextClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
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
end;

procedure TfrmWaiter.btnCalcClick(Sender: TObject);
var
  rWage : real;
  sName : string;
begin
  objWaiter := TWaiter.Create(edtName.Text, StrToFloat(edtHours.Text), StrToFloat(edtRate.Text));
  rWage := objWaiter.CalculateWage;
  sName := objWaiter.GetName;
  pnlWage.Caption := sName + ' should be paid: ' + FloatToStrF(rWage, ffCurrency, 8, 2);
  //Release memory occupied by current object
  objWaiter.Free;
  {The Free method is called in this event handler, and not in the event handler for the
   OnClick event of bmbNext, in case the user of the program does not click on
   bmbNext, but rather clicks btnCalc directly. Another technique would be to
   make the Enabled property of btnCalc false, until the user clicks bmbNext.
   In that case you can call the Free method for the object in the event handler
   of the OnClick event of bmbNext.}
end;

end.
