object DMPaiCadastro: TDMPaiCadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 368
  Width = 538
  object CDSCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP'
    AfterPost = CDSCadastroAfterPost
    AfterDelete = CDSCadastroAfterDelete
    OnNewRecord = CDSCadastroNewRecord
    Left = 128
    Top = 152
  end
  object DSP: TDataSetProvider
    DataSet = SQLDS
    Left = 240
    Top = 152
  end
  object SQLDS: TSQLDataSet
    Params = <>
    Left = 328
    Top = 152
  end
end
