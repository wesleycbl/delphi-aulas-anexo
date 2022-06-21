program Projlaco;

uses
  Vcl.Forms,
  ULaco in 'ULaco.pas' {FLaco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLaco, FLaco);
  Application.Run;
end.
