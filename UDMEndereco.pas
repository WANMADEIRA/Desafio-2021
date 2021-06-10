unit UDMEndereco;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadEndereco;

type
  TDMCadEndereco = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadEndereco: TDMCadEndereco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadEndereco.DataModuleCreate(Sender: TObject);
begin
 FclassFilha:= TclassCadEndereco.Create;
  inherited;

end;

end.
