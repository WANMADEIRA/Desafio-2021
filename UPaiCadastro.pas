unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, JvExExtCtrls, JvExtComponent, JvClock,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Data.DB;

type
  TFPaiCadastro = class(TForm)
    Image1: TImage;
    PanelPai: TPanel;
    Panel2: TPanel;
    Incluir: TButton;
    Gravar: TButton;
    Cancelar: TButton;
    Excluir: TButton;
    Relatorio: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DS: TDataSource;
    JvCalcEdit1: TJvCalcEdit;
    Codigo: TLabel;
    Anterior: TButton;
    Proximo: TButton;
    Ultimo: TButton;
    Primeiro: TButton;
    procedure DSStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaiCadastro: TFPaiCadastro;

implementation

{$R *.dfm}

procedure TFPaiCadastro.DSStateChange(Sender: TObject);
 Var
  Editando: Boolean;
begin
  Editando:= DS.DataSet.State in [dsEdit, dsInsert];
  Incluir.Enabled:= not Editando;
  gravar.Enabled:= Editando;
  Excluir.Enabled:= Not Editando;
  Cancelar.Enabled:= Editando;

  PanelPai.Enabled:= not Editando;


end;

end.
