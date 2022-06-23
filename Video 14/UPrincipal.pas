unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produto1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UCadastroProduto;

procedure TForm1.Produto1Click(Sender: TObject);
begin
  if TFCadastroProduto=nil then
    Application.CreateForm(TFCadastroProduto, FCadastroProduto);
  FCadastroProduto.ShowModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
