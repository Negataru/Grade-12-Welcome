unit frmCricket_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, clsCricketScorecard_u, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfrmCricket = class(TForm)
    pnlDisplay: TPanel;
    redProteas: TRichEdit;
    btnSingleProteas: TButton;
    btnBoundaryProteas: TButton;
    btnSixProteas: TButton;
    redOpponent: TRichEdit;
    btnScoreOpp: TButton;
    btnBoundaryOpp: TButton;
    btnSixOpp: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    btnBatsmanPro: TButton;
    btnBatsmanOpp: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSingleProteasClick(Sender: TObject);
    procedure btnBoundaryProteasClick(Sender: TObject);
    procedure btnSixProteasClick(Sender: TObject);
    procedure btnScoreOppClick(Sender: TObject);
    procedure btnBoundaryOppClick(Sender: TObject);
    procedure btnSixOppClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure btnBatsmanProClick(Sender: TObject);
    procedure btnBatsmanOppClick(Sender: TObject);
  private
    objProteas : TCricketScorecard;
    objOpp   : TCricketScorecard;
    procedure DisplayProteas;
    procedure DisplayOpp;
  end;

var
  frmCricket: TfrmCricket;

implementation

{$R *.dfm}

procedure TfrmCricket.FormCreate(Sender: TObject);
begin
    objProteas := TCricketScorecard.Create('Proteas');
    objOpp := TCricketScorecard.Create('Opponent');
    redProteas.Paragraph.Alignment := taCenter;
    redProteas.Lines.Add('');
    DisplayProteas;
    redOpponent.Paragraph.Alignment := taCenter;
    redOpponent.Lines.Add('');
    DisplayOpp;
end;

procedure TfrmCricket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   objProteas.Free;
   objOpp.Free;
end;

procedure TfrmCricket.btnSingleProteasClick(Sender: TObject);
begin
   objProteas.AddRun;
   DisplayProteas;
end;

procedure TfrmCricket.btnBoundaryProteasClick(Sender: TObject);
begin
   objProteas.AddFour;
   DisplayProteas;
end;

procedure TfrmCricket.btnSixProteasClick(Sender: TObject);
begin
   objProteas.AddSix;
   DisplayProteas;
end;

procedure TfrmCricket.DisplayProteas;
begin
   redProteas.Lines.Clear;
   redProteas.Lines.Add(objProteas.ToString);
end;

procedure TfrmCricket.DisplayOpp;
begin
   redOpponent.Lines.Clear;
   redOpponent.Lines.Add(objOpp.ToString);
end;

procedure TfrmCricket.btnScoreOppClick(Sender: TObject);
begin
   objOpp.AddRun;
   DisplayOpp;
end;

procedure TfrmCricket.btnBoundaryOppClick(Sender: TObject);
begin
   objOpp.AddFour;
   DisplayOpp;
end;

procedure TfrmCricket.btnSixOppClick(Sender: TObject);
begin
   objOpp.AddSix;
   DisplayOpp;
end;

procedure TfrmCricket.bmbResetClick(Sender: TObject);
begin
  redProteas.Clear;
  redOpponent.Clear;
  
end;

procedure TfrmCricket.btnBatsmanProClick(Sender: TObject);
begin
  objProteas.RemoveBatsman;
  DisplayProteas;
end;

procedure TfrmCricket.btnBatsmanOppClick(Sender: TObject);
begin
  objOpp.RemoveBatsman;
  DisplayOpp;
end;

end.
