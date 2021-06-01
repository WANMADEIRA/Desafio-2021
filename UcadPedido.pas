unit UcadPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, UDMCadPedido;

type
  TFCadPedidos = class(TFPaiCadastro)
    Fundodatela: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPedidos: TFCadPedidos;

implementation

{$R *.dfm}

procedure TFCadPedidos.FormCreate(Sender: TObject);
begin
  DMCadastro := TDMCadPedido.Create(SELF);
    inherited;

end;

end.
