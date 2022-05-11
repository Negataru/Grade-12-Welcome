unit clsScoreboard_u;

interface

type
   TScoreboard = class(TObject)
   private
      iScore : integer ;
      sTeamName : string ;
   public
      constructor Create(sTeam : string);
      procedure ScoreTry ;
      procedure Convert ;
      procedure DropKick ;
      function ToString: string ;
   end ;

implementation

{ TScoreboard }
Uses Sysutils ;

procedure TScoreboard.Convert;
begin
   iScore := iScore + 2 ;
end;

constructor TScoreboard.Create(sTeam: string);
begin
   iScore := 0 ;
   sTeamName := sTeam ;
end;

procedure TScoreboard.DropKick;
begin
   iScore := iScore + 3 ;
end;

procedure TScoreboard.ScoreTry;
begin
   iScore := iScore + 5 ;
end;

function TScoreboard.ToString: string;
begin
   ToString := sTeamName + ': ' + IntToStr(iScore) ;
end;

end.
