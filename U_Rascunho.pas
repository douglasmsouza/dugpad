unit U_Rascunho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TF_Rascunho = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Rascunho: TF_Rascunho;

implementation

uses Principal;

{$R *.dfm}

procedure TF_Rascunho.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Memo1.Free;
  Free;
end;

procedure TF_Rascunho.FormCreate(Sender: TObject);
begin
  //AlphaBlendValue := F_Principal.vTransparencia;
end;

end.
