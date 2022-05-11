unit frmConvertWords_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, clsNumber_u;

type
  TfrmConvertNumbers = class(TForm)
    edtWord: TEdit;
    lblMsg: TLabel;
    btnConvert: TButton;
    pnlDisplay: TPanel;
    edtPrefix: TEdit;
    lblMsgPre: TLabel;
    procedure btnConvertClick(Sender: TObject);
  private
    objNumber : TNumber;
  public
    { Public declarations }
  end;

var
  frmConvertNumbers: TfrmConvertNumbers;

implementation

{$R *.dfm}

procedure TfrmConvertNumbers.btnConvertClick(Sender: TObject);
var
  sNumber : string;
begin
  objNumber := TNumber.Create(edtPrefix.Text, edtWord.Text);
  sNumber := objNumber.GetNumber;
  pnlDisplay.Caption := sNumber;
  objNumber.Free;
end;

end.
