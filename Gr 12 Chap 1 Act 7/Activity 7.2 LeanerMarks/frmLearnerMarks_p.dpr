program frmLearnerMarks_p;

uses
  Forms,
  frmLearnerMarks_u in 'frmLearnerMarks_u.pas' {frmLearnerMarks},
  clsLearner_u in 'clsLearner_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLearnerMarks, frmLearnerMarks);
  Application.Run;
end.
