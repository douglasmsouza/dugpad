unit U_Preview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, QRPrntr, ImgList , SynMemo, StdCtrls,
  ExtCtrls, Gauges, SynEditPrintPreview, Buttons;

type
  TF_Preview = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton8: TToolButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    SynEditVisualiza: TSynEditPrintPreview;
    ToolButton14: TToolButton;
    SpeedButton1: TSpeedButton;
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

    private
        procedure TextoStatusBar(Atual,Total: Integer);
  end;

var
  F_Preview: TF_Preview;

implementation

uses Principal;

{$R *.dfm}

procedure TF_Preview.ToolButton10Click(Sender: TObject);
begin
   Close;
end;

procedure TF_Preview.ToolButton1Click(Sender: TObject);
begin
   SynEditVisualiza.FirstPage;
   TextoStatusBar(SynEditVisualiza.PageNumber,SynEditVisualiza.PageCount);
end;

procedure TF_Preview.ToolButton4Click(Sender: TObject);
begin
   SynEditVisualiza.LastPage;
   TextoStatusBar(SynEditVisualiza.PageNumber,SynEditVisualiza.PageCount);   
end;

procedure TF_Preview.ToolButton3Click(Sender: TObject);
begin
   SynEditVisualiza.NextPage;
   TextoStatusBar(SynEditVisualiza.PageNumber,SynEditVisualiza.PageCount);   
end;

procedure TF_Preview.ToolButton2Click(Sender: TObject);
begin
   SynEditVisualiza.PreviousPage;
   TextoStatusBar(SynEditVisualiza.PageNumber,SynEditVisualiza.PageCount);   
end;

procedure TF_Preview.ToolButton5Click(Sender: TObject);
begin
  SynEditVisualiza.ScaleMode := pscUserScaled;
  TrackBar1.Position := 100;
end;

procedure TF_Preview.ToolButton8Click(Sender: TObject);
begin
  SynEditVisualiza.ScaleMode := pscPageWidth;
  TrackBar1.Position := SynEditVisualiza.ScalePercent;
end;

procedure TF_Preview.ToolButton6Click(Sender: TObject);
begin
  TrackBar1.Position := TrackBar1.Position - 10;
end;

procedure TF_Preview.ToolButton7Click(Sender: TObject);
begin
  TrackBar1.Position := TrackBar1.Position + 10;
end;

procedure TF_Preview.TrackBar1Change(Sender: TObject);
begin
   SynEditVisualiza.ScaleMode := pscUserScaled;
   SynEditVisualiza.ScalePercent := TrackBar1.Position;
end;

procedure TF_Preview.FormActivate(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := 'Carregando páginas...';
   ToolButton5.Click;
   TrackBar1.Position := SynEditVisualiza.ScalePercent;
   TextoStatusBar(SynEditVisualiza.PageNumber,SynEditVisualiza.PageCount);
end;

procedure TF_Preview.TextoStatusBar(Atual, Total: Integer);
begin
   StatusBar1.Panels[0].Text := 'Página ' + IntToStr(Atual) + ' de ' + IntToStr(Total);
end;

procedure TF_Preview.ToolButton9Click(Sender: TObject);
begin
   F_Principal.ImprimeTexto(SynEditVisualiza.PageCount);
end;

procedure TF_Preview.SpeedButton1Click(Sender: TObject);
begin 
   F_Principal.Configurarimpresso1.Click;
   SynEditVisualiza.UpdatePreview;
end;

end.
