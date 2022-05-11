unit frmTrip_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Spin, clsTrip_u;

type
  TfrmTrip = class(TForm)
    pnlDisplay: TPanel;
    lblDate: TLabel;
    lblDistance: TLabel;
    edtDate: TEdit;
    btnProcess: TButton;
    redOutput: TRichEdit;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    sedDistance: TSpinEdit;
    lblDriver: TLabel;
    edtDriver: TEdit;
    procedure btnProcessClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
    objTrip : TTrip;
  public
    { Public declarations }
  end;

var
  frmTrip: TfrmTrip;

implementation

{$R *.dfm}

procedure TfrmTrip.btnProcessClick(Sender: TObject);
var
   rFuelPricePerKM, rFuelCost, rRatePerHour, rDriverAmount, rHours : real ;
begin
  objTrip := TTrip.Create(edtDate.Text, edtDriver.Text, sedDistance.Value);
  rHours := StrToFloat(InputBox('Duration of trip', 'Number of hours? ', ''));
  objTrip.SetHours(rHours);
  rFuelPricePerKM := 1.30;  // fuel consumption of average family car
  rFuelCost := objTrip.CalcFuelCost(rFuelPricePerKM);
    
  rRatePerHour := 50.20;
  rDriverAmount := objTrip.CalcDriverCost(rRatePerHour);

  redOutput.Lines.Add ( 'Date : ' + objTrip.GetDate());
  redOutput.Lines.Add ( objTrip.GetDriver() + ' earned ' + FloatToStrF(rDriverAmount, ffCurrency, 8, 2));
  redOutput.Lines.Add ( 'Cost of fuel for the trip: ' + FloatToStrF(rFuelCost, ffCurrency, 8, 2)) ;
  redOutput.Lines.Add ( 'Total cost: ' + FloatToStrF(rFuelCost + rDriverAmount, ffCurrency, 8, 2)) ;
  objTrip.Free;
end;

procedure TfrmTrip.bmbResetClick(Sender: TObject);
begin
  edtDate.Clear;
  edtDriver.Clear;
  sedDistance.Value := 0;
  redOutput.Clear;
  edtDate.SetFocus;
end;

end.
