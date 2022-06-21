unit Uexercicio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExercicio2 = class(TForm)
    lbValor1: TLabel;
    lbValor2: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    lbSoma: TLabel;
    edtSoma: TEdit;
    Calcular: TButton;
    lbMedia: TLabel;
    edtMedia: TEdit;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio2: TExercicio2;

implementation

{$R *.dfm}

procedure TExercicio2.CalcularClick(Sender: TObject);
var
  xvalor1, xvalor2, xresultado, xsoma: real;
begin
  xvalor1 := StrToFloatDef(edtValor1.Text, 0);
  xvalor2 := StrToFloatDef(edtValor2.Text, 0);
  xresultado := (xvalor1 + xvalor2) / 2;
  xsoma := (xvalor1 + xvalor2);

  if (xvalor1 = 0) then
  begin
    ShowMessage('Informe um valor1 válido !');
    if edtValor1.CanFocus then
      edtValor1.SetFocus;
    exit;
  end
  else if (xvalor2 = 0) then
  begin
    ShowMessage('Informe um valor2 válido !');
    if edtValor2.CanFocus then
      edtValor2.SetFocus;
    exit;
  end
  else
  begin
    edtMedia.Text := FloatToStr(xresultado);
    edtSoma.Text := FloatToStr(xsoma);
  end;

end;

end.
