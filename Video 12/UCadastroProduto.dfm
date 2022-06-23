object FCadastroProduto: TFCadastroProduto
  Left = 0
  Top = 0
  Caption = 'FCadastroProduto'
  ClientHeight = 518
  ClientWidth = 847
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
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 73
      Width = 369
      Height = 21
      DataField = 'NOMEPROD'
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 116
      Width = 251
      Height = 21
      DataField = 'VALORVENDAPROD'
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 272
      Top = 116
      Width = 105
      Height = 21
      DataField = 'ESTOQUEPROD'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 206
    Width = 825
    Height = 249
    Color = clHighlight
    DataSource = DM.DSSQLProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clNavy
        Expanded = False
        FieldName = 'PKPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Color = clNavy
        Expanded = False
        FieldName = 'NOMEPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Color = clNavy
        Expanded = False
        FieldName = 'ESTOQUEPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Estoque'
        Visible = True
      end
      item
        Color = clNavy
        Expanded = False
        FieldName = 'VALORVENDAPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'VL. Venda'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 593
    Top = 175
    Width = 240
    Height = 25
    TabOrder = 2
  end
  object PConsulta: TPanel
    Left = 0
    Top = 465
    Width = 847
    Height = 53
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 504
    object CBRegra: TComboBox
      Left = 34
      Top = 16
      Width = 143
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'C'#243'digo igual '#225
        'nome iniciando por')
    end
    object BBTPesquisar: TBitBtn
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = BBTPesquisarClick
    end
    object EdtPesquisa: TEdit
      Left = 192
      Top = 16
      Width = 225
      Height = 21
      TabOrder = 2
    end
  end
end
