unit ULaco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFLaco = class(TForm)
    btLerWhile: TButton;
    lbLista: TListBox;
    btLerFor: TButton;
    btDo: TButton;
    procedure btLerWhileClick(Sender: TObject);
    procedure btLerForClick(Sender: TObject);
    procedure btDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaco: TFLaco;

implementation

{$R *.dfm}

procedure TFLaco.btDoClick(Sender: TObject);
var
  ler: string;
  count: integer;
begin

  count := 0;

  repeat
    ler := InputBox('Atenção!', 'Informe um valor', '88');
    lbLista.items.add('laço while'+ IntToStr(count)+'->'+ler);
    count := count + 1;
  until count >= 5;
end;

procedure TFLaco.btLerForClick(Sender: TObject);
var
  ler: string;
  count: integer;
begin
  for count := 1 to 5 do
  begin
    ler := InputBox('Atenção!', 'Informe um valor', '');
     lbLista.items.add('laço while'+ IntToStr(count)+'->'+ler);
  end;

end;

procedure TFLaco.btLerWhileClick(Sender: TObject);
var
  ler: string;
  count: integer;
begin

  count := 0;

  while count < 5 do
  begin
    ler := InputBox('Atenção!', 'Informe um valor', '88');
     lbLista.items.add('laço while'+ IntToStr(count)+'->'+ler);
    count := count + 1;
  end;
end;

end.
