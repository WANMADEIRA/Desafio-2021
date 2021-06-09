unit UDMCadCliente;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadCliente, UDMConexao,
  UClassCadEndereco;

type
  TDMCadCliente = class(TDMPaiCadastro)
    DSEnderco: TDataSource;
    SQLDSendereco: TSQLDataSet;
    CDSendereco: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSenderecoAfterOpen(DataSet: TDataSet);
    procedure SQLDSAfterOpen(DataSet: TDataSet);
    procedure CDSCadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadCliente: TDMCadCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadCliente.CDSCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
 SQLDSendereco.DataSetField:= TDataSetField(CDSCadastro.FieldByName('SQLDSendereco'));
end;

procedure TDMCadCliente.CDSenderecoAfterOpen(DataSet: TDataSet);
begin
  inherited;
 TclassCadEndereco.ConfigurarNomesCampos(DataSet.Fields);
end;

procedure TDMCadCliente.DataModuleCreate(Sender: TObject);
begin
  FclassFilha:= TClassCadCliente.Create;
  inherited;
  SQLDSendereco.CommandText:= TclassCadEndereco.SQlCadastro;

end;

procedure TDMCadCliente.SQLDSAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_endereco').ProviderFlags:= [];
end;

end.
