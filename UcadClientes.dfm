inherited FCadCliente: TFCadCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 445
  ClientWidth = 946
  OnCreate = FormCreate
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
      object TDBEdit
        Left = 25
        Top = 78
        Width = 664
        Height = 21
        TabOrder = 0
      end
      object TDBEdit
        Left = 25
        Top = 190
        Width = 296
        Height = 21
        TabOrder = 1
      end
      object TDBEdit
        Left = 25
        Top = 286
        Width = 296
        Height = 21
        TabOrder = 2
      end
      object RadioGroup1: TRadioGroup
        Left = 383
        Top = 161
        Width = 178
        Height = 145
        Caption = 'Pessoa Fisica / Juridica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Fisica'
          'Juridica')
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object Label4: TLabel
        Left = 33
        Top = 26
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
        Top = 106
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
        Top = 272
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
      object Label8: TLabel
        Left = 225
        Top = 272
        Width = 22
        Height = 16
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 33
        Top = 192
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
        Left = 449
        Top = 272
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
      object TDBEdit
        Left = 33
        Top = 67
        Width = 656
        Height = 21
        TabOrder = 0
      end
      object TDBEdit
        Left = 33
        Top = 147
        Width = 656
        Height = 21
        TabOrder = 1
      end
      object TDBEdit
        Left = 33
        Top = 313
        Width = 141
        Height = 21
        TabOrder = 2
      end
      object TDBEdit
        Left = 225
        Top = 313
        Width = 141
        Height = 21
        TabOrder = 3
      end
      object TDBEdit
        Left = 449
        Top = 313
        Width = 141
        Height = 21
        TabOrder = 4
      end
      object JvCalcEdit2: TJvCalcEdit
        Left = 33
        Top = 233
        Width = 656
        Height = 21
        Alignment = taLeftJustify
        ImageKind = ikEllipsis
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 2
      ExplicitLeft = 8
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
      object Mostraobservacoes: TCheckBox
        Left = 0
        Top = 321
        Width = 129
        Height = 17
        Caption = 'Mostrar Observa'#231'oes'
        TabOrder = 0
      end
      object TDBEdit
        Left = 3
        Top = 25
        Width = 724
        Height = 283
        AutoSize = False
        TabOrder = 1
      end
    end
  end
  inherited DS: TDataSource
    Top = 0
  end
end
