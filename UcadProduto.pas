unit UcadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Vcl.DBCtrls, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, UDMCadProduto, Vcl.Grids, Vcl.DBGrids;

type
  TFCadProduto = class(TFPaiCadastro)
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    descricaoproduto: TDBEdit;
    valorvista: TDBEdit;
    valorprazo: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

{$R *.dfm}

procedure TFCadProduto.FormCreate(Sender: TObject);
begin
 DMCadastro := TDMCadProduto.Create(self);
  inherited;

end;

end.
