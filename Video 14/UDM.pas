unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

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
  end;

var
  DM: TDM;

const
   STbProduto = 'select '
      +'p.*, c.nomecategoria, f.nomefabricante '
      +'from tbproduto p'
      +' left join tbcategoria  c  on c.pkcategoria  = p.fkcategoria'
      +' left join tbfabricante f  on f.pkfabricante = p.fkfabricante';
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

end.
