unit frmDate_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  ComCtrls, clsDate_u;

type
  TfrmDate = class(TForm)
    pnlInput: TPanel;
    lblDate: TLabel;
    edtDate: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnDayNumber: TButton;
    procedure bmbResetClick(Sender: TObject);
    procedure btnDayNumberClick(Sender: TObject);
  private
     objDate : TDate;
  public
    { Public declarations }
  end;

var
  frmDate: TfrmDate;

implementation

{$R *.dfm}

procedure TfrmDate.bmbResetClick(Sender: TObject);
begin
  edtDate.Clear;
  redOutput.Clear;
  edtDate.SetFocus;
end;

procedure TfrmDate.btnDayNumberClick(Sender: TObject);
begin
  {Note: you should actually perform data validation to ensure the string
   passed to the object is in the format dd/mm/yy}
  objDate := TDate.Create(edtDate.Text);
  redOutput.Clear;
  redOutput.Lines.Add('The date is: ' + objDate.LongDate);
  redOutput.Lines.Add('Day ' + IntToStr(objDate.GetDay)+ ' of month ' +
                      IntToStr(objDate.GetMonth) + ' is day number ' +
                      IntToStr(objDate.DaysPassedInYear) + ' of year ' +
                      IntToStr(objDate.GetYear));
  objDate.Free;                      
end;

end.
