unit UcadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.DBCtrls;

type
  TFCadCliente = class(TFPaiCadastro)
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet3: TTabSheet;
    Mostraobservacoes: TCheckBox;
    obs: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCliente: TFCadCliente;

implementation

{$R *.dfm}

end.
