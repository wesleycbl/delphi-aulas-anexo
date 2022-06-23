program Projbanco1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UCadastroProduto in 'UCadastroProduto.pas' {FCadastroProduto},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFCadastroProduto, FCadastroProduto);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
