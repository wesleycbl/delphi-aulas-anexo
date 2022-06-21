unit UTrabVetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TFTrabVetor = class(TForm)
    btLerVetor: TButton;
    lbValor: TListBox;
    btMostrar: TButton;
    SGListar: TStringGrid;
    procedure btLerVetorClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTrabVetor: TFTrabVetor;
  vet: array [1 .. 5] of Integer;

implementation

{$R *.dfm}

procedure TFTrabVetor.btLerVetorClick(Sender: TObject);
var
  i, valor: Integer;
begin

  for i := 1 to 5 do
  begin
    valor := StrToInt(inputbox('Atenção', 'Informe um número', ''));
    vet[i] := valor;
  end;

end;

procedure TFTrabVetor.btMostrarClick(Sender: TObject);
var
  i, valor: Integer;
begin

  lbValor.Items.Clear;

  for i := 1 to 5 do
  begin
    lbValor.Items.Add(IntToStr(vet[i]));
    SGListar.Cells[i, 1] := IntToStr(vet[i]);
  end;
end;

end.
