unit UclassCadPedido;

interface

uses
  data.db, UClassPaiCadastro;

type
  TclassCadPedido = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;

  end;

implementation

{ TclassCadCidade }

class function TclassCadPedido.CampoChave: String;
begin
   Result:= 'COD_PEDIDO';
end;

class function TclassCadPedido.NomeTabela: String;
begin
   Result:= 'PEDIDO'
end;

class function TclassCadPedido.SQlCadastro: String;
begin
 Result:=  'select PEDIDO.COD_PEDIDO'  +#13 +
           'from PEDIDO'                +#13 +
           'WHERE PEDIDO.COD_PEDIDO=:COD';

end;

class function TclassCadPedido.SQlConsulta: String;
begin
  //
end;

end.
