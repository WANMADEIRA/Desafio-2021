unit UDMCadProduto;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadProduto;

type
  TDMCadProduto = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadProduto: TDMCadProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadProduto.DataModuleCreate(Sender: TObject);
begin
 FclassFilha := TclassCadProduto.create;
  inherited;

end;

end.
