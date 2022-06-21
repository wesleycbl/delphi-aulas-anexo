object FTrabVetor: TFTrabVetor
  Left = 0
  Top = 0
  Caption = 'FTrabVetor'
  ClientHeight = 492
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object btLerVetor: TButton
    Left = 367
    Top = 23
    Width = 97
    Height = 25
    Caption = 'Ler vetor'
    TabOrder = 0
    OnClick = btLerVetorClick
  end
  object lbValor: TListBox
    Left = 8
    Top = 23
    Width = 353
    Height = 330
    TabOrder = 1
  end
  object btMostrar: TButton
    Left = 367
    Top = 54
    Width = 97
    Height = 25
    Caption = 'Mostra Vetor'
    TabOrder = 2
    OnClick = btMostrarClick
  end
  object SGListar: TStringGrid
    Left = 367
    Top = 285
    Width = 394
    Height = 68
    ColCount = 6
    RowCount = 2
    TabOrder = 3
    ColWidths = (
      64
      64
      62
      64
      64
      64)
  end
end
