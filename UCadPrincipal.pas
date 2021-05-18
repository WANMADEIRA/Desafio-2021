unit UCadPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls, UCadCidade, UcadPedido, UcadProduto,
  UcadClientes, UCadUnidade, Vcl.Buttons, Vcl.ComCtrls;

type
  TPrincipal = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Menu_Principal: TMainMenu;
    Cadastro1: TMenuItem;
    Manuteno1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    Cliente1: TMenuItem;
    Cidade1: TMenuItem;
    Unidade1: TMenuItem;
    Produto1: TMenuItem;
    Relatorio1: TMenuItem;
    Clientes1: TMenuItem;
    PedidosdeVenda1: TMenuItem;
    Sair1: TMenuItem;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Clientes: TSpeedButton;
    Produtos: TSpeedButton;
    Pedidos: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure PedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.Cidade1Click(Sender: TObject);
begin
  FCadCidade := TFCadCidade.Create(self);
  FCadCidade.ShowModal;
end;

procedure TPrincipal.Cliente1Click(Sender: TObject);
begin
  FCadCliente := TFCadCliente.Create(self);
  FCadCliente.ShowModal;
end;

procedure TPrincipal.ClientesClick(Sender: TObject);
begin
  FCadCliente := TFCadCliente.Create(self);
  FCadCliente.ShowModal;
end;

procedure TPrincipal.PedidodeVenda1Click(Sender: TObject);
begin
  FCadPedidos := TFCadPedidos.Create(self);
  FCadPedidos.ShowModal;
end;

procedure TPrincipal.PedidosClick(Sender: TObject);
begin
  FCadPedidos := TFCadPedidos.Create(self);
  FCadPedidos.ShowModal;
end;

procedure TPrincipal.Produto1Click(Sender: TObject);
begin
  FCadProduto := TFCadProduto.Create(self);
  FCadProduto.ShowModal;
end;

procedure TPrincipal.ProdutosClick(Sender: TObject);
begin
  FCadProduto := TFCadProduto.Create(self);
  FCadProduto.ShowModal;
end;

procedure TPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TPrincipal.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := '   -   ' + timetostr(time);

  if (time >= strtotime('00:00:00')) and (time < strtotime('11:59:59')) then
    Label2.Caption := 'Bom Dia,';
  if (time >= strtotime('12:00:00')) and (time < strtotime('17:59:59')) then
    Label2.Caption := 'Boa Tarde,';
  if (time >= strtotime('18:00:00')) and (time < strtotime('23:59:59')) then
    Label2.Caption := 'Boa Noite,';
  Label2.Caption := Label2.Caption + ' Hoje é ' +
    formatdatetime('dddd d ''de'' mmmmmm ''de'' yyyy', Date);

end;

procedure TPrincipal.Unidade1Click(Sender: TObject);
begin
  FCadUnidade := TFCadUnidade.Create(self);
  FCadUnidade.Show;
end;

end.
