unit U_ConfiguraImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,SynEditPrint, StdCtrls, Buttons, ExtCtrls, U_Funcoes;

type
  TF_ConfiguraImpressao = class(TForm)
    GroupBox1: TGroupBox;
    Ed_MargemEsq: TLabeledEdit;
    Ed_MargemDir: TLabeledEdit;
    Ed_MargemSup: TLabeledEdit;
    Ed_MargemInf: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Ed_MargemEsqKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    MemoPrinter : TSynEditPrint;
    function TemVirgula(Edit : TEdit) : Boolean;
  public
    procedure MostraConfiguracao(MemoPrinter : TSynEditPrint);
  end;

var
  F_ConfiguraImpressao: TF_ConfiguraImpressao;

implementation

{$R *.dfm}

{ TF_ConfiguraImpressao }

procedure TF_ConfiguraImpressao.MostraConfiguracao(
 MemoPrinter: TSynEditPrint);
begin
   Self.MemoPrinter := MemoPrinter;
   Ed_MargemEsq.Text := FloatToStr(MemoPrinter.Margins.Left);
   Ed_MargemDir.Text := FloatToStr(MemoPrinter.Margins.Right);
   Ed_MargemSup.Text := FloatToStr(MemoPrinter.Margins.Top);
   Ed_MargemInf.Text := FloatToStr(MemoPrinter.Margins.Bottom);
   ShowModal;
end;

procedure TF_ConfiguraImpressao.Ed_MargemEsqKeyPress(Sender: TObject;
  var Key: Char);
begin

  if not(key in ['0'..'9',#8,#13,',']) then
    key := #0;
  if TemVirgula(TEdit(Sender)) then
    if Key = ',' then
      Key := #0;
end;

procedure TF_ConfiguraImpressao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TF_ConfiguraImpressao.BitBtn1Click(Sender: TObject);
begin
   try
     Self.MemoPrinter.Margins.Left := StrToFloat(Ed_MargemEsq.Text);
   except
     DugMensagem('Informe um valor numérico para a margem esquerda!',cTituloMensagem,48);
     Abort;
   end;
   try
     Self.MemoPrinter.Margins.Right := StrToFloat(Ed_MargemDir.Text);
   except
     DugMensagem('Informe um valor numérico para a margem direita!',cTituloMensagem,48);
     Abort;
   end;
   try
     Self.MemoPrinter.Margins.Top := StrToFloat(Ed_MargemSup.Text);
   except
     DugMensagem('Informe um valor numérico para a margem superior!',cTituloMensagem,48);
     Abort;
   end;
   try
     Self.MemoPrinter.Margins.Bottom := StrToFloat(Ed_MargemInf.Text);
   except
     DugMensagem('Informe um valor numérico para a margem inferior!',cTituloMensagem,48);
     Abort;
   end;

   Close;
end;

function TF_ConfiguraImpressao.TemVirgula(Edit: TEdit): Boolean;
begin
  Result := Pos(',',Edit.Text) > 0;
end;

end.
