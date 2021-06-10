unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, JvExExtCtrls, JvExtComponent, JvClock,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Data.DB,
  UDMPaiCadastro, UCadConsulta;

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
    EditCodigo: TJvCalcEdit;
    Codigo: TLabel;
    Anterior: TButton;
    Proximo: TButton;
    Ultimo: TButton;
    Primeiro: TButton;
    procedure DSStateChange(Sender: TObject);
    procedure ProximoClick(Sender: TObject);
    procedure UltimoClick(Sender: TObject);
    procedure PrimeiroClick(Sender: TObject);
    procedure AnteriorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IncluirClick(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoButtonClick(Sender: TObject);
<<<<<<< HEAD
   // procedure Sempremaiuscula()
=======
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
  private

    { Private declarations }
  public
    DMCadastro: TDmPaiCadastro;
    { Public declarations }
  end;

var
  FPaiCadastro: TFPaiCadastro;

implementation

{$R *.dfm}



procedure TFPaiCadastro.CancelarClick(Sender: TObject);
begin
DS.DataSet.Cancel;
end;

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

procedure TFPaiCadastro.EditCodigoButtonClick(Sender: TObject);
begin
 FConsulta:= TFConsulta.Create(SELF);
  try
   FConsulta.FclassFilha := DMcadastro.FclassFilha;
   FConsulta.ShowModal;
   EditCodigo.AsInteger:= (FConsulta.RetornoConsulta);
   DMPaiCadastro.AbrirRegistro(EditCodigo.AsInteger);
<<<<<<< HEAD
   abort;
=======
   abort
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
 finally
   FreeAndNil(Fconsulta);
 end;
end;

procedure TFPaiCadastro.EditCodigoKeyPress(Sender: TObject; var Key: Char);
begin
 if  key = #13 then
 Perform(WM_NEXTDLGCTL, 0 ,0);
end;

procedure TFPaiCadastro.ExcluirClick(Sender: TObject);
begin
  if Application.MessageBox
      ('Deseja mesmo excluir o cadastro?', 'Confirme',
      MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_DEFBUTTON1) = ID_YES then
   DS.DataSet.Delete
  else
   DS.DataSet.Cancel;
end;

procedure TFPaiCadastro.FormCreate(Sender: TObject);
begin
DS.DataSet:= DMCadastro.CDSCadastro;
end;

procedure TFPaiCadastro.GravarClick(Sender: TObject);
begin
DS.DataSet.Post;
EditCodigo.AsInteger:= DMCadastro.CodigoAtual;
end;

procedure TFPaiCadastro.IncluirClick(Sender: TObject);
begin
DMCadastro.AbrirRegistro(DMCadastro.CodigoAtual);
DS.DataSet.Insert;
EditCodigo.AsInteger:= 0;
end;

procedure TFPaiCadastro.PrimeiroClick(Sender: TObject);
begin
DMCadastro.Primeiro;
EditCodigo.AsInteger:= DMCadastro.CodigoAtual;
end;

procedure TFPaiCadastro.ProximoClick(Sender: TObject);
begin
DMCadastro.Proximo;
EditCodigo.AsInteger:= DMCadastro.CodigoAtual;
end;

procedure TFPaiCadastro.AnteriorClick(Sender: TObject);
begin
DMCadastro.Anterior;
EditCodigo.AsInteger:= DMCadastro.CodigoAtual;
end;

procedure TFPaiCadastro.UltimoClick(Sender: TObject);
begin
DMCadastro.Ultimo;
EditCodigo.AsInteger:= DMCadastro.CodigoAtual;
end;

end.
