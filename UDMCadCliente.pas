unit UDMCadCliente;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadCliente;

type
  TDMCadCliente = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadCliente: TDMCadCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadCliente.DataModuleCreate(Sender: TObject);
begin
  FclassFilha:= TClassCadCliente.Create;
  inherited;

end;

end.
