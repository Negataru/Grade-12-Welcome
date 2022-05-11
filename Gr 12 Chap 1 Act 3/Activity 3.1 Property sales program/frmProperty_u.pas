unit frmProperty_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  ComCtrls, clsProperty_u;

type
  TfrmEmployee = class(TForm)
    pnlInput: TPanel;
    lblCostPrice: TLabel;
    edtCostPrice: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnCalculate: TButton;
    lblName: TLabel;
    edtName: TEdit;
    edtPercComm: TEdit;
    lblPerc: TLabel;
    procedure bmbResetClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
     objProperty : TProperty;
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
  edtCostPrice.Clear;
  edtPercComm.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

procedure TfrmEmployee.btnCalculateClick(Sender: TObject);
begin
  objProperty := TProperty.Create(edtName.Text, StrToFloat(edtCostPrice.Text), StrToFloat(edtPercComm.Text));
  redOutput.Clear;
  redOutput.Lines.Add('Name : ' + objProperty.GetOwnerName);
  redOutput.Lines.Add('Cost Price :            ' + FloatToStrF(objProperty.GetCostPrice,ffCurrency,12,2));
  redOutput.Lines.Add('Percentage Commission : ' + FloatToStrF(objProperty.CalculateComm, ffCurrency,12,2));
  redOutput.Lines.Add('Selling Price :         ' + FloatToStrF(objProperty.CalculateSellPrice, ffCurrency,12,2));
  objProperty.Free;   
end;

end.
