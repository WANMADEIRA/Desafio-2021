unit UCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Vcl.DBCtrls, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, JvExStdCtrls, JvCombobox;

type
  TFCadCidade = class(TFPaiCadastro)
    DBEdit1: TDBEdit;
    Unidade: TLabel;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCidade: TFCadCidade;

implementation

{$R *.dfm}

uses UDMCadCidade;

procedure TFCadCidade.FormCreate(Sender: TObject);
begin
  DMCadastro := TDMCadCidade.Create(self);

  inherited;

end;

end.
