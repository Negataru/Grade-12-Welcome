unit frmEmployee_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  ComCtrls, clsEmployee_u;

type
  TfrmEmployee = class(TForm)
    pnlInput: TPanel;
    lblHours: TLabel;
    edtHours: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnCalculate: TButton;
    lblName: TLabel;
    edtName: TEdit;
    lblRate: TLabel;
    edtRate: TEdit;
    procedure bmbResetClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
    objEmployee : TEmployee;
  public
    { Public declarations }
  end;

var
  frmEmployee: TfrmEmployee;

implementation

{$R *.dfm}

procedure TfrmEmployee.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  edtHours.Clear;
  edtRate.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

procedure TfrmEmployee.btnCalculateClick(Sender: TObject);
var
  sName : string;
  rRate, rHours : real;
begin
  sName := edtName.Text;
  rHours := StrToFloat(edtHours.Text);
  rRate := StrToFloat(edtRate.Text);
  objEmployee := TEmployee.Create(sName, rRate, rHours);
  redOutput.Clear;
  redOutput.Lines.Add(objEmployee.ToString );

  redOutput.Lines.Add('Basic Salary  : ' + #9 + FloatToStrF(objEmployee.CalcBasicSal, ffCurrency,8,2));
  redOutput.Lines.Add('Bonus Amount  : ' + #9 + FloatToStrF(objEmployee.CalcBonus, ffCurrency,8,2));
  redOutput.Lines.Add('Total Salary : ' + #9 + FloatToStrF(objEmployee.CalcTotalSal, ffCurrency,8,2));
 
  objEmployee.Free;
end;

end.
