unit clsCricketScorecard_u;

interface

type
   TCricketScorecard = class(TObject)
   private
      fScore : integer;
      fBatsmanOut :integer;
      fTeamName : string;
   public
      constructor Create(sTeam : string);
      procedure AddRun;
      procedure AddFour;
      procedure AddSix;
      procedure RemoveBatsman;
      function ToString: string;
   end;

implementation

{ TCricketScorecard }
uses SysUtils;

procedure TCricketScorecard.AddSix;
begin
   fScore := fScore + 6;
end;

constructor TCricketScorecard.Create(sTeam: string);
begin
   fScore := 0;
   fTeamName := sTeam;
   fBatsmanOut := 0;
end;

procedure TCricketScorecard.AddRun;
begin
   fScore := fScore + 1;
end;

procedure TCricketScorecard.AddFour;
begin
   fScore := fScore + 4;
end;

procedure TCricketScorecard.RemoveBatsman;
begin
   fBatsmanOut := fBatsmanOut + 1;
end;

function TCricketScorecard.ToString: string;
begin
   ToString := fTeamName + #13 + IntToStr(fScore) + #13 + 'Batsman out: ' + IntToStr(fBatsmanOut);
end;

end.
