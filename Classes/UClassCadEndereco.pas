unit UClassCadEndereco;

interface

uses
  data.db, UClassPaiCadastro;

type
  TclassCadEndereco = class(TClassPaiCadastro)
  public
    class function SQlCadastro: String; override;
    Class function SQlConsulta: String; override;
    Class function NomeTabela: String; override;
    Class function CampoChave: String; override;
    class procedure ConfigurarNomesCampos(Fields: TFields); override;

  end;

implementation

{ TclassCadCidade }

class function TclassCadEndereco.CampoChave: String;
begin
   Result:= 'COD_ENDERECO';
end;



class function TclassCadEndereco.NomeTabela: String;
begin
   Result:= 'ENDERECO'
end;

class function TclassCadEndereco.SQlCadastro: String;
begin
 Result:= 'select endereco.COD_ENDERECO,' +#13+
           'endereco.cliente_end,'        +#13+
           'endereco.rua_end,'            +#13+
           'endereco.num_end,'            +#13+
           'endereco.bairro_end,'         +#13+
           'endereco.cidade_end,'         +#13+
           'endereco.padrao_end'          +#13+
           'from endereco';



end;

class procedure TclassCadEndereco.ConfigurarNomesCampos(Fields: TFields);
var
 Field: TField;
begin
 for Field in Fields do
  begin
    if Field.FieldName = 'COD_ENDERECO'  then
     Field.DisplayLabel:= 'CODIGO DO ENDEREÇO'
    ELSE if Field.FieldName = 'CLIENTE_END'  then
     Field.DisplayLabel:= 'CODIGO DO ENDEREÇO'
    ELSE if Field.FieldName = 'RUA_END'  then
     Field.DisplayLabel:= 'RUA'
    ELSE if Field.FieldName = 'NUM_END'  then
     Field.DisplayLabel:= 'NUMERO'
    ELSE if Field.FieldName = 'BAIRRO_END'  then
     Field.DisplayLabel:= 'BAIRRO'
    ELSE if Field.FieldName = 'CIDADE_END'  then
     Field.DisplayLabel:= 'CIDADE'
    ELSE if Field.FieldName = 'PADRAO_END'  then
     Field.DisplayLabel:= 'ENDEREÇO PADRÃO'

  end;
  inherited;
end;

class function TclassCadEndereco.SQlConsulta: String;
begin
  //
end;

end.
