unit U_Calendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, SynMemo, Menus, Buttons, ExtCtrls, Grids,
  Calendar,U_Funcoes;

type
  TF_Calendario = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    Agendartarefaparaestedia1: TMenuItem;
    Panel1: TPanel;
    Panel4: TPanel;
    Calendario: TCalendar;
    PnData: TPanel;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CalendarioChange(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  F_Calendario: TF_Calendario;

implementation

uses Principal, U_NovaTarefa, U_TarefasAgendadas;

{$R *.dfm}

procedure TF_Calendario.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Calendario.Button2Click(Sender: TObject);
begin
  with F_Principal do
    TSynMemo(PageControl_Principal.ActivePage.Components[0]).SelText := ' ' + FormatDateTime('dd/mm/yyyy',Calendario.CalendarDate);
end;

procedure TF_Calendario.FormShow(Sender: TObject);
begin
  Button2.Enabled := True;

  Caption := F_Principal.Data(1);
  if F_Principal.PageControl_Principal.PageCount = 0 then
    Button2.Enabled := False;
end;

procedure TF_Calendario.Button3Click(Sender: TObject);
begin
  try
    F_NovaTarefa := TF_NovaTarefa.Create(Self);
    F_NovaTarefa.DateTimePicker1.Date := StrToDate(FormatDateTime('dd/mm/yyyy',Calendario.CalendarDate));
    F_NovaTarefa.ShowModal;
  finally
    F_NovaTarefa.Free;
  end;
end;

procedure TF_Calendario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if F_Principal.MenuPermitirEsc.Checked then
   if Key = 27 then
     Close;
end;

procedure TF_Calendario.FormCreate(Sender: TObject);
begin
  //AlphaBlendValue := F_Principal.vTransparencia;
  ShortDateFormat := 'dd/MM/yyyy';
  PnData.Caption := cMes[Calendario.Month] + ' de ' + IntToStr(Calendario.Year);
end;

procedure TF_Calendario.CalendarioChange(Sender: TObject);
begin
  PnData.Caption := cMes[Calendario.Month] + ' de ' + IntToStr(Calendario.Year);
end;

procedure TF_Calendario.Image2Click(Sender: TObject);
begin
  Calendario.NextMonth;
end;

procedure TF_Calendario.Image1Click(Sender: TObject);
begin
  Calendario.PrevMonth;
end;

end.
