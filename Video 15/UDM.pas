unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDTransaction: TFDTransaction;
    SqlProduto: TFDQuery;
    DSSQLProduto: TDataSource;
    FDTransactionAltera: TFDTransaction;
    SQLModifica: TFDQuery;
    SQLGeral: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure executaSQL(sqle: string; Q: TFDQuery);
    function limparVirgula(num: string): string;
    function LimpaEdit(Edt: TCustomEdit; K: Char; C: Char = '#';
      sinal: Char = '+'): Char;
    function salvaChave(chave: string): string;
  end;

var
  DM: TDM;

const
  STbProduto = 'select ' + 'p.*, c.nomecategoria, f.nomefabricante ' +
    'from tbproduto p' +
    ' left join tbcategoria  c  on c.pkcategoria  = p.fkcategoria' +
    ' left join tbfabricante f  on f.pkfabricante = p.fkfabricante';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDM }

procedure TDM.executaSQL(sqle: string; Q: TFDQuery);
begin
  sqle := trim(sqle);
  with Q do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqle);

    if UpperCase(Copy(sqle, 1, 6)) = 'SELECT' then
      Open
    else
      Q.ExecSQL;
  end;

end;

function TDM.LimpaEdit(Edt: TCustomEdit; K, C, sinal: Char): Char;
var
  B, I: Integer;
begin
  if sinal = '-' then
  begin
    if not(K in ['0' .. '9', #8, sinal, C, #13]) then
    begin
      LimpaEdit := #0;
      Exit;
    end;
  end
  else if not(K in ['0' .. '9', #8, C, #13]) then
  begin
    LimpaEdit := #0;
    Exit;
  end;

  B := 0;
  for I := 1 to Length(Edt.Text) do
    if Edt.Text[I] = C then
      B := B + 1;

  if (B > 0) then
    if (K in ['0' .. '9', #8]) then
      LimpaEdit := K
    else
    begin
      K := #0;
      LimpaEdit := (#0);
    end;

  if (sinal = '-') and (Edt.Text <> '') and (K = '-') then
    LimpaEdit := (#0)
  else
    LimpaEdit := K;

end;

function TDM.limparVirgula(num: string): string;
var
  x: string;
  I: Integer;
begin
  num := trim(num);

  if num = '' then
    num := '0';

  for I := 1 to Length(num) do
    if num[I] = ',' then
      num[I] := '.';
  limparVirgula := num;

end;

function TDM.salvaChave(chave: string): string;
begin
  chave := trim(chave);
  if chave = '' then
    chave := 'null';

  salvaChave := chave;
end;

end.
