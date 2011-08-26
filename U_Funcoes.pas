unit U_Funcoes;

interface

uses  U_MensagemDeErro, Windows, SynHighlighterSQL;

const

   cDiaDaSemana : Array [1..7] of String = ('Domingo','Segunda-feira','Terça-feira',
                                          'Quarta-feira','Quinta-feira','Sexta-feira','Sábado');

   cMes : Array [1..12] of String = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho',
                                     'Agosto','Setembro','Outubro','Novembro','Dezembro');

   cPadraoClasseJava  = 'public class Dug{'+#13+#13+
                                '   public Dug(){'+#13+#13+'   }'+#13+'}';

   cPadraoInterfaceJava = 'public interface Dug{'+#13+
                                   #13+'}';

   cPadraoPascal  = 'program dug;'+#13+
                            'uses ;'+#13+
                            'begin'+#13+#13+
                            'end.';

   cPadraoUnitPascal = 'unit dug;'+#13+#13+
                                'interface'+#13+#13+
                                'implementation'+#13+#13+
                                'end.';

   cPadraoC = '#include<iostream.h>'+#13+#13+
                       '  void main(){'+#13+#13+
                       '  }';

   cPadraoSQL  = 'select *'+#13+
                         'from tabela'+#13+
                         'order by campo';

   cPadraoHTML = '<html>'+#13+
                          '<head>'+#13+
                          '<title>Novo HTML</title>'+#13+
                          '</head>'+#13+#13+
                          '<body>'+#13+#13+
                          '</body>'+#13+
                          '</html>';

   cProcedure = 'procedure Dug( );'+#13+
                'var'+#13+
                'begin'+#13+#13+
                'end;';

   cFunction =  'function Dug( ) : Retorno;'+#13+
                'var'+#13+
                'begin'+#13+#13+
                'end;';

   cMetodoPublico =  'public void dug(){'+#13+#13+
                     '}';

   cMetodoPrivado =  'private void dug(){'+#13+#13+
                     '}';

   cNovoObjeto = 'objeto = new Classe();';


   cComentario = '//---------------------------' + #13 +
                     '//       Comentário      ' + #13 +
                     '//---------------------------';

   cIfPascal = 'if ( ) then'+#13+
               'begin'+#13+#13+
               'end'+#13+
               'else';

   cIfThen = 'if ( ) then'+#13+
             'begin'+#13+#13+
             'end;';

   cTryExcept = 'try'+#13+#13+
                'except'+#13+#13+
                'end;';

   cTryFinally = 'try'+#13+#13+
                 'finally'+#13+#13+
                 'end;';

   cForToDo =    'for x := min to max do'+#13+
                 'begin'+#13+#13+
                 'end;';

   cForDowntoDo = 'for x := max downto min do'+#13+
                 'begin'+#13+#13+
                 'end;';

   cBeginEnd =  'begin'+#13+#13+
                 'end;';

   cAsmEnd =  'asm'+#13+#13+
               'end;';
               
   cWhileDo =    'while ( ) do'+#13+
                 'begin'+#13+#13+
                 'end;';


   cRepeat  =    'repeat'+#13+
                 ' begin'+#13+#13+
                 ' end;'+#13+
                 'until ( )';

   cCaseOf  =    'case x of'+#13+
                 ' 1:'+#13+
                 ' 2:'+#13+
                 ' 3:'+#13+
                 'end;';

   cQuery  =     'Query.Close;'+#13+
                 'Query.SQL.Clear;'+#13+
                 'Query.SQL.Add();'+#13+
                 'Query.SQL.Add();'+#13+
                 'Query.SQL.Add();'+#13+
                 'Query.SQL.Add();'+#13+
                 'Query.SQL.Add();'+#13+
                 'Query.Open;';

   cSwitchCase = 'switch x {'+#13+
                 '  case 1:'+#13+
                 '  case 2:'+#13+
                 '  case 3:'+#13+
                 '}';

   cWhileJava = 'while ( ){'+#13+#13+
                 '}';

   cDoWhileJava = 'do {'+#13+#13+
                  '}while( )';


   cIfElseJava = 'if( ){'+#13+#13+
             '}'+#13+
             'else {'+#13+#13+
             '}';

   cIfJava = 'if( ){'+#13+#13+
             '}';

   cForJava = 'for( ){'+#13+#13+
              '}';

   cAlterTableAdd = 'alter table tabela add(campo tipo(tamanho))';
   cAlterTableDrop = 'alter table tabela drop campo';
   cAlterTableModify = 'alter table tabela modify campo tipo(tamanho)';
   cCreateTable = 'create table tabela (campo1 tipo [null/not null], campon tipo [null/not null], primarykey(campo))';
   cDeleteFrom = 'delete from tabela where condicao'; 
   cInsert = 'insert into tabela(campo1,campo2,campon) values(valor1,valor2,valorn)';
   cSelect = 'select * from tabela';
   cUpdate = 'update tabela set valor = novovvalor where condicao';
   
   cMessageBox = 'Application.MessageBox(''Mensagem'',''Titulo'',16)';
   cMessageDlgConfirma = 'MessageDlg(''Mensagem'',mtConfirmation,[mbYes,mbNo],0)';
   cMessageDlgErro = 'MessageDlg(''Mensagem'',mtError,[mbOk],0)';
   cMessageDlgAtencao = 'MessageDlg(''Mensagem'',mtWarning,[mbOk],0)';
   cMessageDlgInformacao = 'MessageDlg(''Mensagem'',mtInformation,[mbOk],0)';

   cTituloMensagem = 'DugPad 1.0';

   cExemploDelphi = '{ Comentários }'#13#10 +
             'procedure TForm1.Button1Click(Sender: TObject);'#13#10 +
             'var'#13#10 +
             '  Numero, I, X: Integer;'#13#10 +
             'begin'#13#10 +
             '  Numero := 123456;'#13#10 +
             '  Caption := ''O número é'' + #32 + IntToStr(Numero);'#13#10 +
             '  for I := 0 to Numero do'#13#10 +
             '  begin'#13#10 +
             '    Inc(X);'#13#10 +
             '    Dec(X);'#13#10 +
             '    X := X + 1.0;'#13#10 +
             '    X := X - $5E;'#13#10 +
             '  end;'#13#10 +
             '  {$R+}'#13#10 +
             '  asm'#13#10 +
             '    mov AX, 1234H'#13#10 +
             '    mov Numero, AX'#13#10 +
             '  end;'#13#10 +
             '  {$R-}'#13#10 +
             'end;';

   cExemploJava = '/* Comentários */'#13#10 +
            'import java.util.*;'#13#10 +
            #13#10 +
            '/** Classe exemplo */'#13#10 +
            'public class Exemplo {'#13#10 +
            '  public static void main(String[] args) {'#13#10 +
            '    int i = 0;'#13#10 +
            '    for(i = 0; i < 10; i++)'#13#10 +
            '      System.out.println("Imprime exemplo!!!");'#13#10 +
            '  }'#13#10 +
            '}';

   cExemploPhp = '// Comentários'#13#10+
            'function imprimeNumero()'#13#10+
            '{'#13#10+
            '  $numero = 1234;'#13#10+
            '  print "O número é $numero";'#13#10+
            '  for ($i = 0; $i <= $numero; $i++)'#13#10+
            '  {'#13#10+
            '    $x++;'#13#10+
            '    $x--;'#13#10+
            '    $x += 1.0;'#13#10+
            '  }'#13#10+
            '}';

   cExemploHTML = '<!-- Comentários -->'#13#10 +
            #13#10 +
            '<html>'#13#10 +
            '<body bgcolor="red">'#13#10 +
            '  <form name="formEx" action="doSomething.asp">'#13#10 +
            '    <input name="user" value=''any'#13#10 +
            '      value''>'#13#10 +
            '  </form>'#13#10 +
            '  <invalid>Código HTML exemplo &copy; 2001</invalid>'#13#10 +
            '</body>'#13#10 +
            '</html>';

   cMsgErro = 0;
   cMsgAviso = 1;
   cMsgInformacao = 2;
   cMsgConfirmacao = 3;

   cConfiguracaoDugPad = 'configuracoes';
   cArquivoConfiguracao = 'dugpad.ini';
   cArquivoAtalhos = 'atalhos.dat';
   cArquivoTarefas = 'tarefas.dat';
type
    TStrArray = array of String;

procedure GetTokens(var StrArray : TStrArray; Separador : Char; Texto : String; NrPartes : Integer); 
function  DugMensagem(Texto,Titulo : String; Botoes : LongInt) :  Boolean;
function ExemploSQL(SQLDialect : TSQLDialect) : String;
procedure MensagemDeErro(Mensagem,Titulo,Erros : String; TipoMensagem : Integer);

implementation

uses Forms;

function ExemploSQL(SQLDialect : TSQLDialect) : String;
begin
  Result:= '';
  case SQLDialect of
    sqlStandard:
      Result := '-- Código exemplo ANSI SQL'#13#10 +
        'SELECT *'#13#10 +
        'FROM planetas'#13#10 +
        'WHERE diametro < 13000'#13#10 +
        '  AND nome <> ''Terra''';
    sqlInterbase6:
      Result := '/* Exemplo de código Interbase */'#13#10 +
        'SET TERM !! ;'#13#10 +
        #13#10 +
        'CREATE PROCEDURE Ola(Mensagem VARCHAR(80)) AS'#13#10 +
        'BEGIN'#13#10 +
        '  EXECUTE PROCEDURE WRITELN(:Mensagem);'#13#10 +
        'END !!'#13#10 +
        #13#10 +
        'SET TERM ; !!';
    sqlMySQL:
      Result := '/* Código exemplo MySQL*/'#13#10 +
        'SET @variavel = 1;'#13#10 +
        #13#10 +
        'CREATE TABLE tabela (a INT);'#13#10 +
        #13#10 +
        'CREATE TABLE exemplo ('#13#10 +
        '        id INT NOT NULL,'#13#10 +
        '        pr_nome CHAR(30) NOT NULL,'#13#10 +
        '        PRIMARY KEY (id),'#13#10 +
        '        INDEX nome (pr_nome));'#13#10 +
        #13#10 +
        'SELECT DATE_ADD(''1997-12-31 23:59:59'','#13#10 +
        '        INTERVAL 1 SECOND);'#13#10 +
        #13#10 +
        '# Fim do exemplo';
    sqlOracle:
      Result := 'PROMPT Código exemplo Oracle'#13#10 +
        'declare'#13#10 +
        '  x varchar2(2000);'#13#10 +
        'begin  '#13#10 +
        '  select to_char(count(*)) into x'#13#10 +
        '  from tabela;'#13#10 +
        #13#10 +
        '  dbms_output.put_line(''Olá mundo: '' || x);'#13#10 +
        'exception'#13#10 +
        '  when others then'#13#10 +
        '    null;'#13#10 +
        'end;';
    sqlSybase:
      Result := '/* Código exemplo Sybase */'#13#10 +
        'declare @inteiro        int'#13#10 +
        #13#10 +
        '/* ---- */'#13#10 +
        'select @inteiro = 1000'#13#10 +
        #13#10 +
        'select "Somente positivos" ='#13#10 +
        '  right(replicate("0",12) + '#13#10 +
        '    convert(varchar, @inteiro),12)'#13#10 +
        #13#10 +
        '/* Comentário */'#13#10 +
        'select @inteiro = -1000'#13#10 +
        #13#10 +
        'select "Ambos os sinais" ='#13#10 +
        '  substring( "- +", (sign(@inteiro) + 2), 1) +'#13#10 +
        '  right(replicate("0",12) + '#13#10 +
        '    convert(varchar, abs(@inteiro)),12)'#13#10 +
        #13#10 +
        'select @inteiro = 1000'#13#10 +
        #13#10 +
        'select "Ambos os sinais" ='#13#10 +
        '  substring( "- +", (sign(@inteiro) + 2), 1) +'#13#10 +
        '  right(replicate("0",12) + '#13#10 +
        '    convert(varchar, abs(@inteiro)),12)'#13#10 +
        #13#10 +
        'go';
    sqlMSSQL7:
      Result := '/* Código exemplo SQL Server 7 */'#13#10 +
        'SET QUOTED_IDENTIFIER ON'#13#10 +
        'GO'#13#10 +
        'SET ANSI_NULLS OFF'#13#10 +
        'GO'#13#10 +
        #13#10 +
        '/* Objeto:  Stored Procedure dbo.sp_PPQInsertOrder */'#13#10 +
        'CREATE PROCEDURE sp_InserePedido'#13#10 +
        '  @Nome    varchar(25),'#13#10 +
        '  @Endereco varchar(255),'#13#10 +
        '  @CodigoPostal varchar(15)'#13#10 +
        'AS'#13#10 +
        '  INSERT INTO Pedido(Nome, Endereco, CodigoPostal, DataPedido)'#13#10 +
        '  VALUES (@Nome, @Endereco, @CodigoPostal, GetDate())'#13#10 +
        #13#10 +
        '  SELECT SCOPE_IDENTITY()'#13#10 +
        'GO';
    end;
end;

procedure MensagemDeErro(Mensagem,Titulo,Erros : String; TipoMensagem : Integer);
begin
   try
      F_MensagemDeErro := TF_MensagemDeErro.Create(Application);
      F_MensagemDeErro.MostraMensagem(Mensagem,Titulo,Erros,TipoMensagem);
   finally
      F_MensagemDeErro.Free;
   end;
end;

function DugMensagem(Texto,Titulo : String; Botoes : LongInt) :  Boolean;
begin
  Application.NormalizeAllTopMosts;
  if Application.MessageBox(Pchar(Texto),PChar(Titulo),Botoes) = IDYes then
     Result := True
  else
    Result := False;
  Application.RestoreTopMosts;
end;

procedure GetTokens(var StrArray : TStrArray; Separador : Char; Texto : String; NrPartes : Integer);
var I,Tamanho : Integer;
    Token : String;
begin
   SetLength(StrArray,0);
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


end.
