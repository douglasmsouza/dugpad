unit U_Cores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TF_Cores = class(TForm)
    Panel1: TPanel;
    GridCores: TStringGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    procedure GridCoresDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GridCoresSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GridCoresDblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    CorPadrao : TColor;
    CorEscolhida : TColor;
    Escolheu : Boolean;
    function PegaCorCelula(pGrid:TStringGrid;pColuna,pLinha:Integer): TColor;
    procedure DesenhaCor(Linha, Coluna : Integer; Rect : TRect);
    function Cor(R,G,B: String) : Cardinal;
    procedure SetCor(Cor : TColor);
  public
    function MostraCores(Titulo: String; CorPadrao : TColor) : TColor;
  end;

var
  F_Cores: TF_Cores;

implementation

uses Principal, Math;

{$R *.dfm}


procedure TF_Cores.GridCoresDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
    case ARow of
        0: begin  // LINHA 1
              case ACol of
                 0: SetCor($008080FF);
                 1: SetCor($0080FFFF);
                 2: SetCor($0080FF80);
                 3: SetCor($0080FF00);
                 4: SetCor($00FFFF80);
                 5: SetCor($00FF8000);
                 6: SetCor($00C080FF);
                 7: SetCor($00FF80FF);
              end;
           end;
        1: begin // LINHA 2
              case ACol of
                 0: SetCor(clRed);
                 1: SetCor(clYellow);
                 2: SetCor($0000FF80);
                 3: SetCor($0040FF00);
                 4: SetCor(clAqua);
                 5: SetCor($00C08000);
                 6: SetCor($00C08080);
                 7: SetCor(clFuchsia);
              end;
           end;
        2: begin // LINHA 3
              case ACol of
                 0: SetCor($00404080);
                 1: SetCor($004080FF);
                 2: SetCor(clLime);
                 3: SetCor(clTeal);
                 4: SetCor($00804000);
                 5: SetCor($00FF8080);
                 6: SetCor($00400080);
                 7: SetCor($008000FF);
              end;
           end;
        3: begin // LINHA 4
              case ACol of
                 0: SetCor(clMaroon);
                 1: SetCor($000080FF);
                 2: SetCor(clGreen);
                 3: SetCor($00408000);
                 4: SetCor(clBlue);
                 5: SetCor($00A00000);
                 6: SetCor(clPurple);
                 7: SetCor($00FF0080);
              end;
           end;
        4: begin // LINHA 5
              case ACol of
                 0: SetCor($00000040);
                 1: SetCor($00004080);
                 2: SetCor($00004000);
                 3: SetCor($00404000);
                 4: SetCor(clNavy);
                 5: SetCor($00400000);
                 6: SetCor($00400040);
                 7: SetCor($00800040);
              end;
           end;
        5: begin // LINHA 6
              case ACol of
                 0: SetCor(clBlack);
                 1: SetCor(clOlive);
                 2: SetCor($00408080);
                 3: SetCor(clGray);
                 4: SetCor($00808040);
                 5: SetCor(clSilver);
                 6: SetCor($00400040);
                 7: SetCor(clWhite);
              end;
           end;
    end;
    DesenhaCor(ARow,ACol,Rect);
end;

function TF_Cores.PegaCorCelula(pGrid:TStringGrid;pColuna,pLinha:Integer): TColor;
var R : TRect;
begin
   R := pGrid.CellRect(pColuna, pLinha);
   Result := pGrid.Canvas.Pixels[R.Left + 2, R.Top + 2];
end;

procedure TF_Cores.GridCoresSelectCell(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);
begin
   CorEscolhida := PegaCorCelula(GridCores,ACol,ARow);
   {}
   Edit1.Text := IntToStr(GetRValue(CorEscolhida));
   Edit2.Text := IntToStr(GetGValue(CorEscolhida));
   Edit3.Text := IntToStr(GetBValue(CorEscolhida));
end;

procedure TF_Cores.GridCoresDblClick(Sender: TObject);
begin
   Escolheu := True;
   Close;
end;

procedure TF_Cores.DesenhaCor(Linha, Coluna : Integer; Rect : TRect);
begin
  GridCores.Canvas.TextRect(Rect, Rect.Left+2,Rect.Top+2,GridCores.Cells[Linha,Coluna]);
end;

procedure TF_Cores.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TF_Cores.Edit1Change(Sender: TObject);
var CorRGB : Cardinal;
begin
  if Length(Trim(TEdit(Sender).Text)) = 0 then
    TEdit(Sender).Text := '0';
  if StrToInt(TEdit(Sender).Text) > 255 then
    TEdit(Sender).Text := '255';
  {}
  CorRGB := Cor(Edit1.Text,Edit2.Text,Edit3.Text);
  {}
  Shape1.Brush.Color := CorRGB;
end;

function TF_Cores.Cor(R, G, B: String): Cardinal;
begin
  Result := RGB(StrToInt(R),StrToInt(G),StrToInt(B));
end;

procedure TF_Cores.FormCreate(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
end;

procedure TF_Cores.SetCor(Cor: TColor);
begin
  GridCores.Canvas.Brush.Color := Cor;
end;

procedure TF_Cores.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    CorEscolhida := Shape1.Brush.Color;
    Escolheu := True;
    Close;
  end;
end;

procedure TF_Cores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then Close;
end;

procedure TF_Cores.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    CorEscolhida := Shape2.Brush.Color;
    Escolheu := True;
    Close;
  end;
end;

function TF_Cores.MostraCores(Titulo: String; CorPadrao : TColor): TColor;
begin
  Result := CorPadrao;

  Shape2.Brush.Color := CorPadrao;
  Edit1.Text := IntToStr(GetRValue(CorPadrao));
  Edit2.Text := IntToStr(GetGValue(CorPadrao));
  Edit3.Text := IntToStr(GetBValue(CorPadrao));

  Caption := Titulo;
  Escolheu := False;

  ShowModal;

  if Escolheu then
    Result := CorEscolhida
end;

end.
