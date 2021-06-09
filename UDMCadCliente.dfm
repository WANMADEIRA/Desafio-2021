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
    DataSet = SQLDS
    Left = 400
    Top = 160
  end
  object SQLDSendereco: TSQLDataSet
    DataSource = DSEnderco
    Params = <>
    Left = 280
    Top = 208
  end
  object CDSendereco: TClientDataSet
    Aggregates = <>
    MasterSource = DSEnderco
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSP'
    AfterOpen = CDSenderecoAfterOpen
    Left = 168
    Top = 208
  end
end
