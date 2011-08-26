unit U_MensagemDeErro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls, Buttons, SynEdit, SynMemo, jpeg;

type
  TF_MensagemDeErro = class(TForm)
    Botao: TBitBtn;
    ScrollBox1: TScrollBox;
    MemoErros: TMemo;
    Panel1: TPanel;
    LabelMensagem: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure BotaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MostraMensagem(Mensagem,Titulo,Erros : String;TipoMsg : Integer);
  end;

var
  F_MensagemDeErro: TF_MensagemDeErro;

implementation

{$R *.dfm}

{ TF_MensagemDeErro }

procedure TF_MensagemDeErro.MostraMensagem(Mensagem,Titulo,Erros : String;TipoMsg : Integer);
begin
  MemoErros.Text := Erros;
  LabelMensagem.Caption := Mensagem;
  Caption := Titulo;
  MemoErros.HideSelection := False;
  case TipoMsg of
    0: Image1.Show;
    1: Image2.Show;
    2: Image3.Show;
    3: Image4.Show;
  end;
  ShowModal;
end;

procedure TF_MensagemDeErro.BotaoClick(Sender: TObject);
begin
  Close;
end;

procedure TF_MensagemDeErro.FormShow(Sender: TObject);
begin
  Botao.SetFocus;
end;

end.
