unit UDMCadCidade;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadCidade;

type
  TDMCadCidade = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadCidade: TDMCadCidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TDMCadCidade }

procedure TDMCadCidade.DataModuleCreate(Sender: TObject);
begin
 FclassFilha:= TclassCadCidade.Create;
 inherited;
end;

end.
