unit UClassPaiCadastro;

interface

type
    TClassPaiCadastro = Class
    class function SQlCadastro: String; virtual;
    Class function SQlConsulta: String; virtual;
    Class function NomeTabela: String; virtual;
    Class function CampoChave: String; virtual;

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

class function TClassPaiCadastro.NomeTabela: String;
begin

end;

class function TClassPaiCadastro.SQlCadastro: String;
begin

end;

end.
