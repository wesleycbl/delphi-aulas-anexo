object FCadastroProduto: TFCadastroProduto
  Left = 0
  Top = 0
  Caption = 'FCadastroProduto'
  ClientHeight = 552
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PDados: TPanel
    Left = 8
    Top = 8
    Width = 825
    Height = 161
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label4: TLabel
      Left = 168
      Top = 100
      Width = 39
      Height = 13
      Caption = 'Estoque'
    end
    object Label5: TLabel
      Left = 368
      Top = 54
      Width = 83
      Height = 13
      Caption = 'C'#243'digo Categoria'
    end
    object lbNomeCategoria: TLabel
      Left = 505
      Top = 74
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 368
      Top = 100
      Width = 51
      Height = 13
      Caption = 'Fabricante'
    end
    object DBEdit5: TDBEdit
      Left = 768
      Top = 27
      Width = 47
      Height = 21
      DataField = 'PKPROD'
      DataSource = DM.DSSQLProduto
      Enabled = False
      TabOrder = 0
      Visible = False
      OnChange = DBEdit5Change
    end
    object Edtpkprod: TEdit
      Left = 8
      Top = 27
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object Edtnomeprod: TEdit
      Left = 8
      Top = 73
      Width = 280
      Height = 21
      TabOrder = 2
    end
    object Edtvalorvendaprod: TEdit
      Left = 8
      Top = 119
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edtestoqueprod: TEdit
      Left = 167
      Top = 119
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object EdtFkcategoria: TEdit
      Left = 368
      Top = 72
      Width = 131
      Height = 21
      TabOrder = 5
      OnExit = EdtFkcategoriaExit
    end
    object CBNomeFabricante: TComboBox
      Left = 368
      Top = 119
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 6
      OnExit = CBNomeFabricanteExit
    end
    object CBFKFabricante: TComboBox
      Left = 536
      Top = 119
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 7
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 244
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
  object PConsulta: TPanel
    Left = 0
    Top = 499
    Width = 847
    Height = 53
    Align = alBottom
    TabOrder = 2
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
  object PControle: TPanel
    Left = 8
    Top = 199
    Width = 825
    Height = 41
    TabOrder = 3
    object btNovo: TButton
      Left = 132
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btNovoClick
    end
    object btAlterar: TButton
      Left = 213
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btAlterarClick
    end
    object btRemover: TButton
      Left = 310
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Remover'
      TabOrder = 2
      OnClick = btRemoverClick
    end
    object btSalvar: TButton
      Left = 405
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btSalvarClick
    end
    object btCancelar: TButton
      Left = 494
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btCancelarClick
    end
    object btSair: TButton
      Left = 585
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btSairClick
    end
  end
end
