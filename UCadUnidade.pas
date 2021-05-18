unit UCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.DBCtrls;

type
  TFCadUnidade = class(TFPaiCadastro)
    Unidade: TLabel;
    Abrev_Uni: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUnidade: TFCadUnidade;

implementation

{$R *.dfm}

end.
