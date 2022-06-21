object Exercicio2: TExercicio2
  Left = 0
  Top = 0
  Caption = 'FExercicio2'
  ClientHeight = 299
  ClientWidth = 852
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object lbValor1: TLabel
    Left = 60
    Top = 32
    Width = 68
    Height = 23
    Caption = 'Valor 1'
  end
  object lbValor2: TLabel
    Left = 60
    Top = 80
    Width = 68
    Height = 23
    Caption = 'Valor 2'
  end
  object lbSoma: TLabel
    Left = 71
    Top = 136
    Width = 53
    Height = 23
    Caption = 'Soma'
  end
  object lbMedia: TLabel
    Left = 71
    Top = 170
    Width = 57
    Height = 23
    Caption = 'M'#233'dia'
  end
  object edtValor1: TEdit
    Left = 134
    Top = 29
    Width = 91
    Height = 31
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 134
    Top = 77
    Width = 91
    Height = 31
    TabOrder = 1
  end
  object edtSoma: TEdit
    Left = 134
    Top = 133
    Width = 121
    Height = 31
    Enabled = False
    TabOrder = 2
  end
  object Calcular: TButton
    Left = 231
    Top = 40
    Width = 123
    Height = 63
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = CalcularClick
  end
  object edtMedia: TEdit
    Left = 134
    Top = 167
    Width = 121
    Height = 31
    Enabled = False
    TabOrder = 4
  end
end
