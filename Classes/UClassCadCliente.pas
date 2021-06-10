unit UClassCadCliente;

interface

uses
  data.db, UClassPaiCadastro;

type
  TClassCadCliente = class(TClassPaiCadastro)
  private

  public
    Class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;
    Class procedure ConfigurarNomesCampos(Fields: TFields); override;


  end;

implementation

{ TclassCadCidade }

class function TClassCadCliente.CampoChave: String;
begin
   Result:= 'COD_CLIENTE';
end;


class procedure TClassCadCliente.ConfigurarNomesCampos(Fields: TFields);
var
 Field: TField;
begin
//for Field in Fields do
//  begin
//    if Field.FieldName = 'COD_ENDERECO'  then
//     Field.DisplayLabel:= 'CODIGO DO ENDEREÇO'
//    ELSE if Field.FieldName = 'CLIENTE_END'  then
//     Field.DisplayLabel:= 'CODIGO DO ENDEREÇO'
//    ELSE if Field.FieldName = 'RUA_END'  then
//     Field.DisplayLabel:= 'RUA'
//    ELSE if Field.FieldName = 'NUM_END'  then
//     Field.DisplayLabel:= 'NUMERO'
//   ELSE if Field.FieldName = 'BAIRRO_END'  then
//     Field.DisplayLabel:= 'BAIRRO'
//    ELSE if Field.FieldName = 'CIDADE_END'  then
//     Field.DisplayLabel:= 'CIDADE'
//    ELSE if Field.FieldName = 'PADRAO_END'  then
//     Field.DisplayLabel:= 'ENDEREÇO PADRÃO'

//  end;
if (Field.FieldName <> CampoChave) then
 Field.ProviderFlags:= [pfInKey, pfInUpdate, pfInWhere];

  inherited;
end;

class function TClassCadCliente.NomeTabela: String;
begin
   Result:= 'CLIENTE';
end;

class function TClassCadCliente.SQlCadastro: String;
begin
 Result:=  'select CLIENTE.COD_CLIENTE,'             +#13+
           'CLIENTE.NOME_CLIENTE,'                   +#13+
           'CLIENTE.CNPJ_CLIENTE,'                   +#13+
           'CLIENTE.TEL_CLIENTE,'                    +#13+
           'CLIENTE.OBS_CLIENTE,'                    +#13+
           'CLIENTE.EXIBEOBS_CLIENTE,'               +#13+
<<<<<<< HEAD
           'CLIENTE.TIPO_PESSOA'                    +#13+
           'from CLIENTE'                            +#13+
=======
           'CLIENTE.TIPO_PESSOA,'                    +#13+
           'cliente.end_cliente,'                    +#13+
           'endereco.cod_endereco,'                  +#13+
           'endereco.cliente_end,'                   +#13+
           'endereco.bairro_end,'                    +#13+
           'endereco.rua_end,'                       +#13+
           'endereco.num_end,'                       +#13+
           'endereco.cidade_end,'                    +#13+
           'endereco.padrao_end'                     +#13+
           'from CLIENTE'                            +#13+
           'left join endereco on (endereco.cod_endereco = cliente.cod_cliente)' +#13+
>>>>>>> 03c22fe2b8056bebcbcf543cf5292b603901e33a
           'WHERE CLIENTE.COD_CLIENTE=:COD'


end;

class function TClassCadCliente.SQlConsulta: String;
begin
  Result:= 'select CLIENTE.COD_CLIENTE,'             +#13+
           'CLIENTE.NOME_CLIENTE,'                   +#13+
           'endereco.cod_endereco,'                  +#13+
           'from CLIENTE'                            +#13+
           'left join endereco on (endereco.cod_endereco = cliente.cod_cliente)'


end;

end.
