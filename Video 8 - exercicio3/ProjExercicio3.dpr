program ProjExercicio3;

uses
  Vcl.Forms,
  UExercicio3 in 'UExercicio3.pas' {FExercicio3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFExercicio3, FExercicio3);
  Application.Run;
end.
