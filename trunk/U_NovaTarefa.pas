unit U_NovaTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask,U_Funcoes;

type
  
  TF_NovaTarefa = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Memo1: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private

  public
  end;  

var
  F_NovaTarefa: TF_NovaTarefa;

implementation

uses U_TarefasAgendadas, U_Calendario, Math, Principal;

{$R *.dfm}

procedure TF_NovaTarefa.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TF_NovaTarefa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if F_Principal.MenuPermitirEsc.Checked then
   if key = 27 then
     Close;
end;

procedure TF_NovaTarefa.Button2Click(Sender: TObject);
var Arq : TextFile;
begin
   F_Principal.VerificaArquivosTexto;
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Append(Arq);
   Writeln(Arq, DateToStr(DateTimePicker1.Date)+';'+Memo1.Text);
   CloseFile(Arq);
   Close;
end;
procedure TF_NovaTarefa.Memo1Change(Sender: TObject);
begin
  Button2.Enabled := (Length(Trim(Memo1.Text)) > 0);
end;

procedure TF_NovaTarefa.FormCreate(Sender: TObject);
begin
//  AlphaBlendValue := F_Principal.vTransparencia;
  Memo1.Clear;
end;

procedure TF_NovaTarefa.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Button2.Enabled)) then
     Button2.Click;
end;

procedure TF_NovaTarefa.FormShow(Sender: TObject);
begin
  Memo1.SetFocus;
end;

end.
