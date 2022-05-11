unit frmLearner_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Spin, clsLearner_u;

type
  TfrmLearnerMarks = class(TForm)
    pnlDisplay: TPanel;
    lblName: TLabel;
    lblYearMark: TLabel;
    edtName: TEdit;
    lblExamMark: TLabel;
    btnProcess: TButton;
    redOutput: TRichEdit;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    sedYearMark: TSpinEdit;
    sedExamMark: TSpinEdit;
    BitBtn1: TBitBtn;
    procedure btnProcessClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure bmbCloseClick(Sender: TObject);
  private
    { Private declarations }
    objLearner : TLearner;
  public
    { Public declarations }
  end;

var
  frmLearnerMarks: TfrmLearnerMarks;

implementation

{$R *.dfm}

procedure TfrmLearnerMarks.btnProcessClick(Sender: TObject);
var
  sName         : string;
  iAge          : integer;
  rWeight, rFee : real;
begin
  objLearner := TLearner.
  sName  := edtName.Text;
  iAge   := sedAge.Value;
  rWeight := StrToFloat(edtWeight.Text);
  objDog := TDog.Create(sName, iAge, rWeight);
  rFee := objDog.CalculateFee;
  objDog.DetermineCategory;
  redOutput.Lines.Add('Dog Show');
  redOutput.Lines.Add(' ');
  redOutput.Lines.Add(sName  + ' has been registered');
  redOutput.Lines.Add('Category: ' + objDog.GetCategory());
  redOutput.Lines.Add('Fee     : ' + FloatToStrf(rFee,ffCurrency,8,2));
end;

procedure TfrmLearnerMarks.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  sedAge.Value := 0;
  edtWeight.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

procedure TfrmLearnerMarks.bmbCloseClick(Sender: TObject);
begin
  objDog.Free;
end;

end.
