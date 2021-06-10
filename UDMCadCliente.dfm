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
    Left = 400
    Top = 160
  end
  object SQLDSendereco: TSQLDataSet
    Params = <>
    Left = 280
    Top = 208
  end
  object CDSendereco: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = CDSenderecoAfterOpen
    OnNewRecord = CDSenderecoNewRecord
    Left = 168
    Top = 208
  end
end
