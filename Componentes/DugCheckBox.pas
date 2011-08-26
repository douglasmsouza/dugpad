unit DugCheckBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Graphics;

type
  TDugCheckBox = class(TCheckBox)
  private
    FEdit : TEdit;
    FTextoConfiguracao : String;
  protected
    { Protected declarations }
  public
     procedure SetEdit(Edit : TEdit);
     function  GetEdit : TEdit;
  published
     property Edit : TEdit read FEdit write FEdit;
     property TextoConfig : String read FTextoConfiguracao write FTextoConfiguracao; 
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DugPad', [TDugCheckBox]);
end;

{ TDugCheckBox }

function TDugCheckBox.GetEdit: TEdit;
begin
  Result := FEdit;
end;

procedure TDugCheckBox.SetEdit(Edit: TEdit);
begin
  Self.FEdit := Edit;
end;

end.
