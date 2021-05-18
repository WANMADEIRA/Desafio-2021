unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Data.DBXFirebird;

type
  TDMConexao = class(TDataModule)
    DSP: TDataSetProvider;
    SQLConnection: TSQLConnection;
    SQLDS: TSQLDataSet;
  private
    { Private declarations }
  public
    Function ExecuteReader(SQL: String): Olevariant;
    Function ExecuteScalar(SQL: String): Variant;
    Function ProximoCodigo(Tabela, CampoChave: String): Integer;
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDMConexao }

function TDMConexao.ExecuteReader(SQL: String): Olevariant;
begin
  SQLDS.Close;
  SQLDS.CommandText := SQL;
  SQLDS.Open;

  Result := DSP.Data;
end;

function TDMConexao.ExecuteScalar(SQL: String): Variant;
begin
  SQLDS.Close;
  SQLDS.CommandText := SQL;
  SQLDS.Open;

  Result := SQLDS.Fields[0].AsVariant;
end;

function TDMConexao.ProximoCodigo(Tabela, CampoChave: String): Integer;
begin
  Result:= ExecuteScalar('Select max (' + CampoChave + ') From ' + Tabela) + 1;
end;

end.
