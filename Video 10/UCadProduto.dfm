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
    Height = 177
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 24
      Top = 67
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 24
      Top = 113
      Width = 39
      Height = 13
      Caption = 'Estoque'
    end
    object Label4: TLabel
      Left = 121
      Top = 113
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edtCodProd: TEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 24
      Top = 86
      Width = 248
      Height = 21
      TabOrder = 1
    end
    object edtEstoque: TEdit
      Left = 24
      Top = 132
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object edtValor: TEdit
      Left = 121
      Top = 132
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 576
      Top = 21
      Width = 134
      Height = 21
      DataField = 'CodProd'
      DataSource = DSCLProduto
      TabOrder = 4
      Visible = False
      OnChange = DBEdit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 256
    Width = 721
    Height = 153
    DataSource = DSCLProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object PControle: TPanel
    Left = 8
    Top = 199
    Width = 721
    Height = 41
    TabOrder = 2
    object btNovo: TButton
      Left = 114
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btNovoClick
    end
    object btAlterar: TButton
      Left = 195
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btAlterarClick
    end
    object btRemover: TButton
      Left = 276
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Remover'
      TabOrder = 2
      OnClick = btRemoverClick
    end
    object btSalvar: TButton
      Left = 365
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btSalvarClick
    end
    object btCancelar: TButton
      Left = 446
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btCancelarClick
    end
    object btSair: TButton
      Left = 527
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btSairClick
    end
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
    Left = 664
    Top = 104
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
    Left = 688
    Top = 264
  end
end
