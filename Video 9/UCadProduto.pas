unit UCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadProduto = class(TForm)
    PDados: TPanel;
    clProduto: TClientDataSet;
    DBGrid1: TDBGrid;
    DSCLProduto: TDataSource;
    clProdutoCodProd: TIntegerField;
    clProdutoNomeProd: TStringField;
    clProdutoEstoqueProd: TIntegerField;
    clProdutoValorProd: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;
  arquivo: string = 'C:\Projetos Anexo\Video 9\db\produto.xml';

implementation

{$R *.dfm}

procedure TFCadProduto.FormActivate(Sender: TObject);
begin
  if FileExists(arquivo) then
    clProduto.LoadFromFile(arquivo);

end;

procedure TFCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  clProduto.SaveToFile(arquivo);
end;

end.
