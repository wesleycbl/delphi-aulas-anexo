unit UTrabStringGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TFTrabStringGrid = class(TForm)
    SGDados: TStringGrid;
    edtLinha: TEdit;
    edtColuna: TEdit;
    lbLinhas: TLabel;
    lbColunas: TLabel;
    btAdicionar: TButton;
    btRecupera: TButton;
    procedure btAdicionarClick(Sender: TObject);
    procedure btRecuperaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTrabStringGrid: TFTrabStringGrid;

implementation

{$R *.dfm}

procedure TFTrabStringGrid.btAdicionarClick(Sender: TObject);
var
  linha, coluna, valor: integer;
  i, l: integer;

begin
  for i := 0 to 5 do
    SGDados.Cells[0, i] := IntToStr(i);

  for i := 0 to 3 do
    SGDados.Cells[i, 0] := IntToStr(i);

  linha := StrToIntDef(edtLinha.Text, 0);
  coluna := StrToIntDef(edtColuna.Text, 0);
  valor := StrToIntDef(InputBox('Atenção', 'Informe um número', '0'), 0);
  SGDados.Cells[coluna, linha] := IntToStr(valor);

end;

procedure TFTrabStringGrid.btRecuperaClick(Sender: TObject);
var
  linha, coluna, valor: integer;
begin
  linha := StrToIntDef(edtLinha.Text, 0);
  coluna := StrToIntDef(edtColuna.Text, 0);
  ShowMessage('O valor é'+ '->'+  SGDados.Cells[coluna, linha])
end;

end.
