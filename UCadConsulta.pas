unit UCadConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  UClassPaiCadastro, UDMConexao;

type
  TFConsulta = class(TForm)
    Painel_Superior: TPanel;
    Pesquisabutton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ccbPEQUISA: TComboBox;
    edtvalor: TEdit;
    JvDBGrid1: TJvDBGrid;
    DS: TDataSource;
    CDSPESQUISA: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PesquisabuttonClick(Sender: TObject);

  private
    FclassConsulta: TClassPaiCadastro;
    FretornoConsulta: Integer;
    Function MontarSQLConsulta: String;
    Function GETCampoBD: TField;

  public
    FclassFilha: TClassPaiCadastro;
    property ClassConsulta: TClassPaiCadastro read FclassConsulta write FclassConsulta;
    Property RetornoConsulta: Integer read FretornoConsulta write FretornoConsulta;
  end;

var
  FConsulta: TFConsulta;

implementation

{$R *.dfm}

procedure TFConsulta.FormShow(Sender: TObject);
begin
  Self.Caption := Self.Caption + FclassFilha.NomeTabela;
end;

function TFConsulta.GETCampoBD: TField;
var
  Field: TField;
begin
  for Field in CDSPESQUISA.Fields do
  begin
    if Field.DisplayName = ccbPEQUISA.Text then
    begin
      Result := Field;
      exit
    end;

  end;

end;

function TFConsulta.MontarSQLConsulta: String;
var
  SQL, Valor: String;
  Field: TField;
begin
 SQL:= FclassFilha.SQlConsulta +#13;
 if edtvalor.Text <> '' then
 begin
   Field:= GETCampoBD;
   if (Field.DataType = ftInteger) then
   Valor:= edtvalor.Text
   else if (Field.DataType = ftString) then
   valor:= QuotedStr(edtvalor.Text);

   SQL:= SQL + 'where ' + Field.fieldname + ' = ' + Valor;
 end;
 Result := SQL;


end;

procedure TFConsulta.PesquisabuttonClick(Sender: TObject);
var
  Field: TField;
begin
  CDSPESQUISA.Data := DMConexao.ExecuteReader(MontarSQLConsulta);
  FclassFilha.ConfigurarNomesCampos(CDSPESQUISA.Fields);
  for Field in CDSPESQUISA.Fields do
    ccbPEQUISA.Items.Add(Field.Displaylabel);
end;

procedure TFConsulta.SpeedButton2Click(Sender: TObject);
begin
  FretornoConsulta := CDSPESQUISA.FieldByName(FclassFilha.CampoChave).AsInteger;
end;

end.
