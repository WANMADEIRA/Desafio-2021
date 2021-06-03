unit UcadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.DBCtrls, UDMCadCliente, JvMaskEdit, JvDBControls;

type
  TFCadCliente = class(TFPaiCadastro)
    TabSheet2: TTabSheet;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    Mostraobservacoes: TCheckBox;
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
    JvDBMaskEdit1: TJvDBMaskEdit;
    JvDBMaskEdit2: TJvDBMaskEdit;
    DBRadioGroup1: TDBRadioGroup;
    mmoObs: TDBMemo;


    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure mascara;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCliente: TFCadCliente;

implementation

{$R *.dfm}




procedure TFCadCliente.DBRadioGroup1Change(Sender: TObject);
begin

 if DBRadioGroup1.ItemIndex = 1 then
 label2.Caption:= 'CNPJ'
 else
 Label2.Caption:= 'CPF';
 mascara;
   inherited;


end;

procedure TFCadCliente.DSStateChange(Sender: TObject);
begin
   inherited;
 if DBRadioGroup1.ItemIndex = 1 then
 label2.Caption:= 'CNPJ'
 else
 Label2.Caption:= 'CPF';

end;

procedure TFCadCliente.FormCreate(Sender: TObject);
begin
 DMCadastro:= TDMCadCliente.Create(SELF);
  inherited;
 DBRadioGroup1.ItemIndex:=0;
 Label2.Caption:= 'CPF:';

end;

procedure TFCadCliente.mascara;
begin
if DBRadioGroup1.itemIndex = 1  then
 JvDBMaskEdit2.EditMask:='00.000.000/0000-00;1;_'
 else
 JvDBMaskEdit2.EditMask:='000.000.000-00;1;'

end;




end.
