unit UDMCadUnidade;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadUnidade;

type
  TDMCadUnidade = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadUnidade: TDMCadUnidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadUnidade.DataModuleCreate(Sender: TObject);
begin
 FClassFilha := TclassCadUnidade.create;
  inherited;

end;

end.
