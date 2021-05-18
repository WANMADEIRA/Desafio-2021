unit UcadPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFCadPedidos = class(TFPaiCadastro)
    Fundodatela: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPedidos: TFCadPedidos;

implementation

{$R *.dfm}

end.
