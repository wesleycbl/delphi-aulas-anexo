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
    SqlProdutoVALORVENDAPROD: TFMTBCDField;
    SqlProdutoESTOQUEPROD: TLargeintField;
    SqlProdutoNOMEPROD: TStringField;
    SqlProdutoPKPROD: TLargeintField;
    FDTransactionAltera: TFDTransaction;
    SQLModifica: TFDQuery;
    FMTBCDField1: TFMTBCDField;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    LargeintField2: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure executaSQL(sqle: string; Q: TFDQuery);
  end;

var
  DM: TDM;

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
