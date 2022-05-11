unit frmRegisterDog_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Spin, clsDog_u;

type
  TfrmDogShow = class(TForm)
    pnlDisplay: TPanel;
    lblName: TLabel;
    lblAge: TLabel;
    edtName: TEdit;
    lblWeight: TLabel;
    edtWeight: TEdit;
    btnRegister: TButton;
    redOutput: TRichEdit;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    sedAge: TSpinEdit;
    procedure btnRegisterClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
     objDog : TDog;
  public
    { Public declarations }
  end;

var
  frmDogShow: TfrmDogShow;
  
implementation

{$R *.dfm}

procedure TfrmDogShow.btnRegisterClick(Sender: TObject);
var
  sName         : string;
  iAge          : integer;
  rWeight, rFee : real;
begin
  sName  := edtName.Text;
  iAge   := sedAge.Value;
  rWeight := StrToFloat(edtWeight.Text);
  objDog := TDog.Create(sName, iAge, rWeight);
  rFee := objDog.CalculateFee;
  redOutput.Lines.Add('Dog Show');
  redOutput.Lines.Add(' ');
  redOutput.Lines.Add(sName  + ' has been registered');
  redOutput.Lines.Add('Category :         ' + #9 + objDog.DetermineCategory());
  redOutput.Lines.Add('Fee :                ' + #9 + FloatToStrF(rFee,ffCurrency,8,2));
  redOutput.Lines.Add('Food per meal :' + #9 + FloatToStrF(objDog.CalcFoodPerMeal(),ffFixed,8,0) + 'g');
  objDog.Free;
end;

procedure TfrmDogShow.bmbResetClick(Sender: TObject);
begin
  edtName.Clear;
  sedAge.Value := 0;
  edtWeight.Clear;
  redOutput.Clear;
  edtName.SetFocus;
end;

end.
