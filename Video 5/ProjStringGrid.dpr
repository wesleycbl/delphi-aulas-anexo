program ProjStringGrid;

uses
  Vcl.Forms,
  UTrabStringGrid in 'UTrabStringGrid.pas' {FTrabStringGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTrabStringGrid, FTrabStringGrid);
  Application.Run;
end.
