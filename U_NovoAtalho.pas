unit U_NovoAtalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, {$WARNINGS OFF}FileCtrl, ExtCtrls{$WARNINGS ON};

type
  TF_NovoAtalho = class(TForm)
    GroupBox1: TGroupBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    EdNomeAtalho: TEdit;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdNomeAtalhoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  F_NovoAtalho: TF_NovoAtalho;

implementation

uses Principal;

{$R *.dfm}

procedure TF_NovoAtalho.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TF_NovoAtalho.DirectoryListBox1Change(Sender: TObject);
begin
  F_Principal.BarraHorizontalListBox(TListBox(DirectoryListBox1));
end;

procedure TF_NovoAtalho.FileListBox1Change(Sender: TObject);
begin
  F_Principal.BarraHorizontalListBox(TListBox(FileListBox1));
end;

procedure TF_NovoAtalho.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if F_Principal.MenuPermitirEsc.Checked then
   if key = 27 then
     Close;
end;

procedure TF_NovoAtalho.DriveComboBox1Change(Sender: TObject);
begin
   try
    DirectoryListBox1.Drive := DriveComboBox1.Drive;
 except end;
end;

procedure TF_NovoAtalho.FormShow(Sender: TObject);
begin
  DriveComboBox1.Align := alTop;
  DirectoryListBox1.Align := alTop;
  FileListBox1.Align := alClient;
end;

procedure TF_NovoAtalho.FileListBox1Click(Sender: TObject);
begin
 try
  if FileListBox1.ItemIndex > -1 then
    EdNomeAtalho.Text :=  FileListBox1.Items[FileListBox1.ItemIndex];
 except end;
end;

procedure TF_NovoAtalho.Button1Click(Sender: TObject);
begin
  if(Length(trim(FileListBox1.FileName)) = 0) then
     begin
        Application.MessageBox('Nenhum item selecionado!','DugPad 1.0',48);
        exit;
     end;
  if AnsiCompareText(ExtractFileName(FileListBox1.FileName),'.exe') = 0 then
     begin
        Application.MessageBox('Somente arquivos executáveis(.exe) podem ser adicionados aos atalhos!','DugPad 1.0',48);
        exit;
     end;
  if(Length(trim(EdNomeAtalho.Text)) = 0) then
     begin
        Application.MessageBox('Informe um nome para o atalho!','DugPad 1.0',48);
        exit;
     end;

  F_Principal.AdicionaAtalho(EdNomeAtalho.Text,FileListBox1.FileName);
  Close;
end;

procedure TF_NovoAtalho.EdNomeAtalhoKeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    #13 : Button1.Click;
  end;
end;

procedure TF_NovoAtalho.FormCreate(Sender: TObject);
begin
//  AlphaBlendValue := F_Principal.vTransparencia;
end;

end.
