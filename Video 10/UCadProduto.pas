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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PControle: TPanel;
    btNovo: TButton;
    btAlterar: TButton;
    btRemover: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    edtCodProd: TEdit;
    edtNome: TEdit;
    edtEstoque: TEdit;
    edtValor: TEdit;
    btSair: TButton;
    DBEdit1: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btRemoverClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
    procedure mostra;
    // comando CRTL + Shift + C
    procedure limpar;
    procedure controleBotoes(acao: integer = 0);
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;
  arquivo: string = 'C:\Projetos Anexo\Video 9\db\produto.xml';
  acaogeral: integer = 3;

implementation

{$R *.dfm}

procedure TFCadProduto.btAlterarClick(Sender: TObject);
begin
  acaogeral := 1;
  controleBotoes(acaogeral);
end;

procedure TFCadProduto.btCancelarClick(Sender: TObject);
begin
  acaogeral := 3;
  controleBotoes(acaogeral);
end;

procedure TFCadProduto.btNovoClick(Sender: TObject);
begin
  acaogeral := 0;

  controleBotoes(acaogeral);
end;

procedure TFCadProduto.btRemoverClick(Sender: TObject);
begin
  clProduto.Delete;
  acaogeral := 2;
  controleBotoes(acaogeral);
end;

procedure TFCadProduto.btSairClick(Sender: TObject);
begin
  close;
  acaogeral := 5;
  controleBotoes(acaogeral);
end;

procedure TFCadProduto.btSalvarClick(Sender: TObject);
begin

  try
    case acaogeral of
      0:
        begin
          clProduto.Append;
        end;
      1:
        begin
          clProduto.Edit;
        end;
    end;

    clProduto.FieldByName('CodProd').AsInteger :=
      StrToIntDef(edtCodProd.Text, 0);

    clProduto.FieldByName('NomeProd').AsString := edtNome.Text;

    clProduto.FieldByName('EstoqueProd').AsInteger :=
      StrToIntDef(edtEstoque.Text, 0);

    clProduto.FieldByName('ValorProd').AsFloat :=
      StrToFloatDef(edtValor.Text, 0);

    clProduto.Post;

    acaogeral := 3;
    controleBotoes(3);
  except
    ShowMessage('Erro ao Salvar dados !');
  end;

end;

procedure TFCadProduto.controleBotoes(acao: integer = 0);
begin
  btNovo.Enabled := false;
  btAlterar.Enabled := false;
  btRemover.Enabled := false;
  btSalvar.Enabled := false;
  btCancelar.Enabled := false;
  btSair.Enabled := true;

  case acao of
    0:
      begin
        limpar();
        btSalvar.Enabled := true;
        btCancelar.Enabled := true;
        if edtNome.CanFocus then
          edtNome.SetFocus;
      end;
    1:
      begin
        btSalvar.Enabled := true;
        btCancelar.Enabled := true;
        if edtNome.CanFocus then
          edtNome.SetFocus;

      end;
  else
    begin
      btNovo.Enabled := true;
      if clProduto.RecordCount > 0 then
      begin
        btAlterar.Enabled := true;
        btRemover.Enabled := true;
      end;
    end;
  end;
end;

procedure TFCadProduto.DBEdit1Change(Sender: TObject);
begin
  if acaogeral in [0, 1] then
    exit;
  mostra;
end;

procedure TFCadProduto.FormActivate(Sender: TObject);
begin
  if FileExists(arquivo) then
    clProduto.LoadFromFile(arquivo);

end;

procedure TFCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  clProduto.SaveToFile(arquivo);
end;

procedure TFCadProduto.limpar;
begin
  edtCodProd.Text := '';
  edtNome.Text := '';
  edtEstoque.Text := '';
  edtValor.Text := '';
end;

procedure TFCadProduto.mostra;
begin

  if (clProduto.Active = false) or (clProduto.RecordCount = 0) then
  begin
    limpar;
    exit;
  end;

  edtCodProd.Text := IntToStr(clProduto.FieldByName('CodProd').AsInteger);
  edtNome.Text := clProduto.FieldByName('NomeProd').AsString;
  edtEstoque.Text := clProduto.FieldByName('EstoqueProd').AsString;
  edtValor.Text := formatFloat('#0.00',
    clProduto.FieldByName('ValorProd').AsFloat);
end;

end.
