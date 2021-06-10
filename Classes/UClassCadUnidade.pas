unit UClassCadUnidade;

interface

uses
  data.db, UClassPaiCadastro;

type
  TclassCadUnidade = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;

  end;

implementation

{ TclassCadCidade }

class function TclassCadUnidade.CampoChave: String;
begin
   Result:= 'COD_UNIDADE';
end;

class function TclassCadUnidade.NomeTabela: String;
begin
   Result:= 'UNIDADE'
end;

class function TclassCadUnidade.SQlCadastro: String;
begin
 Result:=  'select UNIDADE.COD_UNIDADE,'  +#13 +
           'UNIDADE.NOME_UNIDADE,'        +#13 +
           'UNIDADE.ABREV_UNIDADE'        +#13 +
           'from UNIDADE'                 +#13 +
           'WHERE UNIDADE.COD_UNIDADE=:COD';

end;

class function TclassCadUnidade.SQlConsulta: String;
begin
   Result:=  'select UNIDADE.COD_UNIDADE,'+#13 +
           'UNIDADE.NOME_UNIDADE,'        +#13 +
           'UNIDADE.ABREV_UNIDADE'        +#13 +
           'from UNIDADE'
end;

end.
