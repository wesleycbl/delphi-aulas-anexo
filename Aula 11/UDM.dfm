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
    Left = 112
    Top = 16
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 112
    Top = 80
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'PKPROD'
    Connection = FDConnection
    Transaction = FDTransaction
    TableName = 'TBPRODUTO'
    Left = 112
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 112
    Top = 192
  end
end
