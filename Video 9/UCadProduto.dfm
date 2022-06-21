object FCadProduto: TFCadProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 417
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PDados: TPanel
    Left = 8
    Top = 8
    Width = 721
    Height = 217
    Caption = 'PDados'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 41
      Height = 13
      Caption = 'CodProd'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 67
      Width = 49
      Height = 13
      Caption = 'NomeProd'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 125
      Width = 61
      Height = 13
      Caption = 'EstoqueProd'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 184
      Top = 125
      Width = 46
      Height = 13
      Caption = 'ValorProd'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 134
      Height = 21
      DataField = 'CodProd'
      DataSource = DSCLProduto
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 86
      Width = 524
      Height = 21
      DataField = 'NomeProd'
      DataSource = DSCLProduto
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 144
      Width = 134
      Height = 21
      DataField = 'EstoqueProd'
      DataSource = DSCLProduto
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 184
      Top = 144
      Width = 134
      Height = 21
      DataField = 'ValorProd'
      DataSource = DSCLProduto
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 281
    Width = 721
    Height = 128
    DataSource = DSCLProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 225
    Top = 231
    Width = 240
    Height = 25
    DataSource = DSCLProduto
    TabOrder = 2
  end
  object clProduto: TClientDataSet
    PersistDataPacket.Data = {
      6D0000009619E0BD0100000018000000040000000000030000006D0007436F64
      50726F640400010000000000084E6F6D6550726F640100490000000100055749
      4454480200020028000B4573746F71756550726F640400010000000000095661
      6C6F7250726F6408000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProd'
        DataType = ftInteger
      end
      item
        Name = 'NomeProd'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EstoqueProd'
        DataType = ftInteger
      end
      item
        Name = 'ValorProd'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 176
    object clProdutoCodProd: TIntegerField
      FieldName = 'CodProd'
    end
    object clProdutoNomeProd: TStringField
      FieldName = 'NomeProd'
      Size = 40
    end
    object clProdutoEstoqueProd: TIntegerField
      FieldName = 'EstoqueProd'
    end
    object clProdutoValorProd: TFloatField
      FieldName = 'ValorProd'
    end
  end
  object DSCLProduto: TDataSource
    DataSet = clProduto
    Left = 192
    Top = 240
  end
end
