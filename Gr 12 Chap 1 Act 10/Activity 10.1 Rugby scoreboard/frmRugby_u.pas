unit frmRugby_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsRugbyScorecard_u, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfrmRugby = class(TForm)
    pnlBokke: TPanel;
    redBokke: TRichEdit;
    btnScoreBokke: TButton;
    btnConvertBokke: TButton;
    btnDropKickBokke: TButton;
    redOpponent: TRichEdit;
    btnScoreOpp: TButton;
    btnConvertOpp: TButton;
    btnDropKickOpp: TButton;
    bmbClose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnScoreBokkeClick(Sender: TObject);
    procedure btnConvertBokkeClick(Sender: TObject);
    procedure btnDropKickBokkeClick(Sender: TObject);
    procedure btnScoreOppClick(Sender: TObject);
    procedure btnConvertOppClick(Sender: TObject);
    procedure btnDropKickOppClick(Sender: TObject);
  private
    objBokke : TRugbyScorecard;
    objOpp   : TRugbyScorecard;
    procedure DisplayBokke;
    procedure DisplayOpp;
  end;

var
  frmRugby: TfrmRugby;

implementation

{$R *.dfm}

procedure TfrmRugby.FormCreate(Sender: TObject);
begin
    objBokke := TRugbyScorecard.Create('Bokke');
    objOpp := TRugbyScorecard.Create('Opponent');
    redBokke.Paragraph.Alignment := taCenter;
    redBokke.Lines.Add('');
    DisplayBokke;
    redOpponent.Paragraph.Alignment := taCenter;
    redOpponent.Lines.Add('');
    DisplayOpp;
end;

procedure TfrmRugby.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   objBokke.Free;
   objOpp.Free;
end;

procedure TfrmRugby.btnScoreBokkeClick(Sender: TObject);
begin
   objBokke.ScoreTry;
   btnConvertBokke.Enabled := true;
   DisplayBokke;
end;

procedure TfrmRugby.btnConvertBokkeClick(Sender: TObject);
begin
   objBokke.Convert;
   btnConvertBokke.Enabled := False;
   DisplayBokke;
end;

procedure TfrmRugby.btnDropKickBokkeClick(Sender: TObject);
begin
   objBokke.DropKick;
   DisplayBokke;
end;

procedure TfrmRugby.DisplayBokke;
begin
   redBokke.Lines.Clear;
   redBokke.Lines.Add(objBokke.ToString);
end;

procedure TfrmRugby.DisplayOpp;
begin
   redOpponent.Lines.Clear;
   redOpponent.Lines.Add(objOpp.ToString);
end;

procedure TfrmRugby.btnScoreOppClick(Sender: TObject);
begin
   objOpp.ScoreTry;
   btnConvertOpp.Enabled := true;
   DisplayOpp;
end;

procedure TfrmRugby.btnConvertOppClick(Sender: TObject);
begin
   objOpp.Convert;
   btnConvertOpp.Enabled := false;
   DisplayOpp;
end;

procedure TfrmRugby.btnDropKickOppClick(Sender: TObject);
begin
   objOpp.DropKick;
   DisplayOpp;
end;

end.
