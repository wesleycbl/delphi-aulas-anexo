object FTrabMatriz: TFTrabMatriz
  Left = 0
  Top = 0
  Caption = 'FTrabMatriz'
  ClientHeight = 433
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SGDados: TStringGrid
    Left = 16
    Top = 48
    Width = 801
    Height = 133
    TabOrder = 0
  end
  object btLer: TButton
    Left = 16
    Top = 17
    Width = 89
    Height = 25
    Caption = 'Ler Matriz'
    TabOrder = 1
    OnClick = btLerClick
  end
  object btMostrarMatriz: TButton
    Left = 111
    Top = 17
    Width = 89
    Height = 25
    Caption = 'Mostrar Matriz'
    TabOrder = 2
    OnClick = btMostrarMatrizClick
  end
end
