unit frmDaysPayment_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, clsDate_u;

type
  TfrmDaysPayment = class(TForm)
    pnlInput: TPanel;
    lblDate: TLabel;
    edtDate: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnCalculate: TButton;
    lblName: TLabel;
    edtName: TEdit;
    lblPayment: TLabel;
    edtPayment: TEdit;
    procedure bmbResetClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
     objDate : TDate;
  public
    { Public declarations }
  end;

var
  frmDaysPayment: TfrmDaysPayment;

implementation

{$R *.dfm}

procedure TfrmDaysPayment.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  edtDate.Clear;
  edtPayment.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

procedure TfrmDaysPayment.btnCalculateClick(Sender: TObject);
var
  rPayment, rAmount :real;
  iDays :integer;
begin
  objDate := TDate.Create(edtDate.Text);
  rPayment := StrToFloat(edtPayment.Text);
  iDays := objDate.DaysPassedInYear;
  rAmount := rPayment * iDays;
  redOutput.Clear;
  redOutput.Lines.Add('Name of employee       : ' + edtName.Text );
  redOutput.Lines.Add('Date of query          : ' + objDate.LongDate);
  redOutput.Lines.Add('Payment per day        : ' + Format('%7.2m',[rPayment]));
  redOutput.Lines.Add('Number of days worked  : ' + IntToStr(iDays));
  redOutput.Lines.Add('Total amount           : ' + Format('%7.2m',[rAmount]));
  objDate.Free;  
end;

end.
