unit UcadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.DBCtrls, UDMCadCliente, JvMaskEdit, JvDBControls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFCadCliente = class(TFPaiCadastro)
    TabSheet2: TTabSheet;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    dbeditnomeclie: TDBEdit;
    JvDBMaskEdit1: TJvDBMaskEdit;
    JvDBMaskEdit2: TJvDBMaskEdit;
    DBRadioGroup1: TDBRadioGroup;
    Obs: TDBMemo;
    num: TDBEdit;
    uf: TDBEdit;
    bairro: TDBEdit;
    rua: TDBEdit;
    DBGrid1: TDBGrid;
    radioendPrincipal: TDBRadioGroup;
    DBCheckBoxobs: TDBCheckBox;
    dsEndereco: TDataSource;

    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure mascara;
    function Cpf(CPF_Text: string): boolean;
    Function ValidaCNPJ(numCNPJ: string): boolean;
    procedure JvDBMaskEdit2Exit(Sender: TObject);
    procedure ObsExit(Sender: TObject);
    procedure IncluirClick(Sender: TObject);
    procedure ObsClick(Sender: TObject);
    procedure dbeditnomeclieEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCliente: TFCadCliente;

implementation

{$R *.dfm}

function TFCadCliente.Cpf(CPF_Text: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: integer;
  d1, d2: integer;
  digitado, calculado: string;

begin
  n1 := StrToInt(CPF_Text[1]);
  n2 := StrToInt(CPF_Text[2]);
  n3 := StrToInt(CPF_Text[3]);
  n4 := StrToInt(CPF_Text[5]);
  n5 := StrToInt(CPF_Text[6]);
  n6 := StrToInt(CPF_Text[7]);
  n7 := StrToInt(CPF_Text[9]);
  n8 := StrToInt(CPF_Text[10]);
  n9 := StrToInt(CPF_Text[11]);
  d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9
    + n1 * 10;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 +
    n2 * 10 + n1 * 11;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := inttostr(d1) + inttostr(d2);
  digitado := CPF_Text[13] + CPF_Text[14];
  if calculado = digitado then
    Cpf := true
  else
    Cpf := false;

end;

procedure TFCadCliente.dbeditnomeclieEnter(Sender: TObject);
begin
  inherited;
UpperCase(dbeditnomeclie.Text);
end;

procedure TFCadCliente.DBRadioGroup1Change(Sender: TObject);
begin

  if DBRadioGroup1.ItemIndex = 1 then
    Label2.Caption := 'CNPJ'
  else
    Label2.Caption := 'CPF';
  mascara;
  inherited;

end;

function TFCadCliente.ValidaCNPJ(numCNPJ: string): boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret := false;
  cnpj := '';
  // Analisa os formatos
  if Length(numCNPJ) = 18 then
    if (Copy(numCNPJ, 3, 1) + Copy(numCNPJ, 7, 1) + Copy(numCNPJ, 11, 1) +
      Copy(numCNPJ, 16, 1) = '../-') then
    begin
      cnpj := Copy(numCNPJ, 1, 2) + Copy(numCNPJ, 4, 3) + Copy(numCNPJ, 8, 3) +
        Copy(numCNPJ, 12, 4) + Copy(numCNPJ, 17, 2);
      ret := true;
    end;
  if Length(numCNPJ) = 14 then
  begin
    cnpj := numCNPJ;
    ret := true;
  end;
  // Verifica
  if ret then
  begin
    try
      // 1° digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;
      dg1 := 11 - (total mod 11);
      if dg1 > 9 then
        dg1 := 0;
      // 2° digito
      total := 0;
      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;
      dg2 := 11 - (total mod 11);
      if dg2 > 9 then
        dg2 := 0;
      // Validação final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and
        (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := true
      else
        ret := false;
    except
      ret := false;
    end;

  end;
  ValidaCNPJ := ret;
end;

procedure TFCadCliente.DSStateChange(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex = 1 then
    Label2.Caption := 'CNPJ'
  else
    Label2.Caption := 'CPF';



end;

procedure TFCadCliente.FormCreate(Sender: TObject);
begin
  DMCadastro := TDMCadCliente.Create(SELF);
  inherited;
  DBRadioGroup1.ItemIndex := 0;
  Label2.Caption := 'CPF:';
  PageControl1.ActivePageIndex:=0;

end;

procedure TFCadCliente.IncluirClick(Sender: TObject);
begin
  inherited;
  DMCadastro.CDSCadastro.FieldByName('EXIBEOBS_CLIENTE').AsString := 'N';
end;

procedure TFCadCliente.JvDBMaskEdit2Exit(Sender: TObject);
begin
  inherited;

  If (JvDBMaskEdit2.Text <> '') and (Label2.Caption = 'CPF') Then
  BEGIN

    If Cpf(JvDBMaskEdit2.Text) = false Then

    Begin

      MessageDlg('O CPF informado esta incorreto!', mtError, [mbOk], 0);

      JvDBMaskEdit2.SetFocus;

    End

  END
  else if (JvDBMaskEdit2.Text <> '') and (Label2.Caption = 'CNPJ') Then
  BEGIN

    If ValidaCNPJ(JvDBMaskEdit2.Text) = false Then
    BEGIN

      Begin

        MessageDlg('O CNPJ informado esta incorreto!', mtError, [mbOk], 0);

        JvDBMaskEdit2.SetFocus;

      End;

    END;
  end;

end;

procedure TFCadCliente.mascara;
begin
  if DBRadioGroup1.ItemIndex = 1 then
    JvDBMaskEdit2.EditMask := '00.000.000/0000-00;1;_'
  else
    JvDBMaskEdit2.EditMask := '000.000.000-00;1;'

end;

procedure TFCadCliente.ObsClick(Sender: TObject);
begin
  inherited;
  DMCadastro.CDSCadastro.Edit;
end;

procedure TFCadCliente.ObsExit(Sender: TObject);
begin
  inherited;
  if Obs.Text <> '' then
  BEGIN
    if Application.MessageBox
      ('Deseja que a observação apareça na tela de pedidos?', 'Confirme',
      MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_DEFBUTTON1) = ID_YES then
      DMCadastro.CDSCadastro.FieldByName('EXIBEOBS_CLIENTE').AsString := 'S'
    else
      DMCadastro.CDSCadastro.FieldByName('EXIBEOBS_CLIENTE').AsString := 'N';
  END
  else
      DMCadastro.CDSCadastro.FieldByName('EXIBEOBS_CLIENTE').AsString := 'N';
end;

end.
