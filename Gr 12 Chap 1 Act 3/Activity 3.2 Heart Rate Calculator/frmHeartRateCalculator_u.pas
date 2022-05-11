unit frmHeartRateCalculator_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, clsHeartRateCalculator_u, ComCtrls;

type
  TfrmHearRateCalculator = class(TForm)
    pnlInput: TPanel;
    lblYear: TLabel;
    edtYear: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnCalculate: TButton;
    lblName: TLabel;
    edtName: TEdit;
    procedure bmbResetClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
    objHeartRateCalculator : THeartRateCalculator;
  public
    { Public declarations }
  end;

var
  frmHearRateCalculator: TfrmHearRateCalculator;

implementation

{$R *.dfm}

procedure TfrmHearRateCalculator.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  edtYear.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

procedure TfrmHearRateCalculator.btnCalculateClick(Sender: TObject);
var
  iHeartRate :integer;
begin
  objHeartRateCalculator := THeartRateCalculator.Create(edtName.Text, StrToInt(edtYear.Text));
  iHeartRate := StrToInt(InputBox('Heart-rate','Enter current heart-rate','200'));
  redOutput.Clear;
  redOutput.Lines.Add('Name : ' + objHeartRateCalculator.GetName);
  redOutput.Lines.Add('Maximum heart-rate : ' + IntToStr(objHeartRateCalculator.CalcMaxHeartRate));
  redOutput.Lines.Add('Current heart-rate : ' + IntToStr(iHeartRate));
  redOutput.Lines.Add('');
  if (objHeartRateCalculator.IsBelowMax(iHeartRate)) then
     redOutput.Lines.Add('Safe to continue with your excercise ')
   else
     redOutput.Lines.Add('NOT safe to continue with your excercise ');
  objHeartRateCalculator.Free;      
end;

end.
