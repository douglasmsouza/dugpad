TStrArray = array of String;

procedure GetTokens(var StrArray : TStrArray; Separador : Char; Texto : String; NrPartes : Integer);
var I,Tamanho : Integer;
    Token : String;
begin
   Token := '';
   Tamanho := 0;
   I := 1;
   while (I < Length(Texto)) and ((Tamanho+1) < NrPartes) do
   begin
     while (Texto[I] <> Separador) and (I < Length(Texto)) do
     begin
       Token := Token + Texto[I];
       Inc(I);
     end;
     SetLength(StrArray,Tamanho+1);
     StrArray[Tamanho] := Token;
     Token := '';
     Inc(I);
     Inc(Tamanho);
   end;
   if I < Length(Texto) then
   begin
    Token := Copy(Texto,I,Length(Texto));
    SetLength(StrArray,Tamanho+1);
    StrArray[Tamanho] := Token; //insere a última palavra
   end;
end;