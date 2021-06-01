inherited FCadProduto: TFCadProduto
  Caption = 'Cadastro de Produtos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object Label8: TLabel
        Left = 40
        Top = 42
        Width = 103
        Height = 16
        Caption = 'Descri'#231#227'o Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 40
        Top = 133
        Width = 46
        Height = 16
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 44
        Top = 251
        Width = 73
        Height = 16
        Caption = 'Valor a Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 404
        Top = 251
        Width = 77
        Height = 16
        Caption = 'Valor a Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object descricaoproduto: TDBEdit
        Left = 40
        Top = 64
        Width = 657
        Height = 21
        DataField = 'NOME_PRODUTO'
        DataSource = DS
        TabOrder = 0
      end
      object CBOXunidade: TComboBox
        Left = 40
        Top = 155
        Width = 145
        Height = 21
        TabOrder = 1
        Text = 'ComboBox1'
      end
      object valorvista: TDBEdit
        Left = 44
        Top = 273
        Width = 141
        Height = 21
        TabOrder = 2
      end
      object valorprazo: TDBEdit
        Left = 404
        Top = 273
        Width = 141
        Height = 21
        TabOrder = 3
      end
    end
  end
  object DBGrid1: TDBGrid [4]
    Left = 216
    Top = 184
    Width = 513
    Height = 141
    DataSource = DS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
