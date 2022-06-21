object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Inicio'
  ClientHeight = 445
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object lbInforme: TLabel
    Left = 24
    Top = 16
    Width = 192
    Height = 23
    Caption = 'Informe um n'#250'mero'
  end
  object lbResultado: TLabel
    Left = 120
    Top = 120
    Width = 96
    Height = 23
    Caption = 'Resultado'
  end
  object edtNumero: TEdit
    Left = 222
    Top = 13
    Width = 211
    Height = 31
    TabOrder = 0
  end
  object edtResultado: TEdit
    Left = 222
    Top = 117
    Width = 115
    Height = 31
    Enabled = False
    TabOrder = 1
  end
  object btResultado: TButton
    Left = 222
    Top = 64
    Width = 129
    Height = 33
    Caption = 'Calcula'
    TabOrder = 2
    OnClick = btResultadoClick
  end
end
