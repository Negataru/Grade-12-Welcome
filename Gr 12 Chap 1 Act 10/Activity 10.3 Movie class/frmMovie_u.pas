unit frmMovie_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, clsMovie_u, ComCtrls, Spin;

type
  TfrmDate = class(TForm)
    pnlInput: TPanel;
    lblTitleA: TLabel;
    edtTitleA: TEdit;
    pnlOutput: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    redOutput: TRichEdit;
    btnProcess: TButton;
    lblRatingA: TLabel;
    sedRatingA: TSpinEdit;
    lblLabelB: TLabel;
    edtTitleB: TEdit;
    lblRatingB: TLabel;
    sedRatingB: TSpinEdit;
    procedure bmbResetClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
  
  private
    objMovieA : TMovie;
    objMovieB : TMovie;
  public
    { Public declarations }
  end;

var
  frmDate: TfrmDate;

implementation

{$R *.dfm}

procedure TfrmDate.bmbResetClick(Sender: TObject);
begin
  edtTitleA.Clear;
  sedRatingA.Value := 0;
  edtTitleB.Clear;
  sedRatingB.Value := 0;
  redOutput.Clear;
  edtTitleA.SetFocus;
end;

procedure TfrmDate.btnProcessClick(Sender: TObject);
begin
  objMovieA := TMovie.Create(edtTitleA.Text, sedRatingA.Value);
  objMovieB := TMovie.Create(edtTitleB.Text, sedRatingB.Value);
  redOutput.Clear;
  redOutput.Lines.Add(objMovieA.ToString );
  redOutput.Lines.Add(objMovieB.ToString );
  redOutput.Lines.Add('Popularity ' + objMovieA.GetTitle + ': ' + objMovieA.DeterminePopularity);
  redOutput.Lines.Add('Popularity ' + objMovieB.GetTitle + ': ' + objMovieB.DeterminePopularity);
  if (objMovieA.GetRating() = objMovieB.GetRating()) then
     redOutput.Lines.Add(objMovieA.GetTitle() + ' is just as popular as ' +  objMovieB.GetTitle())
  else
      if (objMovieA.GetRating() > objMovieB.GetRating()) then
         redOutput.Lines.Add(objMovieA.GetTitle() + ' is more popular than ' +  objMovieB.GetTitle())
      else
          redOutput.Lines.Add(objMovieB.GetTitle() + ' is more popular than ' +  objMovieA.GetTitle());
  objMovieA.Free;
  objMovieB.Free;
end;

end.
