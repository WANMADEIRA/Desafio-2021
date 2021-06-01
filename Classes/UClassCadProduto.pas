unit UClassCadProduto;

interface

uses
  data.db, UClassPaiCadastro;

type
  TclassCadProduto = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;

  end;

implementation

{ TclassCadCidade }

class function TclassCadProduto.CampoChave: String;
begin
   Result:= 'COD_PRODUTO';
end;

class function TclassCadProduto.NomeTabela: String;
begin
   Result:= 'PRODUTO'
end;

class function TclassCadProduto.SQlCadastro: String;
begin
 Result:=  'select PRODUTO.COD_PRODUTO,'  +#13 +
           'PRODUTO.NOME_PRODUTO,'        +#13 +
           'PRODUTO.UNIDADE_PRODUTO'      +#13 +
           'from PRODUTO'                 +#13 +
           'WHERE PRODUTO.COD_PRODUTO=:COD';

end;

class function TclassCadProduto.SQlConsulta: String;
begin
  //
end;

end.
