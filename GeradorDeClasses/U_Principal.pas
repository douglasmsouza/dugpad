unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Buttons, ValEdit, SynEdit, SynMemo,
  SynEditHighlighter, SynHighlighterJava, Menus, CheckLst, ComCtrls,
  ImgList, ToolWin;

type

  TAtributo = class
    TemSetter: Boolean;
    TemGetter: Boolean;
    EhPublico: Boolean;
    Nome : String;
    TipoDeDado : String;
    TemNoConstrutor : Boolean;
    EhEstatico : Boolean;
    EhFinal : Boolean;
  end;

  TMetodo = class
     Retorno : String;
     Nome : String;
     Parametros: TStringList;
  end;

  TParametro = class
     Nome : String;
     TipoDeDado : String;
  end;

  TF_GeradorDeClasses = class(TForm)
    SynJavaSyn1: TSynJavaSyn;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    MainMenu1: TMainMenu;
    Arquivos1: TMenuItem;
    Limpartudo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    Selecionartudo1: TMenuItem;
    Salvar1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    EdNomeClasse: TLabeledEdit;
    EdImplements: TLabeledEdit;
    ListaImplements: TListBox;
    EdExtends: TLabeledEdit;
    CheckPrivate: TCheckBox;
    CheckAbstract: TCheckBox;
    CheckStatic: TCheckBox;
    CheckMain: TCheckBox;
    GroupBox2: TGroupBox;
    EdInterface: TLabeledEdit;
    Shape1: TShape;
    SpeedButton2: TSpeedButton;
    GroupBox5: TGroupBox;
    Shape2: TShape;
    SpeedButton3: TSpeedButton;
    EdMetodo: TLabeledEdit;
    CbRetorno: TComboBox;
    Shape4: TShape;
    EdImplementsInterface: TLabeledEdit;
    ListaImplementsInterface: TListBox;
    SpeedButton4: TSpeedButton;
    ListaMetodos: TListBox;
    PainelParametros: TPanel;
    Panel7: TPanel;
    Button3: TSpeedButton;
    Panel8: TPanel;
    Button4: TSpeedButton;
    Panel9: TPanel;
    ListaParametros: TListBox;
    Panel10: TPanel;
    Shape6: TShape;
    SpeedButton6: TSpeedButton;
    CbTipoParametro: TComboBox;
    EdNovoParametro: TLabeledEdit;
    Panel6: TPanel;
    Button5: TSpeedButton;
    PainelAtributos: TPanel;
    CaixaAtributos: TCheckListBox;
    Panel4: TPanel;
    Button2: TSpeedButton;
    Panel5: TPanel;
    Button1: TSpeedButton;
    PainelNomeAtributo: TPanel;
    Salvar: TSaveDialog;
    GroupBox4: TGroupBox;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    EdAtributo: TLabeledEdit;
    CbTipos: TComboBox;
    ListaAtributos: TListBox;
    Shape7: TShape;
    SpeedButton7: TSpeedButton;
    Shape5: TShape;
    RadioConstrutor: TRadioGroup;
    SpeedButton5: TSpeedButton;
    PainelNomeMetodo: TPanel;
    SpeedButton8: TSpeedButton;
    PageControl2: TPageControl;
    Novo1: TMenuItem;
    UsarsintaxeJava1: TMenuItem;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    Salvar2: TMenuItem;
    Novo2: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ImageList1: TImageList;
    PopupMenu3: TPopupMenu;
    Excluir2: TMenuItem;
    Splitter1: TSplitter;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdImplementsKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Selecionartudo1Click(Sender: TObject);
    procedure Limpartudo1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EdImplementsInterfaceKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CaixaAtributosClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListaAtributosMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CbTiposKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RadioConstrutorClick(Sender: TObject);
    procedure ListaMetodosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MemoClasseMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CbTiposEnter(Sender: TObject);
    procedure CbRetornoKeyPress(Sender: TObject; var Key: Char);
    procedure Novo1Click(Sender: TObject);
    procedure UsarsintaxeJava1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
  private
    vContadorAbas : Integer; 
    procedure AdicionaAtributo(pTipo,pNome: String);
    function  GeraClasse : String;
    function  GeraInterface: String;
    function  Vazio(pEdit : TLabeledEdit) : Boolean;
    function  ExisteImplementsNaLista(pLista : TListBox;pInterface : String) : Boolean;
    function  Setter(pTipo,pAtributo : String) : String;
    function  Getter(pTipo,pAtributo : String) : String;
    procedure AdicionaMetodo(pRetorno,pNome : String);
    function  TemEspaco(pPalavra : String) : Boolean;
    procedure LimparInterface;
    procedure LimparClasse;
    function  MemoAtivo : TSynMemo;
  public
    { Public declarations }
  end;

var
  F_GeradorDeClasses: TF_GeradorDeClasses;

implementation

{$R *.dfm}

procedure TF_GeradorDeClasses.AdicionaAtributo(pTipo, pNome: String);
var vAtributo : TAtributo;
begin
  vAtributo := TAtributo.Create;
  vAtributo.TemSetter := False;
  vAtributo.TemGetter := False;
  vAtributo.EhPublico := False;
  vAtributo.EhEstatico := False;
  vAtributo.EhFinal := False;
  vAtributo.Nome := Trim(pNome);
  vAtributo.TipoDeDado := pTipo;
  vAtributo.TemNoConstrutor := RadioConstrutor.ItemIndex = 0;

  ListaAtributos.Items.AddObject(vAtributo.TipoDeDado+^I+vAtributo.Nome,vAtributo);

  EdAtributo.Clear;
  CbTipos.Text := '';
  EdAtributo.SetFocus;
end;

procedure TF_GeradorDeClasses.SpeedButton1Click(Sender: TObject);  
begin
 if Vazio(EdAtributo) then
  begin
    MessageDlg('Informe o nome do atributo!',mtInformation,[mbOK],0);
    exit;
  end;
 if CbTipos.Text = '' then
  begin
    MessageDlg('Informe o tipo de dado do atributo!',mtInformation,[mbOK],0);
    exit;
  end;
 if(TemEspaco(EdAtributo.Text)) then
   begin
    MessageDlg('O nome do atributo não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;
 if(TemEspaco(CbTipos.Text)) then
   begin
    MessageDlg('O nome do atributo não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;

  AdicionaAtributo(CbTipos.Text,EdAtributo.Text);
end;

procedure TF_GeradorDeClasses.SpeedButton2Click(Sender: TObject);
begin
 if Vazio(EdImplements) then
  begin
    MessageDlg('Informe a classe a ser implementada!',mtInformation,[mbOK],0);
    exit;
  end;
  if ExisteImplementsNaLista(ListaImplements,EdImplements.Text) then
   begin
     MessageDlg('Classe já existe na lista!',mtInformation,[mbOK],0);
     exit;
   end;
  if(TemEspaco(EdImplements.Text)) then
   begin
    MessageDlg('A nome da classe a ser implementada não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;

  ListaImplements.Items.Add(EdImplements.Text);
  EdImplements.Clear;
  EdImplements.SetFocus;
end;

function TF_GeradorDeClasses.GeraClasse: String;
var vCodigoFonte,
    vClasseTipo,
    vAbstract,
    vStatic,
    vPrivate,
    vAtributoStatic,
    vAtributoFinal : String;
    vInd : Integer;
begin
   if TemEspaco(EdNomeClasse.Text) then
   begin
     MessageDlg('O nome da classe não pode conter espaços!',mtInformation,[mbOK],0);
     exit;
   end;

   vCodigoFonte := '';
   vAbstract := '';
   vStatic := '';
   vClasseTipo := 'public';
   if CheckPrivate.Checked then
     vClasseTipo := 'private';
   if CheckAbstract.Checked then
     vAbstract := ' abstract';
   if CheckStatic.Checked then
     vStatic := 'static';

   vCodigoFonte := vClasseTipo+''+vAbstract+' class '+EdNomeClasse.Text;
   if Vazio(EdExtends) and (ListaImplements.Count=0) then
      vCodigoFonte := vCodigoFonte + '{' +#13+#13

   //-------------------------------------------------//
   // início do código do extends e dos implements    //
   //-------------------------------------------------//
   else
   begin
      if not Vazio(EdExtends) then
         vCodigoFonte := vCodigoFonte + ' extends '+EdExtends.Text;
      if ListaImplements.Count>0 then
      begin
        vCodigoFonte := vCodigoFonte + #13+'      implements ';
        for vInd := 0 to ListaImplements.Count-1 do
        begin
          if vInd = ListaImplements.Count-1 then
            vCodigoFonte := vCodigoFonte + ListaImplements.Items[vInd]
          else
            vCodigoFonte := vCodigoFonte + ListaImplements.Items[vInd] + ',';
        end;
      end;
      vCodigoFonte := vCodigoFonte + '{' + #13 + #13;
   end;

   //-------------------------------------------------//
   // início do código dos atributos                  //
   //-------------------------------------------------//
   if ListaAtributos.Count > 0 then
   begin
     for vInd := 0 to ListaAtributos.Count-1 do
     begin
         vAtributoStatic := '';
         vAtributoFinal := '';
         vPrivate := 'private ';
         if TAtributo(ListaAtributos.Items.Objects[vInd]).EhEstatico then
            vAtributoStatic := 'static ';
         if TAtributo(ListaAtributos.Items.Objects[vInd]).EhPublico then
             vPrivate := 'public ';
         if TAtributo(ListaAtributos.Items.Objects[vInd]).EhFinal then
             vAtributoFinal := 'final ';
          vCodigoFonte := vCodigoFonte + '    '+vPrivate+''+vAtributoStatic+''+vAtributoFinal+''+
                                       TAtributo(ListaAtributos.Items.Objects[vInd]).TipoDeDado+' '+
                                       TAtributo(ListaAtributos.Items.Objects[vInd]).Nome+';'+#13;
     end;
     vCodigoFonte := vCodigoFonte + #13;
   end;

   //-------------------------------------------------//
   // inicio do código do construtor                  //
   //-------------------------------------------------//
   if RadioConstrutor.ItemIndex < 2 then
   begin
     if RadioConstrutor.ItemIndex = 1 then
       vCodigoFonte := vCodigoFonte + '    public '+EdNomeClasse.Text+'(){'+#13
     else
     begin
        vCodigoFonte := vCodigoFonte + '    public '+EdNomeClasse.Text+'(';
        for vInd := 0 to ListaAtributos.Count-1 do
        begin
          if TAtributo(ListaAtributos.Items.Objects[vInd]).TemNoConstrutor then
          begin
            if vInd = 0 then
               vCodigoFonte := vCodigoFonte + TAtributo(ListaAtributos.Items.Objects[vInd]).TipoDeDado+' '+
                                      TAtributo(ListaAtributos.Items.Objects[vInd]).Nome
            else
               vCodigoFonte := vCodigoFonte + ',' + TAtributo(ListaAtributos.Items.Objects[vInd]).TipoDeDado+' '+
                                      TAtributo(ListaAtributos.Items.Objects[vInd]).Nome;
          end;
        end;
        vCodigoFonte := vCodigoFonte + '){'+#13;
        for vInd := 0 to ListaAtributos.Count-1 do
            if TAtributo(ListaAtributos.Items.Objects[vInd]).TemNoConstrutor then
               vCodigoFonte := vCodigoFonte + '       this.'+TAtributo(ListaAtributos.Items.Objects[vInd]).Nome+' = '+
                                              TAtributo(ListaAtributos.Items.Objects[vInd]).Nome+';'+#13;
     end;
     vCodigoFonte := vCodigoFonte + '    }' +#13+#13;
   end;

   //-------------------------------------------------//
   // início do código dos setters e getters          //
   //-------------------------------------------------//
   for vInd := 0 to ListaAtributos.Count-1 do
   begin
     //gera o setter
     if TAtributo(ListaAtributos.Items.Objects[vInd]).TemSetter then
          vCodigoFonte := vCodigoFonte + Setter(TAtributo(ListaAtributos.Items.Objects[vInd]).TipoDeDado,
                                                TAtributo(ListaAtributos.Items.Objects[vInd]).Nome)+#13+#13;
     //gera o getter
     if TAtributo(ListaAtributos.Items.Objects[vInd]).TemGetter then
          vCodigoFonte := vCodigoFonte + Getter(TAtributo(ListaAtributos.Items.Objects[vInd]).TipoDeDado,
                                                TAtributo(ListaAtributos.Items.Objects[vInd]).Nome)+#13+#13;
   end;
   //-------------------------------------------------//
   // método main                                     //
   //-------------------------------------------------//
   if CheckMain.Checked then
   begin
     vCodigoFonte := vCodigoFonte + '    public static void main(String args[]){'+#13;
     vCodigoFonte := vCodigoFonte + '    }' +#13+#13;
   end;

   PageControl2.ActivePage.Caption := EdNomeClasse.Text + '.java';
   Result := vCodigoFonte + '}';
end;

function TF_GeradorDeClasses.Vazio(pEdit: TLabeledEdit): Boolean;
begin
  Result := Length(Trim(pEdit.Text)) = 0;
end;

function TF_GeradorDeClasses.ExisteImplementsNaLista(pLista : TListBox; pInterface: String): Boolean;
var vCont : Integer;
begin
  Result := False;
  vCont := 0;
  while ((Result = False) and (vCont < pLista.Count)) do
    begin
      Result := (AnsiCompareText(pInterface,pLista.Items[vCont]) = 0);
      Inc(vCont);
    end;
end;

procedure TF_GeradorDeClasses.EdImplementsKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: SpeedButton2.Click;
  end;
end;

function TF_GeradorDeClasses.Getter(pTipo,pAtributo: String): String;
var vAtributo : String;
    vGet : String;
begin
  if pTipo = 'boolean' then
     vGet := 'is'
  else
    vGet := 'get';
    
  vAtributo := UpperCase(Copy(pAtributo,0,1)) + Copy(pAtributo,2,Length(pAtributo));
  Result := '    public '+pTipo+' '+vGet+vAtributo+'(){'+#13+
            '       return '+pAtributo+';'+#13+
            '    }';
end;

function TF_GeradorDeClasses.Setter(pTipo, pAtributo: String): String;
var vAtributo : String;
begin
   vAtributo := UpperCase(Copy(pAtributo,0,1)) + Copy(pAtributo,2,Length(pAtributo));
   Result := '    public void set'+vAtributo+'('+pTipo+' '+pAtributo+'){'+#13+
             '       this.'+pAtributo+' = '+pAtributo+';'+#13+
             '    }';
end;

procedure TF_GeradorDeClasses.Excluir1Click(Sender: TObject);
begin
   ListaImplements.DeleteSelected;
end;

procedure TF_GeradorDeClasses.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_GeradorDeClasses.Recortar1Click(Sender: TObject);
begin
   MemoAtivo.CutToClipboard
end;

procedure TF_GeradorDeClasses.Copiar1Click(Sender: TObject);
begin
   MemoAtivo.CopyToClipboard;
end;

procedure TF_GeradorDeClasses.Colar1Click(Sender: TObject);
begin
  MemoAtivo.PasteFromClipboard;
end;

procedure TF_GeradorDeClasses.Selecionartudo1Click(Sender: TObject);
begin
  MemoAtivo.SelectAll;
end;

procedure TF_GeradorDeClasses.Limpartudo1Click(Sender: TObject);
begin
 if PageControl1.TabIndex = 0 then
   LimparClasse
 else
   LimparInterface;
end;

procedure TF_GeradorDeClasses.Salvar1Click(Sender: TObject);
begin
 Salvar.FileName := PageControl2.ActivePage.Caption; 
 if Salvar.Execute then
   MemoAtivo.Lines.SaveToFile(Salvar.FileName);
end;

procedure TF_GeradorDeClasses.AdicionaMetodo(pRetorno, pNome: String);
var vMetodo : TMetodo;
begin
  vMetodo := TMetodo.Create;
  vMetodo.Nome := pNome;
  vMetodo.Retorno := pRetorno;
  vMetodo.Parametros := TStringList.Create;

  ListaMetodos.Items.AddObject(vMetodo.Retorno+^I+vMetodo.Nome,vMetodo);

  EdMetodo.Clear;
  CbRetorno.Text := '';
  EdMetodo.SetFocus;
end;

procedure TF_GeradorDeClasses.SpeedButton3Click(Sender: TObject);
begin
  if Vazio(EdMetodo) then
  begin
    MessageDlg('Informe a assinatura do médoto!',mtInformation,[mbOK],0);
    exit;
  end;
  if CbRetorno.Text = '' then
  begin
    MessageDlg('Informe o tipo de dado do retorno do método!',mtInformation,[mbOK],0);
    exit;
  end;
  if(TemEspaco(CbRetorno.Text)) then
  begin
   MessageDlg('O tipo de retorno do método não pode conter espaços!',mtInformation,[mbOK],0);
   exit;
  end;
  if(TemEspaco(EdMetodo.Text)) then
  begin
   MessageDlg('A assinatura do médoto não pode conter espaços!',mtInformation,[mbOK],0);
   exit;
  end;

  AdicionaMetodo(CbRetorno.Text,EdMetodo.Text);
end;

procedure TF_GeradorDeClasses.SpeedButton4Click(Sender: TObject);
begin
 if Vazio(EdImplementsInterface) then
  begin
    MessageDlg('Informe a interface a ser implementada!',mtInformation,[mbOK],0);
    exit;
  end;
  if ExisteImplementsNaLista(ListaImplementsInterface,EdImplementsInterface.Text) then
   begin
     MessageDlg('Interface já existe na lista!',mtInformation,[mbOK],0);
     exit;
   end;
  if(TemEspaco(EdImplementsInterface.Text)) then
   begin
    MessageDlg('A nome da classe a ser implementada não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;
   
  ListaImplementsInterface.Items.Add(EdImplementsInterface.Text);
  EdImplementsInterface.Clear;
  EdImplementsInterface.SetFocus;  
end;

procedure TF_GeradorDeClasses.EdImplementsInterfaceKeyPress(
  Sender: TObject; var Key: Char);
begin
   case key of
     #13 : SpeedButton4.click;
   end;
end;

function TF_GeradorDeClasses.GeraInterface: String;
var vCodigoFonte : String;
    vInd,vInd2 : Integer;
begin
   vCodigoFonte := '';

   if(TemEspaco(EdInterface.Text)) then
   begin
    MessageDlg('A nome da interface não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;

   vCodigoFonte := 'public interface '+EdInterface.Text;
   if (ListaImplementsInterface.Count=0) then
      vCodigoFonte := vCodigoFonte + '{' +#13+#13

   //-------------------------------------------------//
   // iníciodos implements                            //
   //-------------------------------------------------//
   else
   begin
     if ListaImplementsInterface.Count>0 then
     begin
       vCodigoFonte := vCodigoFonte + #13+'      implements ';
       for vInd := 0 to ListaImplementsInterface.Count-1 do
       begin
         if vInd = ListaImplementsInterface.Count-1 then
           vCodigoFonte := vCodigoFonte + ListaImplementsInterface.Items[vInd]
         else
           vCodigoFonte := vCodigoFonte + ListaImplementsInterface.Items[vInd] + ',';
       end;
     end;
     vCodigoFonte := vCodigoFonte + '{' + #13 + #13;
   end;

   //-------------------------------------------------//
   // início do código dos métodos                    //
   //-------------------------------------------------//
   if ListaMetodos.Count > 0 then
   begin
     for vInd := 0 to ListaMetodos.Count-1 do
     begin
       vCodigoFonte := vCodigoFonte + '    public '+
                                TMetodo(ListaMetodos.Items.Objects[vInd]).Retorno+' '+
                                TMetodo(ListaMetodos.Items.Objects[vInd]).Nome+'(';
       //aqui adiciona os parametros
       for vInd2 := 0 to TMetodo(ListaMetodos.Items.Objects[vInd]).Parametros.Count-1 do
           if vInd2  = 0 then
              vCodigoFonte := vCodigoFonte + TMetodo(ListaMetodos.Items.Objects[vInd]).Parametros.Strings[vInd2]
           else
              vCodigoFonte := vCodigoFonte + ',' + TMetodo(ListaMetodos.Items.Objects[vInd]).Parametros.Strings[vInd2];
       vCodigoFonte := vCodigoFonte + ');'+#13;
     end;
   end;

   PageControl2.ActivePage.Caption := EdInterface.Text + '.java';
   Result := vCodigoFonte + '}';
end;

procedure TF_GeradorDeClasses.LimparClasse;
begin
  MemoAtivo.Clear;
  EdNomeClasse.Clear;
  EdExtends.Clear;
  EdImplements.Clear;
  EdAtributo.Clear;
  ListaImplements.Clear;
  CbTipos.Text := '';
  ListaAtributos.Clear;
  RadioConstrutor.ItemIndex := 0;
  CheckMain.Checked := True; 
end;

procedure TF_GeradorDeClasses.LimparInterface;
begin
  EdInterface.Clear;
  EdImplements.Clear;
  ListaImplementsInterface.Clear;
  EdMetodo.Clear;
  CbRetorno.Text := '';
  ListaMetodos.Clear;
end;

procedure TF_GeradorDeClasses.FormShow(Sender: TObject);
begin
   LimparInterface;
   LimparClasse;
end;

procedure TF_GeradorDeClasses.FormCreate(Sender: TObject);
begin
  vContadorAbas := 0;
  Novo1.Click;
  Button1.Align := alClient; // fechar painel atributo
  Button2.Align := alClient; // excluir atributo
  Button3.Align := alClient; // parametro
  Button4.Align := alClient; // parametro
  Button5.Align := alClient; // parametro
  PainelAtributos.Visible := false;
  PainelParametros.Visible := false;
  PageControl1.TabIndex := 0;
end;

procedure TF_GeradorDeClasses.Button1Click(Sender: TObject);
begin
  PainelAtributos.Visible := false; 
end;

procedure TF_GeradorDeClasses.CaixaAtributosClick(Sender: TObject);
begin
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhEstatico := CaixaAtributos.Checked[0];
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhFinal := CaixaAtributos.Checked[1];
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemGetter := CaixaAtributos.Checked[2];
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemSetter := CaixaAtributos.Checked[3];
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemNoConstrutor := CaixaAtributos.Checked[4];
  TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhPublico := CaixaAtributos.Checked[5];
end;

procedure TF_GeradorDeClasses.Button2Click(Sender: TObject);
begin
 try
   TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).Free;
   ListaAtributos.DeleteSelected;
 finally
   PainelAtributos.Visible := false;
 end;
end;

procedure TF_GeradorDeClasses.ListaAtributosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var vTamanhoDoTexto : Integer;
begin
  if (Button = mbLeft) then
  try
   if ListaAtributos.Count > 0 then
    begin
      PainelAtributos.Left := X + GroupBox4.Left+10;
      PainelAtributos.Top := Y + GroupBox4.Top + 100;
      PainelAtributos.Width := 121;
      PainelNomeAtributo.Caption := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TipoDeDado +' '+
                                    TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).Nome;

      vTamanhoDoTexto := Label1.Canvas.TextWidth(PainelNomeAtributo.Caption);
      if vTamanhoDoTexto > PainelAtributos.Width then
          PainelAtributos.Width :=  vTamanhoDoTexto + 15;

      PainelAtributos.Visible := true;
      CaixaAtributos.Checked[0] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhEstatico;
      CaixaAtributos.Checked[1] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhFinal;
      CaixaAtributos.Checked[2] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemGetter;
      CaixaAtributos.Checked[3] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemSetter;
      CaixaAtributos.Checked[4] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).TemNoConstrutor;
      CaixaAtributos.Checked[5] := TAtributo(ListaAtributos.Items.Objects[ListaAtributos.ItemIndex]).EhPublico;
    end;
  except end;

  if Button = mbRight then
     PainelAtributos.Visible := false;
end;

function TF_GeradorDeClasses.TemEspaco(pPalavra: String): Boolean;
var vind : integer;
begin 
     Result := false;
     pPalavra := Trim(pPalavra);
     if Length(pPalavra) > 0 then
      for vInd := 0 to Length(pPalavra) do
       if pPalavra[vInd] = ' ' then
        begin
         Result := true;
         Break;
        end;
end;

procedure TF_GeradorDeClasses.CbTiposKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #13 : SpeedButton1.Click;
   end;
end;

procedure TF_GeradorDeClasses.SpeedButton5Click(Sender: TObject);
begin
  MemoAtivo.Text := GeraClasse;
end;

procedure TF_GeradorDeClasses.RadioConstrutorClick(Sender: TObject);
var vInd : Integer;
begin
  PainelAtributos.Visible := false;
  
  if RadioConstrutor.ItemIndex > 0 then
    for vInd := 0 to ListaAtributos.Count-1 do
      TAtributo(ListaAtributos.Items.Objects[vInd]).TemNoConstrutor := false
  else
    for vInd := 0 to ListaAtributos.Count-1 do
       TAtributo(ListaAtributos.Items.Objects[vInd]).TemNoConstrutor := true;

  CaixaAtributos.ItemEnabled[4] := RadioConstrutor.ItemIndex = 0;
end;

procedure TF_GeradorDeClasses.ListaMetodosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var vInd : integer;
    vQtParametros : Integer;
    vParametro : TParametro;
    vTamanhoDoTexto : Integer;
begin
 try
  if (Button = mbLeft) and (ListaMetodos.Count>0)then
  begin
     ListaParametros.Clear;
     PainelParametros.Left := X + GroupBox5.Left+10;
     PainelParametros.Top := Y + GroupBox5.Top + 100;
     PainelParametros.Width := 185;
     vQtParametros := TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Parametros.Count;
     if vQtParametros>0 then
       for vInd := 0 to vQtParametros-1 do
        begin
          //vParametro := TParametro.Create;
          vParametro := TParametro(TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Parametros.Objects[vInd]);
          ListaParametros.Items.AddObject(vParametro.TipoDeDado+^I+vParametro.Nome,vParametro);
        end;

     PainelNomeMetodo.Caption := 'Parâmetros - '+TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Retorno +' '+
                                  TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Nome+'()';

     vTamanhoDoTexto := Label1.Canvas.TextWidth(PainelNomeMetodo.Caption);
     if vTamanhoDoTexto > PainelParametros.Width then
         PainelParametros.Width :=  vTamanhoDoTexto + 15;

     PainelParametros.Visible := true;
  end;
 except end;

  if Button = mbRight then
     PainelParametros.Visible := false;
end;

procedure TF_GeradorDeClasses.Button3Click(Sender: TObject);
begin
  PainelParametros.Visible := false;
end;

procedure TF_GeradorDeClasses.Button4Click(Sender: TObject);
begin
  TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Parametros.Delete(ListaParametros.ItemIndex);
  ListaParametros.DeleteSelected;
end;

procedure TF_GeradorDeClasses.SpeedButton6Click(Sender: TObject);
var vParametro : TParametro;
begin
  if Vazio(EdNovoParametro) then
  begin
    MessageDlg('Informe o nome do parâmetro!',mtInformation,[mbOK],0);
    exit;
  end;
 if CbTipoParametro.Text = '' then
  begin
    MessageDlg('Informe o tipo de dado do parâmetro!',mtInformation,[mbOK],0);
    exit;
  end;
 if(TemEspaco(EdNovoParametro.Text)) then
   begin
    MessageDlg('O nome do parâmetro não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;
 if(TemEspaco(CbTipoParametro.Text)) then
   begin
    MessageDlg('O tipo do parâmetro não pode conter espaços!',mtInformation,[mbOK],0);
    exit;
   end;

  vParametro := TParametro.Create;
  vParametro.Nome := EdNovoParametro.Text;
  vParametro.TipoDeDado := CbTipoParametro.Text;
  TMetodo(ListaMetodos.Items.Objects[ListaMetodos.ItemIndex]).Parametros.AddObject(vParametro.TipoDeDado+' '+vParametro.Nome,vParametro);
  ListaParametros.Items.Add(vParametro.TipoDeDado+^I+vParametro.Nome);
  EdNovoParametro.Clear;
  CbTipoParametro.Text := '';
end;

procedure TF_GeradorDeClasses.SpeedButton7Click(Sender: TObject);
begin
  MemoAtivo.Text := GeraInterface;
end;

procedure TF_GeradorDeClasses.Button5Click(Sender: TObject);
begin
  ListaMetodos.DeleteSelected;
  PainelParametros.Visible := false;
end;

procedure TF_GeradorDeClasses.PageControl1Change(Sender: TObject);
begin
  PainelAtributos.Visible := false;
  PainelParametros.Visible := false;
  if PageControl1.TabIndex = 0 then
    EdNomeClasse.SetFocus
  else
    EdInterface.SetFocus;
end;

procedure TF_GeradorDeClasses.MemoClasseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if PainelParametros.Visible then
    PainelParametros.Visible := false;
  if PainelAtributos.Visible then
    PainelAtributos.Visible := false;
end;

procedure TF_GeradorDeClasses.CbTiposEnter(Sender: TObject);
begin
  if PainelParametros.Visible then
    PainelParametros.Visible := false;
  if PainelAtributos.Visible then
    PainelAtributos.Visible := false
end;

procedure TF_GeradorDeClasses.CbRetornoKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #13 : SpeedButton3.Click;
   end;
end;
function TF_GeradorDeClasses.MemoAtivo: TSynMemo;
begin
   Result := TSynMemo(PageControl2.ActivePage.Components[0]);
end;

procedure TF_GeradorDeClasses.Novo1Click(Sender: TObject);
var vAba : TTabSheet;
    vMemo : TSynMemo;
begin
    vAba := TTabSheet.Create(PageControl2);
    vAba.PageControl := PageControl2;
    vAba.Parent := PageControl2;
    Inc(vContadorAbas);
    vAba.Caption := 'Classe'+IntToStr(vContadorAbas)+'.java';
    {}
    vMemo := TSynMemo.Create(vAba);
    vMemo.Parent := vAba;
    vMemo.Align := alClient;
    vMemo.Gutter.ShowLineNumbers := True;
    vMemo.Clear;
    vMemo.OnMouseDown := MemoClasseMouseDown;
    if UsarsintaxeJava1.Checked then
      vMemo.Highlighter := SynJavaSyn1;
    {}
    PageControl2.ActivePage := vAba;
end;

procedure TF_GeradorDeClasses.UsarsintaxeJava1Click(Sender: TObject);
var vInd : Integer;
begin
 for vInd := 0 to PageControl2.PageCount-1 do
  case TMenuItem(Sender).Checked of
    true: TSynMemo(PageControl2.Pages[vInd].Components[0]).Highlighter := SynJavaSyn1;
    false: TSynMemo(PageControl2.Pages[vInd].Components[0]).Highlighter:= nil;
  end;
end;

procedure TF_GeradorDeClasses.Fechar1Click(Sender: TObject);
begin
   PageControl2.ActivePage.Free;
end;

procedure TF_GeradorDeClasses.PopupMenu2Popup(Sender: TObject);
begin
   PopupMenu2.Items[1].Enabled := PageControl2.PageCount > 1;
end;

procedure TF_GeradorDeClasses.Excluir2Click(Sender: TObject);
begin
   ListaImplementsInterface.DeleteSelected;
end;

end.
