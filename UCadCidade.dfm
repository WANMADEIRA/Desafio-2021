inherited FCadCidade: TFCadCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 343
  ClientWidth = 863
  ExplicitWidth = 879
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 863
    Height = 302
    ExplicitWidth = 946
    ExplicitHeight = 402
  end
  inherited PanelPai: TPanel
    Width = 863
    ExplicitWidth = 863
    inherited Anterior: TButton
      Left = 740
      ExplicitLeft = 740
    end
    inherited Proximo: TButton
      Left = 784
      ExplicitLeft = 784
    end
    inherited Ultimo: TButton
      Left = 828
      ExplicitLeft = 828
    end
    inherited Primeiro: TButton
      Left = 696
      ExplicitLeft = 696
    end
  end
  inherited PageControl1: TPageControl
    Width = 681
    Height = 281
    ExplicitWidth = 681
    ExplicitHeight = 281
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 673
      ExplicitHeight = 253
      object Unidade: TLabel
        Left = 40
        Top = 48
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
      object Label1: TLabel
        Left = 40
        Top = 122
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
      object DBEdit1: TDBEdit
        Left = 40
        Top = 80
        Width = 609
        Height = 21
        DataField = 'NOME_CIDADE'
        DataSource = DS
        TabOrder = 0
      end
    end
  end
  inherited Panel2: TPanel
    Left = 703
    Width = 154
    Height = 281
    ExplicitLeft = 703
    ExplicitWidth = 154
    ExplicitHeight = 281
    inherited Incluir: TButton
      Top = 18
      ExplicitTop = 18
    end
    inherited Gravar: TButton
      Top = 72
      ExplicitTop = 72
    end
    inherited Cancelar: TButton
      Top = 126
      ExplicitTop = 126
    end
    inherited Excluir: TButton
      Top = 180
      ExplicitTop = 180
    end
    inherited Relatorio: TButton
      Top = 234
      ExplicitTop = 234
    end
  end
  object DBComboBox1: TDBComboBox [4]
    Left = 52
    Top = 236
    Width = 145
    Height = 21
    DataField = 'ESTADO_CIDADE'
    DataSource = DS
    Items.Strings = (
      'MG'
      'SP'
      'RJ'
      'MT'
      'ES'
      'PA'
      'PR'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'GO'
      'MA'
      'MS'
      'PB'
      'PE'
      'PI'
      'RN'
      'RS'
      'RO'
      'SC'
      'SE'
      'TO')
    TabOrder = 3
  end
end
