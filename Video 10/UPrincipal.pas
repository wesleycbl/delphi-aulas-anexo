unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produto1: TMenuItem;
    Categoria1: TMenuItem;
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
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UCadProduto;

procedure TFPrincipal.Produto1Click(Sender: TObject);
begin
  FCadProduto.ShowModal;
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
     close;
end;

end.
