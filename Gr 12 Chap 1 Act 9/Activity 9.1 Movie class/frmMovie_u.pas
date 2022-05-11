unit frmMovie_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, clsMovie_u, ComCtrls, Spin;

type
  TfrmDate = class(TForm)
    pnlInput: TPanel;
    lblTitle: TLabel;
    edtTitle: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnProcess: TButton;
    lblRating: TLabel;
    sedRating: TSpinEdit;
    procedure bmbResetClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
  
  private
    objMovie : TMovie;
  public
    { Public declarations }
  end;

var
  frmDate: TfrmDate;

implementation

{$R *.dfm}

procedure TfrmDate.bmbResetClick(Sender: TObject);
begin
  edtTitle.Clear;
  sedRating.Value := 0;
  redOutput.Clear;
  edtTitle.SetFocus;
end;

procedure TfrmDate.btnProcessClick(Sender: TObject);
var
  sTitle : string;
  iRating: integer;
begin
  sTitle := edtTitle.Text;
  iRating := sedRating.Value;
  objMovie := TMovie.Create(sTitle, iRating);
  redOutput.Clear;
  redOutput.Lines.Add(objMovie.ToString );
  redOutput.Lines.Add('Popularity: ' + objMovie.DeterminePopularity);
  objMovie.Free;
end;



end.
