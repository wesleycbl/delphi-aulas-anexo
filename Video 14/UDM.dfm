object DM: TDM
  OldCreateOrder = False
  Height = 294
  Width = 487
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos Anexo\banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    Left = 24
    Top = 16
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 96
    Top = 16
  end
  object SqlProduto: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'select'
      ' p.*,'
      ' c.nomecategoria,'
      ' f.nomefabricante'
      'from tbproduto p'
      '  left join tbcategoria c'
      '     on c.pkcategoria = p.fkcategoria'
      '  left join tbfabricante f'
      '     on f.pkfabricante = p.fkfabricante')
    Left = 64
    Top = 72
  end
  object DSSQLProduto: TDataSource
    DataSet = SqlProduto
    Left = 64
    Top = 136
  end
  object FDTransactionAltera: TFDTransaction
    Connection = FDConnection
    Left = 272
    Top = 16
  end
  object SQLModifica: TFDQuery
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'select'
      ' *'
      'from tbproduto')
    Left = 272
    Top = 64
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALORVENDAPROD'
      Origin = 'VALORVENDAPROD'
      Precision = 18
      Size = 2
    end
    object LargeintField1: TLargeintField
      FieldName = 'ESTOQUEPROD'
      Origin = 'ESTOQUEPROD'
    end
    object StringField1: TStringField
      FieldName = 'NOMEPROD'
      Origin = 'NOMEPROD'
      Size = 80
    end
    object LargeintField2: TLargeintField
      FieldName = 'PKPROD'
      Origin = 'PKPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object SQLGeral: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'select'
      ' p.*,'
      ' c.nomecategoria,'
      ' f.nomefabricante'
      'from tbproduto p'
      '  left join tbcategoria c'
      '     on c.pkcategoria = p.fkcategoria'
      '  left join tbfabricante f'
      '     on f.pkfabricante = p.fkfabricante')
    Left = 184
    Top = 80
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALORVENDAPROD'
      Origin = 'VALORVENDAPROD'
      Precision = 18
      Size = 2
    end
    object LargeintField3: TLargeintField
      FieldName = 'ESTOQUEPROD'
      Origin = 'ESTOQUEPROD'
    end
    object StringField2: TStringField
      FieldName = 'NOMEPROD'
      Origin = 'NOMEPROD'
      Size = 80
    end
    object LargeintField4: TLargeintField
      FieldName = 'PKPROD'
      Origin = 'PKPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
