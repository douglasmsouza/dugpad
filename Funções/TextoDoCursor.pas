function TextoDoCursor(Memo: TMemo): String;
var TextoAntes, TextoDepois : String;
    Ind : Integer;   
    Texto : String;
begin
    TextoAntes := '';
    TextoDepois := '';    

    if Memo.SelLength > 1 then
      Texto := Memo.SelText
    else
    begin
      Ind := Memo.SelStart-1;
      while (Memo.Text[Ind] in ['a'..'z','A'..'Z','_']) do
      begin
        TextoAntes := Memo.Text[Ind] + TextoAntes;
        Dec(Ind);
      end;
      Ind := Memo.SelStart+1;
      while (Memo.Text[Ind] in ['a'..'z','A'..'Z','_']) do
      begin
        TextoDepois := TextoDepois + Memo.Text[Ind];
        Inc(Ind);
      end;
      Texto := TextoAntes+ Memo.Text[Memo.SelStart] + TextoDepois;
    end;
    Result := Texto;
end;