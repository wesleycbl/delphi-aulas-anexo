unit UCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFCadastroProduto = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    PConsulta: TPanel;
    CBRegra: TComboBox;
    BBTPesquisar: TBitBtn;
    EdtPesquisa: TEdit;
    procedure BBTPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroProduto: TFCadastroProduto;

implementation

{$R *.dfm}

uses UDM;

procedure TFCadastroProduto.BBTPesquisarClick(Sender: TObject);
var
  x, y: string;
begin
  x := 'select * from tbproduto';
  y := trim(EdtPesquisa.Text);

  if y <> '' then
    case CBRegra.ItemIndex of
      1:
        y := ' where pkprod=' + y;
      2:
        y := ' where upper(nomeprod) like upper(' + QuotedStr(y + '%') + ')';
    end;

  x := x + y;

  ShowMessage(x);

  dm.SqlProduto.Active := false;
  dm.SqlProduto.SQl.Clear;
  dm.SqlProduto.SQl.Add(x);
  dm.SqlProduto.Active := true;

end;

end.
