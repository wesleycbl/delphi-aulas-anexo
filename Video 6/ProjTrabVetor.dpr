program ProjTrabVetor;

uses
  Vcl.Forms,
  UTrabVetor in 'UTrabVetor.pas' {FTrabVetor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTrabVetor, FTrabVetor);
  Application.Run;
end.
