unit UDMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient;

type
  TDMPaiCadastro = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSP: TDataSetProvider;
    SQLDS: TSQLDataSet;
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
 CDSCadastro.Close
 SQLDS.CommandText:= FclassFilha.SqlCadastro;
 CDSCadastro.Open;

end;

procedure TDMPaiCadastro.Anterior;
begin

end;

procedure TDMPaiCadastro.Primeiro;
begin

end;

procedure TDMPaiCadastro.Proximo;
begin

end;

procedure TDMPaiCadastro.Ultimo;
begin

end;

end.
