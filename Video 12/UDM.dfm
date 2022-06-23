object DM: TDM
  OldCreateOrder = False
  Height = 294
  Width = 258
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
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'select'
      ' *'
      'from tbproduto')
    Left = 24
    Top = 72
  end
  object DSSQLProduto: TDataSource
    DataSet = SqlProduto
    Left = 96
    Top = 88
  end
end
