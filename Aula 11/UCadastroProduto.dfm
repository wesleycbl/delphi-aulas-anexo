object FCadastroProduto: TFCadastroProduto
  Left = 0
  Top = 0
  Caption = 'FCadastroProduto'
  ClientHeight = 537
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 825
    Height = 161
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'PKPROD'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 57
      Height = 13
      Caption = 'NOMEPROD'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 94
      Height = 13
      Caption = 'VALORVENDAPROD'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 272
      Top = 100
      Width = 75
      Height = 13
      Caption = 'ESTOQUEPROD'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 27
      Width = 199
      Height = 21
      DataField = 'PKPROD'
      DataSource = DM.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 73
      Width = 369
      Height = 21
      DataField = 'NOMEPROD'
      DataSource = DM.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 116
      Width = 251
      Height = 21
      DataField = 'VALORVENDAPROD'
      DataSource = DM.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 272
      Top = 116
      Width = 105
      Height = 21
      DataField = 'ESTOQUEPROD'
      DataSource = DM.DataSource1
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 271
    Width = 825
    Height = 249
    DataSource = DM.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PKPROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEPROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORVENDAPROD'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 593
    Top = 240
    Width = 240
    Height = 25
    DataSource = DM.DataSource1
    TabOrder = 2
  end
end
