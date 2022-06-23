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
    procedure BBTPesquisarClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btRemoverClick(Sender: TObject);
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
          x := 'INSERT INTO TBPRODUTO (VALORVENDAPROD, ESTOQUEPROD, NOMEPROD)' +
            ' VALUES (' + Edtvalorvendaprod.Text + ',' + Edtestoqueprod.Text +
            ',' + QuotedStr(Edtnomeprod.Text) + ')';
        end;
      1:
        begin
          x := ' UPDATE TBPRODUTO ' + ' SET' + ' VALORVENDAPROD = ' +
            Edtvalorvendaprod.Text + ',' + ' ESTOQUEPROD = ' +
            Edtestoqueprod.Text + ',' + ' NOMEPROD = ' +
            QuotedStr(Edtnomeprod.Text) + ' WHERE (PKPROD = ' +
            Edtpkprod.Text + ')';
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
end;

end.
