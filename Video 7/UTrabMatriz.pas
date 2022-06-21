unit UTrabMatriz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TFTrabMatriz = class(TForm)
    SGDados: TStringGrid;
    btLer: TButton;
    btMostrarMatriz: TButton;
    procedure btLerClick(Sender: TObject);
    procedure btMostrarMatrizClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTrabMatriz: TFTrabMatriz;

  mat: array [1 .. 3, 1 .. 4] of real;

implementation

{$R *.dfm}

procedure TFTrabMatriz.btLerClick(Sender: TObject);
var
  l, c: integer;
  valor: real;
begin

  for l := 1 to 4 do
  begin
    for c := 1 to 3 do
    begin
      valor := StrToFloatDef(InputBox('Atenção', 'Informe um valor', '0'), 0);
      mat[c, l] := valor;
    end;
  end;
end;

procedure TFTrabMatriz.btMostrarMatrizClick(Sender: TObject);
var
  l, c: integer;
  valor: real;
begin

  try
    try
      for l := 1 to 4 do
      begin
        for c := 1 to 3 do
        begin
          SGDados.Cells[c, l] := FloatToStr(mat[c, l]);
          valor := StrToFloatDef(InputBox('Atenção',
            'Informe um valor', '0'), 0);
        end;
      end;
    except
      ShowMessage('Você digitou um valor inválido !');
    end;
  finally
    ShowMessage('Leitura realizada com sucesso !');
  end;
end;

end.
