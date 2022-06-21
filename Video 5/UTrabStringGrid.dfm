object FTrabStringGrid: TFTrabStringGrid
  Left = 0
  Top = 0
  Caption = 'FTrabStringGrid'
  ClientHeight = 339
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lbLinhas: TLabel
    Left = 8
    Top = 285
    Width = 41
    Height = 16
    Caption = 'Linhas'
  end
  object lbColunas: TLabel
    Left = 135
    Top = 285
    Width = 50
    Height = 16
    Caption = 'Colunas'
  end
  object SGDados: TStringGrid
    Left = 8
    Top = 8
    Width = 577
    Height = 257
    ColCount = 4
    RowCount = 6
    TabOrder = 0
  end
  object edtLinha: TEdit
    Left = 8
    Top = 304
    Width = 121
    Height = 24
    TabOrder = 1
    Text = '0'
  end
  object edtColuna: TEdit
    Left = 135
    Top = 304
    Width = 121
    Height = 24
    TabOrder = 2
    Text = '0'
  end
  object btAdicionar: TButton
    Left = 262
    Top = 302
    Width = 91
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btAdicionarClick
  end
  object btRecupera: TButton
    Left = 359
    Top = 302
    Width = 90
    Height = 25
    Caption = 'Recuperar'
    TabOrder = 4
    OnClick = btRecuperaClick
  end
end
