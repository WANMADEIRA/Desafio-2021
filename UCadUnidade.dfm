inherited FCadUnidade: TFCadUnidade
  Caption = 'Cadastro de Unidades'
  ClientHeight = 373
  ClientWidth = 780
  ExplicitWidth = 796
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 780
    Height = 332
  end
  inherited PanelPai: TPanel
    Width = 780
    inherited Anterior: TButton
      Left = 651
      ExplicitLeft = 651
    end
    inherited Proximo: TButton
      Left = 695
      ExplicitLeft = 695
    end
    inherited Ultimo: TButton
      Left = 739
      ExplicitLeft = 739
    end
    inherited Primeiro: TButton
      Left = 607
      ExplicitLeft = 607
    end
  end
  inherited PageControl1: TPageControl
    Width = 601
    Height = 305
    ExplicitWidth = 601
    ExplicitHeight = 305
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 8
      ExplicitWidth = 593
      ExplicitHeight = 277
      object Unidade: TLabel
        Left = 16
        Top = 40
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
      object Abrev_Uni: TLabel
        Left = 16
        Top = 120
        Width = 116
        Height = 16
        Caption = 'Abreviatura Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object TDBEdit
        Left = 16
        Top = 71
        Width = 553
        Height = 21
        TabOrder = 0
      end
      object TDBEdit
        Left = 16
        Top = 151
        Width = 185
        Height = 21
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Left = 615
    Width = 154
    Height = 305
    ExplicitLeft = 615
    ExplicitWidth = 154
    ExplicitHeight = 305
    inherited Incluir: TButton
      Left = 20
      Top = 28
      ExplicitLeft = 20
      ExplicitTop = 28
    end
    inherited Gravar: TButton
      Left = 20
      Top = 82
      ExplicitLeft = 20
      ExplicitTop = 82
    end
    inherited Cancelar: TButton
      Left = 20
      Top = 136
      ExplicitLeft = 20
      ExplicitTop = 136
    end
    inherited Excluir: TButton
      Left = 20
      Top = 190
      ExplicitLeft = 20
      ExplicitTop = 190
    end
    inherited Relatorio: TButton
      Left = 20
      Top = 244
      ExplicitLeft = 20
      ExplicitTop = 244
    end
  end
  inherited DS: TDataSource
    Left = 352
  end
end
