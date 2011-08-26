unit U_InfoTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls , shellapi, Buttons, ExtCtrls;

type
  TF_InfoTexto = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MostraInfoArquivo(DocumentoAtual,Caminho,Tamanho,Linhas,Caracteres : String);
  end;

var
  F_InfoTexto: TF_InfoTexto;

implementation

uses Principal;

{$R *.dfm}

procedure TF_InfoTexto.Label6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',PChar(label6.HInt), nil, nil, SW_SHOW);
end;

procedure TF_InfoTexto.MostraInfoArquivo(DocumentoAtual, Caminho, Tamanho,
  Linhas, Caracteres: String);
begin
  if not FileExists(Caminho) then
    Label6.Caption := 'Arquivo não encontrado no disco!'
  else
    Label6.Caption := ExtractFilePath(Caminho);
    Label8.Caption := DocumentoAtual;
    Label7.Caption := Tamanho  + ' Kb';
    Label9.Caption := Linhas;
    Label10.Caption := Caracteres;
    Label6.Hint := Label6.Caption;
    Label8.Hint := Label8.Caption;
  if Length(Label6.Caption) >= 65 then
    Label6.Caption := Copy(Label6.Caption,0,65) + '...';

  if Length(Label8.Caption) >= 65 then
    Label8.Caption := Copy(Label8.Caption,0,65) + '...';

  ShowModal;
end;

end.
