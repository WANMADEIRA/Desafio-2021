unit UClassPaiCadastro;

interface

uses
  Data.sqlExpr, data.db;

type
    TClassPaiCadastro = Class
    class function SQlCadastro: String; virtual;
    Class function SQlConsulta: String; virtual;
    Class function NomeTabela: String; virtual;
    Class function CampoChave: String; virtual;
    Class procedure ConfigurarNomesCampos(Fields: TFields); virtual;
    Class procedure CriarParametro(SQLDataSet: TSQLDataSet); virtual;
end;

implementation
{ TClassPaiCadastro }



class function TClassPaiCadastro.SQlConsulta: String;
begin

end;

{ TClassPaiCadastro }

class function TClassPaiCadastro.CampoChave: String;
begin

end;

class procedure TClassPaiCadastro.ConfigurarNomesCampos(Fields: TFields);
begin

end;

class procedure TClassPaiCadastro.CriarParametro(SQLDataSet: TSQLDataSet);
begin
 SQLDataSet.Params.Clear;
 SQLDataSet.Params.Add;
 SQLDataSet.Params[0].Name       := 'COD';
 SQLDataSet.Params[0].DataType   := ftInteger;
 SQLDataSet.Params[0].ParamType  := ptInput;
 SQLDataSet.Params[0].Value      := 0;
end;

class function TClassPaiCadastro.NomeTabela: String;
begin

end;

class function TClassPaiCadastro.SQlCadastro: String;
begin

end;

end.
