unit UcadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Vcl.DBCtrls, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFCadProduto = class(TFPaiCadastro)
    CBOXunidade: TComboBox;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    descricaoproduto: TDBEdit;
    valorvista: TDBEdit;
    valorprazo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

{$R *.dfm}

end.
