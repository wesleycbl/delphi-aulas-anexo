unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFPrincipal = class(TForm)
    lbInforme: TLabel;
    edtNumero: TEdit;
    lbResultado: TLabel;
    edtResultado: TEdit;
    btResultado: TButton;
    procedure btResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.btResultadoClick(Sender: TObject);
var
  xnumber, xresult: real;
  xvalor: string;
begin
  xvalor := edtNumero.Text;

  if (xvalor = '') then
  begin
    ShowMessage('Informe um valor por favor');

    // previnir erro, ao setar focus incorretamente
    if edtNumero.CanFocus then
      edtNumero.SetFocus;
    exit;
  end
  else
  begin
    xnumber := StrToFloat(edtNumero.Text);
    xresult := xnumber * 5;

    edtResultado.Text := FloatToStr(xresult);
  end;
end;

end.
