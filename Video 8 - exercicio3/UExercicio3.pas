unit UExercicio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFExercicio3 = class(TForm)
    btExecutar: TButton;
    procedure btExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExercicio3: TFExercicio3;

implementation

{$R *.dfm}

procedure TFExercicio3.btExecutarClick(Sender: TObject);
var
  valor, soma: integer;
begin
  valor:=0;
  soma:=0;
  
  valor := StrToIntDef(InputBox('Atenção', 'Informe um número', '0'), 0);

  while valor <> 0 do
  begin
    soma := soma + valor;
    valor := StrToIntDef(InputBox('Atenção', 'Informe um número', '0'), 0);
  end;

  ShowMessage('A soma de valores é: ' + IntToStr(soma));

end;

end.
