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
  end
  object Label1: TLabel [1]
    Left = 296
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  inherited PanelPai: TPanel
    Width = 946
    ExplicitTop = 0
  end
  inherited PageControl1: TPageControl
    Left = 16
    Top = 47
    ExplicitLeft = 16
    ExplicitTop = 47
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 6
      ExplicitWidth = 737
      object DBEdit1: TDBEdit
        Left = 25
        Top = 78
        Width = 121
        Height = 21
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object DBEdit2: TDBEdit
        Left = 25
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 2
      object Mostraobservacoes: TCheckBox
        Left = 568
        Top = 321
        Width = 129
        Height = 17
        Caption = 'Mostrar Observa'#231'oes'
        TabOrder = 0
      end
      object obs: TDBEdit
        Left = 3
        Top = 24
        Width = 731
        Height = 291
        TabOrder = 1
      end
    end
  end
  inherited DS: TDataSource
    Top = 0
  end
end
