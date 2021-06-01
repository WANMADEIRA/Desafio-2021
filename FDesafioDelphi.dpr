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
  UDMPaiCadastro in 'UDMPaiCadastro.pas' {DMPaiCadastro: TDataModule},
  UClassPaiCadastro in 'Classes\UClassPaiCadastro.pas',
  UClassCadCidade in 'Classes\UClassCadCidade.pas',
  UDMCadCidade in 'UDMCadCidade.pas' {DMCadCidade: TDataModule},
  UClassCadCliente in 'Classes\UClassCadCliente.pas',
  UClassCadUnidade in 'Classes\UClassCadUnidade.pas',
  UClassCadProduto in 'Classes\UClassCadProduto.pas',
  UclassCadPedido in 'Classes\UclassCadPedido.pas',
  UDMCadUnidade in 'UDMCadUnidade.pas' {DMCadUnidade: TDataModule},
  UDMCadProduto in 'UDMCadProduto.pas' {DMCadProduto: TDataModule},
  UDMCadCliente in 'UDMCadCliente.pas' {DMCadCliente: TDataModule},
  UDMCadPedido in 'UDMCadPedido.pas' {DMCadPedido: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
