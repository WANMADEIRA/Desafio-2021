inherited DMCadCliente: TDMCadCliente
  OldCreateOrder = True
  inherited CDSCadastro: TClientDataSet
    AfterOpen = CDSCadastroAfterOpen
    Top = 72
  end
  inherited DSP: TDataSetProvider
    Top = 72
  end
  inherited SQLDS: TSQLDataSet
    AfterOpen = SQLDSAfterOpen
    Left = 336
    Top = 72
  end
  object DSEnderco: TDataSource
<<<<<<< HEAD
=======
    DataSet = SQLDS
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
    Left = 400
    Top = 160
  end
  object SQLDSendereco: TSQLDataSet
<<<<<<< HEAD
=======
    DataSource = DSEnderco
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
    Params = <>
    Left = 280
    Top = 208
  end
  object CDSendereco: TClientDataSet
    Aggregates = <>
<<<<<<< HEAD
    Params = <>
    AfterOpen = CDSenderecoAfterOpen
    OnNewRecord = CDSenderecoNewRecord
=======
    MasterSource = DSEnderco
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSP'
    AfterOpen = CDSenderecoAfterOpen
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
    Left = 168
    Top = 208
  end
end
