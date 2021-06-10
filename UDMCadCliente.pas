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
    procedure CDSenderecoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadCliente: TDMCadCliente;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDMCadCliente.CDSCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CDSendereco.DataSetField := TDataSetField(CDSCadastro.FieldByName('SQLDSendereco'));
end;

procedure TDMCadCliente.CDSenderecoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TclassCadEndereco.ConfigurarNomesCampos(DataSet.Fields);
end;

procedure TDMCadCliente.CDSenderecoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSendereco.FieldByName(TClassCadEndereco.CampoChave).AsInteger :=
  DMConexao.ProximoCodigo(TClassCadEndereco.NomeTabela,TClassCadEndereco.CampoChave);

  CDSendereco.FieldByName('CLIENTE_END').AsInteger:= CDSCadastro.FieldByName(FclassFilha.CampoChave).AsInteger;

end;

procedure TDMCadCliente.DataModuleCreate(Sender: TObject);
begin

  FclassFilha := TClassCadCliente.Create;
  inherited;
  DSEnderco.DataSet := SQLDS;
  SQLDSendereco.DataSource := DSEnderco;

  SQLDSendereco.CommandText := TclassCadEndereco.SQlCadastro;
  SQLDSendereco.Params.Clear;
  SQLDSendereco.Params.CreateParam(ftInteger, 'cod_cliente', ptInput);
  SQLDSendereco.SQLConnection := DMConexao.SQLConnection;
  AbrirRegistro(-1);

end;

procedure TDMCadCliente.SQLDSAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // DataSet.FieldByName('cod_endereco').ProviderFlags:= [];
end;

end.
