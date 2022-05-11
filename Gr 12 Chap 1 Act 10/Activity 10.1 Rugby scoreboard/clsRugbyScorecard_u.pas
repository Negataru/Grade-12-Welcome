unit clsRugbyScorecard_u;

interface

type
   TRugbyScorecard = class(TObject)
   private
      fScore : integer;
      fTeamName : string;
   public
      constructor Create(sTeam : string);
      procedure ScoreTry;
      procedure Convert;
      procedure DropKick;
      function ToString: string;
   end;

implementation

{ TRugbyScorecard }
uses SysUtils;

procedure TRugbyScorecard.Convert;
begin
   fScore := fScore + 2;
end;

constructor TRugbyScorecard.Create(sTeam: string);
begin
   fScore := 0;
   fTeamName := sTeam;
end;

procedure TRugbyScorecard.DropKick;
begin
   fScore := fScore + 3;
end;

procedure TRugbyScorecard.ScoreTry;
begin
   fScore := fScore + 5;
end;

function TRugbyScorecard.ToString: string;
begin
   ToString := fTeamName + #13 + IntToStr(fScore);
end;

end.
