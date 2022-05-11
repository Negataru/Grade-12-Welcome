unit frmQuote_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, clsQuote_u, XPMan;

type
  TfrmQuote = class(TForm)
    pnlInput: TPanel;
    lblLength: TLabel;
    edtLength: TEdit;
    pnlOutput: TPanel;
    bmbGenerateQuote: TBitBtn;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblWidth: TLabel;
    edtWidth: TEdit;
    redOutput: TRichEdit;
    procedure bmbGenerateQuoteClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
     objQuote : TQuoteCalculator;
  public
    { Public declarations }
  end;

var
  frmQuote: TfrmQuote;

implementation

{$R *.dfm}

procedure TfrmQuote.bmbGenerateQuoteClick(Sender: TObject);

begin
  objQuote := TQuoteCalculator.Create;
  objQuote.SetLength(StrToFloat(edtLength.Text));
  objQuote.SetWidth(StrToFloat(edtWidth.Text));
  redOutput.Lines.Add('Quote for tiling a room');
  redOutput.Lines.Add('');
  redOutput.Lines.Add('Total number of boxes of tiles : ' + #9 + IntToStr(objQuote.CalculateNumBoxes));
  redOutput.Lines.Add('Cost of material (tiles) : ' + #9 + FloatToStrF(objQuote.CalculateMaterialCost, ffCurrency,8,2));
  redOutput.Lines.Add('Cost of labour : ' + #9 + FloatToStrF(objQuote.CalculateLabourCost, ffCurrency,8,2));
  redOutput.Lines.Add('Total cost : ' + #9 + FloatToStrF(objQuote.CalculateTotalCost, ffCurrency,8,2));
  objQuote.Free;
end;

procedure TfrmQuote.bmbResetClick(Sender: TObject);
begin
  edtLength.Clear;
  edtWidth.Clear;
  redOutput.Clear;
  edtLength.SetFocus;
end;

procedure TfrmQuote.FormCreate(Sender: TObject);
begin
   redOutput.Paragraph.Tabcount := 1;
   redOutput.Paragraph.Tab[0] := 200;
   redOutput.SelAttributes.Name := 'Lucida Console';
   redOutput.SelAttributes.Size := 10;
end;

end.
