unit UClassCadCidade;

interface

uses
  data.db, UClassPaiCadastro;

type
  TclassCadCidade = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;

  end;

implementation

{ TclassCadCidade }

class function TclassCadCidade.CampoChave: String;
begin
   Result:= 'COD_CIDADE';
end;

class function TclassCadCidade.NomeTabela: String;
begin
   Result:= 'CIDADE'
end;

class function TclassCadCidade.SQlCadastro: String;
begin
 Result:=  'select cidade.cod_cidade,'  +#13 +
           'cidade.nome_cidade,'        +#13 +
           'cidade.estado_cidade'       +#13 +
           'from cidade'                +#13 +
           'WHERE CIDADE.COD_CIDADE=:COD';

end;

class function TclassCadCidade.SQlConsulta: String;
begin
  //
end;

end.
