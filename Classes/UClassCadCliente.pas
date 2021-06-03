unit UClassCadCliente;

interface

uses
  data.db, UClassPaiCadastro;

type
  TClassCadCliente = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;
//    Class procedure ConfiguraCampos(Fields: TFields); override;

  end;

implementation

{ TclassCadCidade }

class function TClassCadCliente.CampoChave: String;
begin
   Result:= 'COD_CLIENTE';
end;


class function TClassCadCliente.NomeTabela: String;
begin
   Result:= 'CLIENTE';
end;

class function TClassCadCliente.SQlCadastro: String;
begin
 Result:=  'select CLIENTE.COD_CLIENTE,'  +#13 +
           'CLIENTE.NOME_CLIENTE,'        +#13 +
           'CLIENTE.CNPJ_CLIENTE,'        +#13 +
           'CLIENTE.TEL_CLIENTE,'         +#13 +
           'CLIENTE.OBS_CLIENTE,'         +#13 +
           'CLIENTE.TIPO_PESSOA '         +#13 +
           'from CLIENTE'                 +#13 +
           'WHERE CLIENTE.COD_CLIENTE=:COD';

end;

class function TClassCadCliente.SQlConsulta: String;
begin
  //
end;

end.
