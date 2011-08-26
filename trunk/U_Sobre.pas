unit U_Sobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TF_Sobre = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sobre: TF_Sobre;

implementation

uses Principal;

{$R *.dfm}

procedure TF_Sobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin    
   if F_Principal.MenuPermitirEsc.Checked then
    if key = 27 then
      Close;
end;

procedure TF_Sobre.BitBtn2Click(Sender: TObject);
begin
  Application.HelpCommand(11,0);
end;

procedure TF_Sobre.FormCreate(Sender: TObject);
begin
//  AlphaBlendValue := F_Principal.vTransparencia;
end;

end.
 
