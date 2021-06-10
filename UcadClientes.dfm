inherited FCadCliente: TFCadCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 445
  ClientWidth = 946
  ExplicitWidth = 962
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 946
    Height = 404
    ExplicitWidth = 946
    ExplicitHeight = 404
  end
  inherited PanelPai: TPanel
    Width = 946
    ExplicitWidth = 946
  end
  inherited PageControl1: TPageControl
    Left = 16
    Top = 47
    ExplicitLeft = 16
    ExplicitTop = 47
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 24
      ExplicitWidth = 737
      ExplicitHeight = 349
      object Label1: TLabel
        Left = 25
        Top = 45
        Width = 99
        Height = 16
        Caption = 'Nome do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 25
        Top = 161
        Width = 33
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 25
        Top = 244
        Width = 55
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbeditnomeclie: TDBEdit
        Left = 25
        Top = 78
        Width = 664
        Height = 21
        DataField = 'NOME_CLIENTE'
        DataSource = DS
        TabOrder = 0
        OnEnter = dbeditnomeclieEnter
      end
      object JvDBMaskEdit1: TJvDBMaskEdit
        Left = 25
        Top = 282
        Width = 292
        Height = 21
        DataField = 'TEL_CLIENTE'
        DataSource = DS
        MaxLength = 13
        TabOrder = 1
        EditMask = '!\(99\)0000-0000;1;_'
      end
      object JvDBMaskEdit2: TJvDBMaskEdit
        Left = 25
        Top = 190
        Width = 287
        Height = 21
        DataField = 'CNPJ_CLIENTE'
        DataSource = DS
        MaxLength = 14
        TabOrder = 2
        EditMask = '000.000.000-00;1;'
        OnExit = JvDBMaskEdit2Exit
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 411
        Top = 190
        Width = 230
        Height = 117
        Caption = 'Tipo Pessoa'
        DataField = 'TIPO_PESSOA'
        DataSource = DS
        Items.Strings = (
          'FISICA'
          'JURIDICA')
        TabOrder = 3
        OnChange = DBRadioGroup1Change
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object Label4: TLabel
        Left = 33
        Top = 17
        Width = 27
        Height = 16
        Caption = 'Rua:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 33
        Top = 50
        Width = 39
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 33
        Top = 125
        Width = 50
        Height = 16
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 33
        Top = 89
        Width = 39
        Height = 16
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 236
        Top = 126
        Width = 38
        Height = 16
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rua: TDBEdit
        Left = 78
        Top = 16
        Width = 656
        Height = 21
        DataField = 'rua_end'
        DataSource = dsEndereco
        TabOrder = 0
      end
      object bairro: TDBEdit
        Left = 78
        Top = 49
        Width = 656
        Height = 21
        DataField = 'bairro_end'
        DataSource = dsEndereco
        TabOrder = 1
      end
      object num: TDBEdit
        Left = 89
        Top = 124
        Width = 141
        Height = 21
        DataField = 'num_end'
        DataSource = dsEndereco
        TabOrder = 2
      end
      object uf: TDBEdit
        Left = 280
        Top = 123
        Width = 141
        Height = 21
        TabOrder = 3
      end
      object JvCalcEdit2: TJvCalcEdit
        Left = 78
        Top = 88
        Width = 656
        Height = 21
        Alignment = taLeftJustify
        ImageKind = ikEllipsis
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
      object DBGrid1: TDBGrid
        Left = 33
        Top = 148
        Width = 701
        Height = 198
        DataSource = dsEndereco
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object radioendPrincipal: TDBRadioGroup
        Left = 427
        Top = 115
        Width = 307
        Height = 30
        Caption = 'Endere'#231'o Principal'
        Columns = 2
        DataField = 'padrao_end'
        DataSource = dsEndereco
        Items.Strings = (
          'Principal'
          'Outros')
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 2
      object Label5: TLabel
        Left = 3
        Top = 3
        Width = 29
        Height = 16
        Caption = 'OBS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Obs: TDBMemo
        Left = 3
        Top = 25
        Width = 731
        Height = 290
        DataField = 'OBS_CLIENTE'
        DataSource = DS
        TabOrder = 0
        OnClick = ObsClick
        OnExit = ObsExit
      end
      object DBCheckBoxobs: TDBCheckBox
        Left = 0
        Top = 321
        Width = 142
        Height = 17
        Caption = 'Mostrar Observa'#231#245'es'
        DataField = 'EXIBEOBS_CLIENTE'
        DataSource = DS
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited DS: TDataSource
    Top = 0
  end
  object dsEndereco: TDataSource
    DataSet = DMCadCliente.CDSendereco
    Left = 384
    Top = 304
  end
end
