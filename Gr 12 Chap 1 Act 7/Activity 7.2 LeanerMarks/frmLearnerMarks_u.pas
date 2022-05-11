unit frmLearnerMarks_u;

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
    procedure btnProcessClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
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
  iYPerc, iEPerc : integer;
begin
  objLearner := TLearner.Create(edtName.Text,sedYearMark.Value, sedExamMark.Value);
  iYPerc := StrToInt(InputBox('Year mark', 'Enter the percentage the year mark must count', ''));
  iEPerc := StrToInt(InputBox('Exam mark', 'Enter the percentage the exam mark must count', ''));
  objLearner.CalculateFinalMark(iYPerc, iEPerc);
  redOutput.Lines.Add(objLearner.ToString());
  objLearner.Free;
end;

procedure TfrmLearnerMarks.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  sedYearMark.Value := 0;
  sedExamMark.Value := 0;
  redOutput.Clear;
  edtName.SetFocus;
end;

end.
