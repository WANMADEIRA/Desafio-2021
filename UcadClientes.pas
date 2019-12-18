unit UcadClientes;

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
    TabSheet3: TTabSheet;
    Mostraobservacoes: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    dbeditnomeclie: TDBEdit;
    dbeditcnpj: TDBEdit;
    dbedittel: TDBEdit;


    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCliente: TFCadCliente;

implementation

{$R *.dfm}




procedure TFCadCliente.DSStateChange(Sender: TObject);
begin
  inherited;
 if RadioGroup1.ItemIndex = 1 then
 label2.Caption:= 'CNPJ'
 else
 Label2.Caption:= 'CPF';

end;

procedure TFCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
 RadioGroup1.ItemIndex:=0;
 Label2.Caption:= 'CPF:';

end;

end.
