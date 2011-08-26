unit U_TarefasAgendadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Gauges, ComCtrls, Menus, Buttons, ExtCtrls, U_Funcoes,
  Calendar;

type
  TF_TarefasAgendadas = class(TForm)
    PopupMenu1: TPopupMenu;
    Agendarnovatarefa1: TMenuItem;
    MenuVerHoje: TMenuItem;
    MenuVerTodas: TMenuItem;
    MenuExcluirAntigas: TMenuItem;
    MenuExcluirTodas: TMenuItem;
    MenuExcluirSelecionada: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    N1: TMenuItem;
    N2: TMenuItem;
    MenuVerProxs: TMenuItem;
    StatusBar1: TStatusBar;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Button2: TButton;
    botaoHoje: TButton;
    botaoProxs: TButton;
    botaoTodas: TButton;
    botaoExcluiSelected: TButton;
    botaoExcluirAntigas: TButton;
    botaoExcluirTodas: TButton;
    Button1: TButton;
    Grid: TStringGrid;
    Memo: TMemo;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Calendario: TCalendar;
    PnData: TPanel;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure botaoTodasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure botaoHojeClick(Sender: TObject);
    procedure botaoProxsClick(Sender: TObject);
    procedure GridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure botaoExcluiSelectedClick(Sender: TObject);
    procedure botaoExcluirAntigasClick(Sender: TObject);
    procedure botaoExcluirTodasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure CalendarioChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure CalendarioDblClick(Sender: TObject);
  private
     Lista : TStringList;
     Selecionada : Integer;
     Tokens : TStrArray;
     procedure LimpaTudo;
     function TotalProximas : Integer;
     function TotalAnteriores : Integer;
     function TotalGeral : Integer;
     procedure MostraProximas;
     procedure MostraTodas;
     procedure MostraPorData(Data : String);
     procedure AtualizaStatusbar;
  public
     function TotalHoje : Integer;
     procedure MostraHoje;
  end;

var
  F_TarefasAgendadas: TF_TarefasAgendadas;

implementation

uses U_NovaTarefa,Principal, DateUtils;

{$R *.dfm}

procedure TF_TarefasAgendadas.Button1Click(Sender: TObject);
begin
   Close;
end;
{}
procedure TF_TarefasAgendadas.Button2Click(Sender: TObject);
begin
 try
  F_NovaTarefa := TF_NovaTarefa.Create(Self);
  F_NovaTarefa.DateTimePicker1.Date := Date;
  F_NovaTarefa.ShowModal;
 finally     
  F_NovaTarefa.Free;
  AtualizaStatusbar;
  MostraHoje;
 end;
end;

procedure TF_TarefasAgendadas.LimpaTudo;
var I : Integer;
begin
   for I := 1 to Grid.RowCount-1 do
     begin
       Grid.Cells[0,I] := '';
       Grid.Cells[1,I] := '';
     end;
   Grid.RowCount := Lista.Count + 2;
end;


procedure TF_TarefasAgendadas.PopupMenu1Popup(Sender: TObject);
begin
   PopupMenu1.Items[2].Caption := 'Somente hoje ('+FormatDateTime('dd/MM/yyyy',Now)+')';
end;

procedure TF_TarefasAgendadas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin  
   if F_Principal.MenuPermitirEsc.Checked then
     if key = 27 then
       Close;
end;

procedure TF_TarefasAgendadas.botaoTodasClick(Sender: TObject);
begin
  MostraTodas;
end;

procedure TF_TarefasAgendadas.FormCreate(Sender: TObject);
begin
  Grid.ColWidths[0] := 80;  
  Grid.Cells[0,0] := 'Data';
  Grid.Cells[1,0] := 'Tarefa';
  Grid.RowCount := 2;
  Lista := TStringList.Create;
  PnData.Caption := cMes[Calendario.Month] + ' de ' + IntToStr(Calendario.Year);
  MostraHoje;
end;

procedure TF_TarefasAgendadas.botaoHojeClick(Sender: TObject);
begin
  MostraHoje;
end;

procedure TF_TarefasAgendadas.botaoProxsClick(Sender: TObject);
begin
  MostraProximas;
end;

function TF_TarefasAgendadas.TotalAnteriores: Integer;
var Total : Integer;
    Arq : TextFile;
    Linha : String;
begin
   F_Principal.VerificaArquivosTexto;
   Total := 0;
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
      Readln(Arq,Linha);
      GetTokens(Tokens,';',Linha,2);
      if(StrToDate(Tokens[0]) < Today) then
        Inc(Total)
    end;
   CloseFile(Arq);
   Result := Total;
end;

function TF_TarefasAgendadas.TotalGeral: Integer;
begin
   Result := TotalProximas + TotalAnteriores + TotalHoje;
end;

function TF_TarefasAgendadas.TotalHoje: Integer;
var Total : Integer;
    Arq : TextFile;
    Linha : String;
begin
   F_Principal.VerificaArquivosTexto;
   Total := 0;
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
      Readln(Arq,Linha);
      GetTokens(Tokens,';',Linha,2);
      if(StrToDate(Tokens[0]) = Today) then
        Inc(Total)
    end;
   CloseFile(Arq);
   Result := Total;   
end;

function TF_TarefasAgendadas.TotalProximas: Integer;
var Total : Integer;
    Arq : TextFile;
    Linha : String;
begin
   F_Principal.VerificaArquivosTexto;
   Total := 0;
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
      Readln(Arq,Linha);
      GetTokens(Tokens,';',Linha,2);
      if(StrToDate(Tokens[0]) > Today) then
        Inc(Total)
    end;
   CloseFile(Arq);
   Result := Total;
end;

procedure TF_TarefasAgendadas.MostraHoje;
var I : Integer;
    Arq : TextFile;
    Linha : String;
begin
   F_Principal.VerificaArquivosTexto;
   Lista.Clear;                      
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
      Readln(Arq,Linha);
      GetTokens(Tokens,';',Linha,2);
      if(StrToDate(Tokens[0]) = Today) then
        Lista.Add(Linha);
    end;
   CloseFile(Arq);

   LimpaTudo;

   for I := 0 to Lista.Count-1 do
    begin
       GetTokens(Tokens,';', Lista.Strings[I],2);
       Grid.Cells[0,I+1] := Tokens[0];
       Grid.Cells[1,I+1] := Tokens[1];
    end;
   AtualizaStatusbar;
end;

procedure TF_TarefasAgendadas.MostraProximas;
var I : Integer;
    Arq : TextFile;
    Linha : String;
begin
   F_Principal.VerificaArquivosTexto;
   Lista.Clear;                      
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
      Readln(Arq,Linha);
      GetTokens(Tokens,';',Linha,2);
      if(StrToDate(Tokens[0]) > Today) then
        Lista.Add(Linha);
    end;
   CloseFile(Arq);

   LimpaTudo;

   for I := 0 to Lista.Count-1 do
    begin
       GetTokens(Tokens,';', Lista.Strings[I],2);
       Grid.Cells[0,I+1] := Tokens[0];
       Grid.Cells[1,I+1] := Tokens[1];
    end;
   AtualizaStatusbar;    
end;

procedure TF_TarefasAgendadas.MostraTodas;
var I : Integer;
begin
   F_Principal.VerificaArquivosTexto;
   Lista.Clear;
   Lista.LoadFromFile(F_Principal.DiretorioEXE+cArquivoTarefas);
   LimpaTudo;
   for I := 0 to Lista.Count-1 do
    begin
      GetTokens(Tokens,';',Lista.Strings[I],2);
      Grid.Cells[0,I+1] := Tokens[0];
      Grid.Cells[1,I+1] := Tokens[1];
    end;
   AtualizaStatusbar;
end;

procedure TF_TarefasAgendadas.MostraPorData(Data: String);
var Arq : TextFile;
    Linha : String;
    I : Integer;
begin
   F_Principal.VerificaArquivosTexto;
   Lista.Clear;                      
   AssignFile(Arq,F_Principal.DiretorioEXE+cArquivoTarefas);
   Reset(Arq);
   while(not Eof(Arq)) do
    begin
       Readln(Arq,Linha);
       GetTokens(Tokens,';',Linha,2);
       if(FormatDateTime('dd/mm/yyyy',StrToDate(Tokens[0])) = Data) then
          Lista.Add(Linha);
    end;
   CloseFile(Arq);

   LimpaTudo;

   for I := 0 to Lista.Count-1 do
    begin
      GetTokens(Tokens,';',Lista.Strings[I],2);
      Grid.Cells[0,I+1] := Tokens[0];
      Grid.Cells[1,I+1] := Tokens[1];
    end;
end;

procedure TF_TarefasAgendadas.GridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
   Selecionada := ARow-1;
   botaoExcluiSelected.Enabled :=  (Grid.Cells[0,Selecionada+1] <> '') and
                                   (Grid.Cells[1,Selecionada+1] <> '');
   Memo.Text := Grid.Cells[1,Selecionada+1];
end;

procedure TF_TarefasAgendadas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Lista.Free;
end;

procedure TF_TarefasAgendadas.botaoExcluiSelectedClick(Sender: TObject);
begin
  try
    Lista.Delete(Selecionada);
    Lista.SaveToFile(F_Principal.DiretorioEXE+cArquivoTarefas);
    MostraTodas;
  except
  end;
end;

procedure TF_TarefasAgendadas.botaoExcluirAntigasClick(Sender: TObject);
var I : Integer;
begin
   try
     for I := Lista.Count-1 downto 0 do
       begin
        GetTokens(Tokens,';',Lista.Strings[I],2);
        if(FormatDateTime('dd/mm/yyyy',StrToDate(Tokens[0])) < FormatDateTime('dd/mm/yyyy',Date)) then
           Lista.Delete(0);
       end;
     Lista.SaveToFile(F_Principal.DiretorioEXE+cArquivoTarefas);
     MostraTodas;
   except
   end;
end;

procedure TF_TarefasAgendadas.botaoExcluirTodasClick(Sender: TObject);
begin
   Lista.Clear;
   Lista.SaveToFile(F_Principal.DiretorioEXE+cArquivoTarefas);
   MostraTodas;
end;

procedure TF_TarefasAgendadas.AtualizaStatusbar;
var Hoje,Antigas,Proximas,Total : Integer;
begin
   Hoje := TotalHoje;
   Antigas := TotalAnteriores;
   Proximas := TotalProximas;
   Total := TotalGeral;

   StatusBar1.Panels[0].Text := 'Antigas : ' + IntToStr(Antigas);
   StatusBar1.Panels[1].Text := 'Hoje : ' + IntToStr(Hoje);
   StatusBar1.Panels[2].Text := 'Próximas : ' + IntToStr(Proximas);
   StatusBar1.Panels[3].Text := 'TOTAL : ' + IntToStr(Total);

   botaoHoje.Enabled := (Hoje > 0);
   botaoProxs.Enabled := (Proximas > 0);
   botaoTodas.Enabled := (Total > 0);
   botaoExcluirAntigas.Enabled := (Antigas > 0);
   botaoExcluirTodas.Enabled := (Total > 0);
   botaoExcluiSelected.Enabled :=  (Grid.Cells[0,Selecionada+1] <> '') and
                                   (Grid.Cells[1,Selecionada+1] <> '');

   MenuVerHoje.Enabled := botaoHoje.Enabled;
   MenuVerTodas.Enabled := botaoTodas.Enabled;
   MenuExcluirAntigas.Enabled := botaoExcluirAntigas.Enabled;
   MenuExcluirTodas.Enabled := botaoExcluirTodas.Enabled;
   MenuExcluirSelecionada.Enabled := botaoExcluiSelected.Enabled;
   MenuVerProxs.Enabled := botaoProxs.Enabled;
end;

procedure TF_TarefasAgendadas.FormActivate(Sender: TObject);
begin
   MostraHoje;
end;

procedure TF_TarefasAgendadas.GridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var Cor : TColor;
begin
  if ARow mod 2 = 0 then
    Cor := clWhite
  else
    Cor := clWhite;

  if (ARow > 0) then
  begin
    if not(gdSelected in State) then
      Grid.Canvas.Brush.Color := Cor
    else
      Grid.Canvas.Brush.Color := clSilver;

    Grid.Canvas.Font.Color := clBlack;
    Grid.Canvas.FillRect(Rect);
    Grid.Canvas.TextRect(Rect,Rect.Left+2,Rect.Top,Grid.Cells[ACol,ARow]);    
  end;
end;

procedure TF_TarefasAgendadas.FormResize(Sender: TObject);
begin
  Grid.ColWidths[1] := Grid.Width - Grid.ColWidths[0] - 5;
end;

procedure TF_TarefasAgendadas.CalendarioChange(Sender: TObject);
begin
   PnData.Caption := cMes[Calendario.Month] + ' de ' + IntToStr(Calendario.Year);
   MostraPorData(FormatDateTime('dd/mm/yyyy',Calendario.CalendarDate));
   botaoExcluiSelected.Enabled :=   (Grid.Cells[0,Selecionada+1] <> '') and
                                    (Grid.Cells[1,Selecionada+1] <> '');
end;

procedure TF_TarefasAgendadas.Image1Click(Sender: TObject);
begin
  Calendario.PrevMonth;
end;

procedure TF_TarefasAgendadas.Image2Click(Sender: TObject);
begin
  Calendario.NextMonth;
end;

procedure TF_TarefasAgendadas.CalendarioDblClick(Sender: TObject);
begin
 try
  F_NovaTarefa := TF_NovaTarefa.Create(Self);
  F_NovaTarefa.DateTimePicker1.Date := Calendario.CalendarDate;
  F_NovaTarefa.ShowModal;
 finally
  F_NovaTarefa.Free;
  AtualizaStatusbar;
  MostraHoje;  
 end;
end;

end.
