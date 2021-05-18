unit UCadPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFConsulta = class(TForm)
    Painel_Superior: TPanel;
    Pesquisabutton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ccbPEQUISA: TComboBox;
    edtvalor: TEdit;
    JvDBGrid1: TJvDBGrid;
    DS: TDataSource;
    CDSPESQUISA: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsulta: TFConsulta;

implementation

{$R *.dfm}

end.
