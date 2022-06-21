object FLaco: TFLaco
  Left = 0
  Top = 0
  Caption = 'FLaco'
  ClientHeight = 498
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object btLerWhile: TButton
    Left = 16
    Top = 16
    Width = 146
    Height = 33
    Caption = 'Ler valor while'
    TabOrder = 0
    OnClick = btLerWhileClick
  end
  object lbLista: TListBox
    Left = 168
    Top = 16
    Width = 225
    Height = 289
    ItemHeight = 19
    TabOrder = 1
  end
  object btLerFor: TButton
    Left = 16
    Top = 64
    Width = 146
    Height = 33
    Caption = 'Ler valor for'
    TabOrder = 2
    OnClick = btLerForClick
  end
  object btDo: TButton
    Left = 16
    Top = 112
    Width = 146
    Height = 33
    Caption = 'Ler valor do'
    TabOrder = 3
    OnClick = btDoClick
  end
end
