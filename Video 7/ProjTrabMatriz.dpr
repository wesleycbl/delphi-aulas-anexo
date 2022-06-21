program ProjTrabMatriz;

uses
  Vcl.Forms,
  UTrabMatriz in 'UTrabMatriz.pas' {FTrabMatriz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTrabMatriz, FTrabMatriz);
  Application.Run;
end.
