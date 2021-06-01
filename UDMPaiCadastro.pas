unit UDMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, UClassPaiCadastro, UDMConexao;

type
  TDMPaiCadastro = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSP: TDataSetProvider;
    SQLDS: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSCadastroAfterDelete(DataSet: TDataSet);
    procedure CDSCadastroAfterPost(DataSet: TDataSet);
    procedure CDSCadastroNewRecord(DataSet: TDataSet);
  private
   FcodigoAtual: Integer;
  public
   FclassFilha: TClassPaiCadastro;

   Procedure AbrirRegistro (Codigo: Integer);
   Procedure Proximo;
   Procedure Primeiro;
   Procedure Ultimo;
   Procedure Anterior;
   Property CodigoAtual: Integer read FCodigoAtual;

    { Public declarations }
  end;
var
  DMPaiCadastro: TDMPaiCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMPaiCadastro }

procedure TDMPaiCadastro.AbrirRegistro(Codigo: Integer);
begin
 FcodigoAtual:= Codigo;
 CDSCadastro.Close;
 SQLDS.CommandText:= FclassFilha.SQlCadastro;
 CDSCadastro.FetchParams;
 CDSCadastro.ParamByName('COD').AsInteger:= Codigo;
 CDSCadastro.Open;


end;

procedure TDMPaiCadastro.DataModuleCreate(Sender: TObject);
begin
 SQLDS.SQLConnection:= DMConexao.SQLConnection;
 FCodigoAtual:= -1;
end;

procedure TDMPaiCadastro.Primeiro;
begin
  FcodigoAtual:= DMConexao.ExecuteScalar('select min (' + FclassFilha.CampoChave +  ') from ' + FclassFilha.NomeTabela);
  AbrirRegistro(FcodigoAtual);
end;

procedure TDMPaiCadastro.Anterior;
Var
  codigo: Integer;
begin
 codigo:= DMConexao.ExecuteScalar('select coalesce (max (' + FclassFilha.CampoChave + '), -1) from ' + FclassFilha.NomeTabela + ' where ' + FclassFilha.CampoChave + ' < ' + InttoStr(FCodigoAtual) );
 if Codigo > -1 then
 AbrirRegistro(codigo);
end;

procedure TDMPaiCadastro.CDSCadastroAfterDelete(DataSet: TDataSet);
begin
CDSCadastro.ApplyUpdates(-1);
end;

procedure TDMPaiCadastro.CDSCadastroAfterPost(DataSet: TDataSet);
begin
CDSCadastro.ApplyUpdates(-1);
FcodigoAtual:= CDSCadastro.FieldByName(FclassFilha.CampoChave).AsInteger;
end;

procedure TDMPaiCadastro.CDSCadastroNewRecord(DataSet: TDataSet);
begin
CDSCadastro.FieldByName(FclassFilha.CampoChave).AsInteger:= DMConexao.ProximoCodigo(FclassFilha.NomeTabela,FclassFilha.CampoChave);
end;

procedure TDMPaiCadastro.Proximo;
var
 codigo: integer;
begin
 codigo:= DMConexao.ExecuteScalar('select coalesce (min (' + FclassFilha.CampoChave + '), -1) from ' + FclassFilha.NomeTabela + ' where ' + FclassFilha.CampoChave + ' > ' + InttoStr(FCodigoAtual) );
 if Codigo > -1 then
 AbrirRegistro(codigo);
end;

procedure TDMPaiCadastro.Ultimo;
var
 codigo: Integer;
begin
 codigo:= DMConexao.ExecuteScalar('select max (' + FclassFilha.CampoChave +  ') from ' + FclassFilha.NomeTabela);
 AbrirRegistro(codigo);
end;

end.
