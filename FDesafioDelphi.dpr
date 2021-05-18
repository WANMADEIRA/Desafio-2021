program FDesafioDelphi;

uses
  Vcl.Forms,
  UCadPrincipal in 'UCadPrincipal.pas' {Principal},
  Vcl.Themes,
  Vcl.Styles,
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UPaiCadastro in 'UPaiCadastro.pas' {FPaiCadastro},
  UcadClientes in 'UcadClientes.pas' {FCadCliente},
  UCadCidade in 'UCadCidade.pas' {FCadCidade},
  UcadProduto in 'UcadProduto.pas' {FCadProduto},
  UcadPedido in 'UcadPedido.pas' {FCadPedidos},
  UCadUnidade in 'UCadUnidade.pas' {FCadUnidade},
  UCadPesquisa in 'UCadPesquisa.pas' {FConsulta},
  UDMPaiCadastro in 'UDMPaiCadastro.pas' {DMPaiCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
