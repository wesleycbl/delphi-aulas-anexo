unit UCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFCadastroProduto = class(TForm)
    PDados: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PConsulta: TPanel;
    CBRegra: TComboBox;
    BBTPesquisar: TBitBtn;
    EdtPesquisa: TEdit;
    PControle: TPanel;
    btNovo: TButton;
    btAlterar: TButton;
    btRemover: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    btSair: TButton;
    DBEdit5: TDBEdit;
    Edtpkprod: TEdit;
    Edtnomeprod: TEdit;
    Edtvalorvendaprod: TEdit;
    Edtestoqueprod: TEdit;
    Label5: TLabel;
    EdtFkcategoria: TEdit;
    lbNomeCategoria: TLabel;
    Label6: TLabel;
    CBNomeFabricante: TComboBox;
    CBFKFabricante: TComboBox;
    procedure BBTPesquisarClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btRemoverClick(Sender: TObject);
    procedure EdtFkcategoriaExit(Sender: TObject);
    procedure carregaFabricante;
    procedure FormActivate(Sender: TObject);
    procedure CBNomeFabricanteExit(Sender: TObject);
    procedure EdtestoqueprodKeyPress(Sender: TObject; var Key: Char);
    procedure EdtvalorvendaprodKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure CBRegraExit(Sender: TObject);
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
  FCadastroProduto: TFCadastroProduto;
  acaogeral: integer = 3;

implementation

{$R *.dfm}

uses UDM;

procedure TFCadastroProduto.BBTPesquisarClick(Sender: TObject);
var
  x, y: string;
begin
  x := STbProduto;
  y := trim(EdtPesquisa.Text);

  if y <> '' then
    case CBRegra.ItemIndex of
      1:
        y := ' where pkprod=' + y;
      2:
        y := ' where upper(nomeprod) like upper(' + QuotedStr(y + '%') + ')';
      3:
        y := ' where p.fkcategoria= ' + y;
      4:
        y := ' where upper(c.nomecategoria) like upper(' +
          QuotedStr(y + '%') + ')';
    end;

  x := x + y;

  dm.executaSQL(x, dm.SqlProduto);
end;

procedure TFCadastroProduto.btAlterarClick(Sender: TObject);
begin
  acaogeral := 1;
  controleBotoes(acaogeral);
end;

procedure TFCadastroProduto.btCancelarClick(Sender: TObject);
begin
  acaogeral := 3;
  controleBotoes(acaogeral);
end;

procedure TFCadastroProduto.btNovoClick(Sender: TObject);
begin
  acaogeral := 0;

  controleBotoes(acaogeral);
end;

procedure TFCadastroProduto.btRemoverClick(Sender: TObject);
var
  x: string;
begin
  try

    if dm.FDTransactionAltera.TransactionIntf.Active then
      dm.FDTransactionAltera.Rollback;
    dm.FDTransactionAltera.StartTransaction;

    x := ' DELETE from TBPRODUTO  WHERE (PKPROD = ' + Edtpkprod.Text + ')';

    dm.executaSQL(x, dm.SQLModifica);
    dm.FDTransactionAltera.Commit;
    BBTPesquisarClick(nil);
    acaogeral := 2;
    controleBotoes(acaogeral);
  except
    dm.FDTransactionAltera.Rollback;
    ShowMessage('Erro ao Salvar dados !');
  end;
end;

procedure TFCadastroProduto.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TFCadastroProduto.btSalvarClick(Sender: TObject);
var
  x: string;
begin

  try

    if dm.FDTransactionAltera.TransactionIntf.Active then
      dm.FDTransactionAltera.Rollback;
    dm.FDTransactionAltera.StartTransaction;

    case acaogeral of
      0:
        begin
          x := 'INSERT INTO TBPRODUTO (VALORVENDAPROD, ESTOQUEPROD, NOMEPROD, FKCATEGORIA, FKFABRICANTE)'
            + ' VALUES (' + dm.limparVirgula(Edtvalorvendaprod.Text) + ',' +
            Edtestoqueprod.Text + ',' + QuotedStr(Edtnomeprod.Text) + ',' +
            dm.salvaChave(EdtFkcategoria.Text) + ',' +
            dm.salvaChave(CBFKFabricante.Text) + ')';
        end;
      1:
        begin
          x := ' UPDATE TBPRODUTO ' + ' SET' + '  VALORVENDAPROD = ' +
            dm.limparVirgula(Edtvalorvendaprod.Text) + ', ESTOQUEPROD = ' +
            Edtestoqueprod.Text + ', NOMEPROD = ' + QuotedStr(Edtnomeprod.Text)
            + ', FKCATEGORIA = ' + dm.salvaChave(EdtFkcategoria.Text) +
            ', FKFABRICANTE = ' + dm.salvaChave(CBFKFabricante.Text) +
            ' WHERE (PKPROD = ' + Edtpkprod.Text + ')';
        end;
    end;

    dm.executaSQL(x, dm.SQLModifica);
    dm.FDTransactionAltera.Commit;
    BBTPesquisarClick(nil);
    acaogeral := 3;
    controleBotoes(3);
  except
    dm.FDTransactionAltera.Rollback;
    ShowMessage('Erro ao Salvar dados !');
  end;
end;

procedure TFCadastroProduto.carregaFabricante;
var
  x: string;
begin
  x := 'select * from tbfabricante order by nomefabricante';
  dm.executaSQL(x, dm.SQLGeral);
  CBNomeFabricante.Items.Clear;
  CBFKFabricante.Items.Clear;

  while not dm.SQLGeral.Eof do
  begin
    CBFKFabricante.Items.Add(dm.SQLGeral.FieldByName('pkfabricante').AsString);
    CBNomeFabricante.Items.Add(dm.SQLGeral.FieldByName('nomefabricante')
      .AsString);
    dm.SQLGeral.Next;
  end;

end;

procedure TFCadastroProduto.CBNomeFabricanteExit(Sender: TObject);
begin
  CBFKFabricante.ItemIndex := CBNomeFabricante.ItemIndex;

end;

procedure TFCadastroProduto.CBRegraExit(Sender: TObject);
begin
  EdtPesquisa.Text := '';
end;

procedure TFCadastroProduto.controleBotoes(acao: integer = 0);
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
        if Edtnomeprod.CanFocus then
          Edtnomeprod.SetFocus;
      end;
    1:
      begin
        btSalvar.Enabled := true;
        btCancelar.Enabled := true;
        if Edtnomeprod.CanFocus then
          Edtnomeprod.SetFocus;

      end;
  else
    begin
      btNovo.Enabled := true;
      if dm.SqlProduto.FieldByName('pkprod').AsString <> '' then
      begin
        btAlterar.Enabled := true;
        btRemover.Enabled := true;
      end;
    end;
  end;
end;

procedure TFCadastroProduto.DBEdit5Change(Sender: TObject);
begin
  if acaogeral in [0, 1] then
    exit;
  mostra;
end;

procedure TFCadastroProduto.EdtestoqueprodKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := dm.LimpaEdit((Sender as TCustomEdit), Key);
end;

procedure TFCadastroProduto.EdtFkcategoriaExit(Sender: TObject);
var
  x: string;
begin
  x := trim(EdtFkcategoria.Text);
  if x = '' then
  begin
    lbNomeCategoria.Caption := '';
    exit;
  end;
  x := 'select * from tbcategoria where pkcategoria =' + x;
  dm.executaSQL(x, dm.SQLGeral);

  if dm.SQLGeral.FieldByName('pkcategoria').AsString = '' then
  begin
    ShowMessage('Categoria não encontrada !');
    if EdtFkcategoria.CanFocus then
      EdtFkcategoria.SetFocus;
    exit;
  end;
  lbNomeCategoria.Caption := dm.SQLGeral.FieldByName('nomecategoria').AsString;

end;

procedure TFCadastroProduto.EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  case CBRegra.ItemIndex of
    1, 3:
      Key := dm.LimpaEdit((Sender as TCustomEdit), Key);

  end;

end;

procedure TFCadastroProduto.EdtvalorvendaprodKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := dm.LimpaEdit((Sender as TCustomEdit), Key, ',');
end;

procedure TFCadastroProduto.FormActivate(Sender: TObject);
begin
  carregaFabricante;
  BBTPesquisarClick(Sender);
end;

procedure TFCadastroProduto.limpar;
var
  I: integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TEdit then
      TEdit(Components[I]).Text := '';

    // if Components[I] is TComboBox then
    // TComboBox(Components[I]).ItemIndex := -1;

  end;
end;

procedure TFCadastroProduto.mostra;
begin

  if (dm.SqlProduto.Active = false) or
    (dm.SqlProduto.FieldByName('pkprod').AsString = '') then
  begin
    limpar;
    exit;
  end;

  Edtpkprod.Text := IntToStr(dm.SqlProduto.FieldByName('pkprod').AsInteger);
  Edtnomeprod.Text := dm.SqlProduto.FieldByName('nomeprod').AsString;
  Edtestoqueprod.Text := dm.SqlProduto.FieldByName('estoqueprod').AsString;
  Edtvalorvendaprod.Text := formatFloat('#0.00',
    dm.SqlProduto.FieldByName('valorvendaprod').AsFloat);
  EdtFkcategoria.Text := dm.SqlProduto.FieldByName('fkcategoria').AsString;
  lbNomeCategoria.Caption := dm.SqlProduto.FieldByName('nomecategoria')
    .AsString;
  CBFKFabricante.ItemIndex := CBFKFabricante.Items.IndexOf
    (dm.SqlProduto.FieldByName('fkfabricante').AsString);
  CBNomeFabricante.ItemIndex := CBFKFabricante.ItemIndex;
end;

end.
