program Projexercicio2;

uses
  Vcl.Forms,
  Uexercicio2 in 'Uexercicio2.pas' {Exercicio2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TExercicio2, Exercicio2);
  Application.Run;
end.
