unit frmCircle_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, clsCircle_u, Spin;

type
  TfrmCircle = class(TForm)
    pnlDisplay: TPanel;
    lblRadius: TLabel;
    edtRadius: TEdit;
    btnCalculate: TButton;
    redOutput: TRichEdit;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    objCircle : TCircle;
  public
    { Public declarations }
  end;

var
  frmCircle: TfrmCircle;

implementation

{$R *.dfm}

procedure TfrmCircle.btnCalculateClick(Sender: TObject);
var
  rRadius, rArea, rCircum : real;
begin
  rRadius := StrToFloat(edtRadius.Text);
  objCircle := TCircle.Create(rRadius);
  objCircle.CalculateCircum;
  objCircle.CalculateArea;
  redOutput.Lines.Add('Circle information');
  redOutput.Lines.Add(' ');
  redOutput.Lines.Add('Radius: ' + FloatToStrF(rRadius,ffFixed,8,1) + ' cm');
  redOutput.Lines.Add('Circumference: ' + FloatToStrF(objCircle.GetCircum,ffFixed,8,0) + ' cm');
  redOutput.Lines.Add('Area: ' + FloatToStrF(objCircle.GetArea,ffFixed,8,0) + ' cm' + #178 );
  objCircle.Free;
end;

procedure TfrmCircle.bmbResetClick(Sender: TObject);
begin
  edtRadius.Clear;
  redOutput.Clear;
  edtRadius.SetFocus;
end;

end.
