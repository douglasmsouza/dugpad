unit Principal;

interface

uses
  Windows,Messages,SysUtils,Variants,Classes,Graphics,Controls,Forms,
  ToolWin,IniFiles,SynEditHighlighter,SynHighlighterPas,SynEdit,SynMemo,
  SynHighlighterCpp,SynHighlighterJava,SynHighlighterSQL,SynCompletionProposal,
  SynHighlighterHtml,Gauges,ImgList,Registry,SynHighlighterPHP,
  SynHighlighterJScript,SynHighlighterCobol,SynHighlighterVB,JPEG,ShellAPI,
  SynHighlighterFortran,SynHighlighterPython,SynHighlighterFoxpro,ShellCtrls,
  FileCtrl,SynHighlighterGeneral,U_Funcoes,SynHighlighterCS,
  SynHighlighterVBScript,SynHighlighterXML,SynHighlighterAWK,SynHighlighterBat,
  SynHighlighterPerl,SynHighlighterHaskell,SynHighlighterProgress,
  SynHighlighterAsm,SynHighlighterRuby,SynEditOptionsDialog,SynHighlighterMulti,
  SynEditPrint,ExtCtrls,Buttons,Menus,ComCtrls,StdCtrls,Dialogs,
  SynHighlighterCSS,XPMan, DugCheckBox;

type
  TAba = class
    Texto : String;
    Caption : String;
    Sintaxe : TSynCustomHighlighter;
    Cor : TColor;
    Tag : Integer;
    Path : String;
    Fonte : TFont;
  end;

  TAtalho = class
    Atalho : String;
    Path : String;
  end;

  TF_Principal = class(TForm)
    PageControl_Principal: TPageControl;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Ed_Pesquisa: TEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton9: TSpeedButton;
    Label3: TLabel;
    Ed_DiretorioPadrao: TEdit;
    DriveComboBox_DiretorioPadrao: TDriveComboBox;
    Panel9: TPanel;
    DirectoryListBox_DiretorioPadrao: TDirectoryListBox;
    Panel3: TPanel;
    ListBoxAbas: TListBox;
    RadioButton4: TRadioButton;
    Panel4: TPanel;
    Label12: TLabel;
    Edit5: TEdit;
    BitBtn3: TBitBtn;
    Panel10: TPanel;
    Label5: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label6: TLabel;
    SpeedButton15: TSpeedButton;
    Ed_Localizar: TEdit;
    Ed_Substituir: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Label7: TLabel;
    SpeedButton12: TSpeedButton;
    PageControl_Configuracoes: TPageControl;
    TabSheet_Delphi: TTabSheet;
    TabSheet_LingC: TTabSheet;
    TabSheet_Java: TTabSheet;
    TabSheet_SQL: TTabSheet;
    TabSheet_HTML: TTabSheet;
    TabSheet_VB: TTabSheet;
    Panel2: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    DriveComboBox_Arquivos: TDriveComboBox;
    Panel17: TPanel;
    BitBtn2: TBitBtn;
    Panel16: TPanel;
    DirectoryListBox_Arquivos: TDirectoryListBox;
    Panel20: TPanel;
    Label14: TLabel;
    Panel1: TPanel;
    FileListBox_Arquivos: TFileListBox;
    Panel21: TPanel;
    Panel14: TPanel;
    SpeedButton8: TSpeedButton;
    ListBoxAtalhos: TListBox;
    BitBtn1: TBitBtn;
    Panel15: TPanel;
    Label11: TLabel;
    SpeedButton13: TSpeedButton;
    Label13: TLabel;
    Edit6: TEdit;
    Panel6: TPanel;
    Label2: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Bt_Novo: TToolButton;
    bt_abrir: TToolButton;
    bt_salvar: TToolButton;
    Bt_Imprimir: TToolButton;
    Bt_Fechar: TToolButton;
    ToolButton2: TToolButton;
    Bt_Copiar: TToolButton;
    Bt_Colar: TToolButton;
    Bt_Recortar: TToolButton;
    Bt_Desfazer: TToolButton;
    ToolButton3: TToolButton;
    ToolButton17: TToolButton;
    ToolButton13: TToolButton;
    ToolButton16: TToolButton;
    ToolButton12: TToolButton;
    ToolBar2: TToolBar;
    CbBox_Fontes: TComboBox;
    CbBox_TamFonte: TComboBox;
    ToolButton25: TToolButton;
    Bt_CorFonte: TToolButton;
    Bt_CorFundo: TToolButton;
    ToolButton4: TToolButton;
    Bt_Negrito: TToolButton;
    Bt_Italico: TToolButton;
    Bt_Sublinhado: TToolButton;
    Bt_StrikeOut: TToolButton;
    PopupMenu1: TPopupMenu;
    Novaaba1: TMenuItem;
    exto2: TMenuItem;
    HTML3: TMenuItem;
    Pascal2: TMenuItem;
    Java2: TMenuItem;
    C1: TMenuItem;
    SQL2: TMenuItem;
    Fecharaba1: TMenuItem;
    Fechartodas1: TMenuItem;
    N34: TMenuItem;
    Primeira2: TMenuItem;
    ltima2: TMenuItem;
    N5: TMenuItem;
    Rascunho1: TMenuItem;
    Rascunhocomsintaxedalinguagem1: TMenuItem;
    Duplicartexto1: TMenuItem;
    Duplicartextocomsintaxedalinguagem1: TMenuItem;
    N30: TMenuItem;
    Mostrarabasemordemalfabtica1: TMenuItem;
    Mudarnomedaaba1: TMenuItem;
    Alinharabas1: TMenuItem;
    Abaixo1: TMenuItem;
    Acima1: TMenuItem;
    Abrir: TOpenDialog;
    Salvar: TSaveDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    MenuNovo: TMenuItem;
    MenuAbrir: TMenuItem;
    MenuShell: TMenuItem;
    N18: TMenuItem;
    Gravarimagemdestatela1: TMenuItem;
    MenuSalvar: TMenuItem;
    MenuSalvarComo: TMenuItem;
    MenuSalvarTudo: TMenuItem;
    N19: TMenuItem;
    MenuImprimir: TMenuItem;
    MenuVisualizarImpressao: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    MenuAbas: TMenuItem;
    MenuEditar: TMenuItem;
    N12: TMenuItem;
    MenuExibirBarra: TMenuItem;
    MenuExibirFerramentas: TMenuItem;
    MenuBarraFormatacao: TMenuItem;
    MenuSempreVisivel: TMenuItem;
    MenuFormatar: TMenuItem;
    Maisculo1: TMenuItem;
    extointeiro2: TMenuItem;
    extoselecionado2: TMenuItem;
    Mnusculo1: TMenuItem;
    extointeiro1: TMenuItem;
    extoselecionado1: TMenuItem;
    N10: TMenuItem;
    Inserir1: TMenuItem;
    Data1: TMenuItem;
    Somentedata1: TMenuItem;
    Somentehora1: TMenuItem;
    N22: TMenuItem;
    Dataehora1: TMenuItem;
    opes1: TMenuItem;
    Editor1: TMenuItem;
    MenuAssocia: TMenuItem;
    N23: TMenuItem;
    MenuMostrarTarefas: TMenuItem;
    MenuPergunta: TMenuItem;
    MenuPerguntaTodas: TMenuItem;
    MenuPermitirEsc: TMenuItem;
    N9: TMenuItem;
    Cordefundo1: TMenuItem;
    MenuMostrarMargem: TMenuItem;
    MenuNumLinhas: TMenuItem;
    MenuQuebraLinha: TMenuItem;
    Sintaxe1: TMenuItem;
    Semsintaxe1: TMenuItem;
    N16: TMenuItem;
    MenuC: TMenuItem;                                                                      
    MenuHTML: TMenuItem;
    MenuJava: TMenuItem;
    MenuPascal: TMenuItem;
    Clssico1: TMenuItem;
    Meuestilo1: TMenuItem;
    MenuSQL: TMenuItem;
    Standart1: TMenuItem;
    InterBase61: TMenuItem;
    MSSSQL1: TMenuItem;
    MySQL1: TMenuItem;
    Oracle1: TMenuItem;
    Sybase1: TMenuItem;
    MenuVB: TMenuItem;
    MenuFortran: TMenuItem;
    MenuFoxPro: TMenuItem;
    MenuPHP: TMenuItem;
    MenuPython: TMenuItem;
    Portugol1: TMenuItem;
    N2: TMenuItem;
    arefasagendadas1: TMenuItem;
    Novatarefa1: TMenuItem;
    Nova2: TMenuItem;
    Calendrio1: TMenuItem;
    N17: TMenuItem;
    MenuAbasFechadas: TMenuItem;
    MenuArquivos: TMenuItem;
    MenuAtalhos: TMenuItem;
    MenuConfigCores: TMenuItem;
    MenuDirPadrao: TMenuItem;
    Sobre1: TMenuItem;
    Contedo1: TMenuItem;
    SobreoDugPad101: TMenuItem;
    PopupMenu2: TPopupMenu;
    N33: TMenuItem;
    Desfazer1: TMenuItem;
    Refazer2: TMenuItem;
    N6: TMenuItem;
    Recortar4: TMenuItem;
    Copiar2: TMenuItem;
    Colar2: TMenuItem;
    Excluir2: TMenuItem;
    MenuExcluirLinha: TMenuItem;
    Limpartexto1: TMenuItem;
    Limpardeat1: TMenuItem;
    N7: TMenuItem;
    Selecionartudo2: TMenuItem;
    Localizartexto2: TMenuItem;
    Localizaresubstituir2: TMenuItem;
    Irpara2: TMenuItem;
    N21: TMenuItem;
    PopReadOnly: TMenuItem;
    SynDelphi: TSynPasSyn;
    SynC: TSynCppSyn;
    SynSQL: TSynSQLSyn;
    SynJava: TSynJavaSyn;
    Imprimir: TPrintDialog;
    SynPascalClassic: TSynPasSyn;
    PascalComplete: TSynCompletionProposal;
    JavaComplete: TSynCompletionProposal;
    SQLComplete: TSynCompletionProposal;
    LingCComplete: TSynCompletionProposal;
    SynHTML: TSynHTMLSyn;                                                                    
    HTMLComplete: TSynCompletionProposal;
    PopupMenu5: TPopupMenu;
    Executar1: TMenuItem;
    N1: TMenuItem;
    MenuExcluiAtalho: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu4: TPopupMenu;
    Selecionartudo4: TMenuItem;
    Inverterseleo2: TMenuItem;
    Noselecionarnenhum1: TMenuItem;
    N26: TMenuItem;
    Abrirnestaaba1: TMenuItem;
    Abriremnovaaba1: TMenuItem;
    Abrirarquivosselecionados1: TMenuItem;
    Abrirtodososarquivos1: TMenuItem;
    PopupMenu6: TPopupMenu;
    Irpararaz1: TMenuItem;
    PopUltimosArquivos: TPopupMenu;
    Abrirtodoas1: TMenuItem;
    Abrirtodoohistricoeapagaremseguida1: TMenuItem;
    Limparlista2: TMenuItem;
    N27: TMenuItem;
    ImageList1: TImageList;
    SynPHP: TSynPHPSyn;
    SynFortran: TSynFortranSyn;
    SynPython: TSynPythonSyn;
    SynFoxPro: TSynFoxproSyn;
    ImageList2: TImageList;
    ImageList3: TImageList;
    SynPortugol: TSynGeneralSyn;
    TimerPesquisa: TTimer;
    ransparncia1: TMenuItem;
    TimerAbas: TTimer;
    Panel22: TPanel;
    TimerAtalhos: TTimer;
    TimerArquivos: TTimer;
    EdPesqArquivo: TEdit;
    SynVB: TSynVBSyn;
    ToolButton5: TToolButton;
    ToolButtonTextoPre: TToolButton;
    PopUpPascal: TPopupMenu;
    Comentrio3: TMenuItem;
    Function1: TMenuItem;
    Procedure1: TMenuItem;
    N36: TMenuItem;
    Caseof2: TMenuItem;
    Fortodo2: TMenuItem;
    Ifthenelse2: TMenuItem;
    Repeatuntil2: TMenuItem;
    ryexcept2: TMenuItem;
    ryfinally2: TMenuItem;
    Whiledo2: TMenuItem;
    PopUpJava: TPopupMenu;
    Comentrio1: TMenuItem;
    Mtodoprivado1: TMenuItem;
    Mtodopblico1: TMenuItem;
    Novoobjeto1: TMenuItem;
    N28: TMenuItem;
    While1: TMenuItem;
    For1: TMenuItem;
    Switchcase1: TMenuItem;
    Ifelse1: TMenuItem;
    If1: TMenuItem;
    Dowhile1: TMenuItem;
    PhpComplete: TSynCompletionProposal;
    VazioComplete: TSynCompletionProposal;
    PopUpSQL: TPopupMenu;
    Select1: TMenuItem;
    Update1: TMenuItem;
    Altertable1: TMenuItem;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    Createtable1: TMenuItem;
    Altertabledrop1: TMenuItem;
    Altertablemodify1: TMenuItem;
    Label4: TLabel;
    SpeedButton6: TSpeedButton;
    BarraProgresso: TProgressBar;
    PopupMenu3: TPopupMenu;
    Selecionartudo3: TMenuItem;
    Inverterseleo1: TMenuItem;
    Noselecionarnenhuma1: TMenuItem;
    N25: TMenuItem;
    Abrirnestaaba2: TMenuItem;
    Abriremnovaaba2: TMenuItem;
    Abrir1: TMenuItem;
    Abrirtodos1: TMenuItem;
    N24: TMenuItem;
    MenuExcluiAba: TMenuItem;
    Limparlista1: TMenuItem;
    Panel18: TPanel;
    Bt_AtualizarFileListBox: TSpeedButton;
    PnCarga: TPanel;
    Panel19: TPanel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Edit7: TEdit;
    Irparaaba1: TMenuItem;
    SynCobol: TSynCobolSyn;
    MenuCobol: TMenuItem;
    SynCSharp: TSynCSSyn;
    MenuCSharp: TMenuItem;
    SynJavaScript: TSynJScriptSyn;
    MenuJavaScript: TMenuItem;
    SynVbScript: TSynVBScriptSyn;
    MenuVBScript: TMenuItem;
    SynXML: TSynXMLSyn;
    MenuXML: TMenuItem;
    SynAWK: TSynAWKSyn;
    MenuAWK: TMenuItem;
    SynBat: TSynBatSyn;
    SynPerl: TSynPerlSyn;
    MenuPerl: TMenuItem;
    SynRuby: TSynRubySyn;
    SynAsm: TSynAsmSyn;
    SynProgress: TSynProgressSyn;
    SynHaskell: TSynHaskellSyn;
    MenuHaskell1: TMenuItem;
    MenuProgress: TMenuItem;
    MenuAssembly: TMenuItem;
    Linguagem1: TMenuItem;
    XML1: TMenuItem;
    VisualBasic1: TMenuItem;
    VBScript1: TMenuItem;
    SQL3: TMenuItem;
    Sybase2: TMenuItem;
    Oracle2: TMenuItem;
    MySQL2: TMenuItem;
    MSSQL71: TMenuItem;
    InterBase62: TMenuItem;
    Standard1: TMenuItem;
    Rubyonrails1: TMenuItem;
    Python1: TMenuItem;
    Progress1: TMenuItem;
    Portugol2: TMenuItem;
    PHP1: TMenuItem;
    Perl1: TMenuItem;
    Pascal3: TMenuItem;
    Delphi1: TMenuItem;
    Clssico2: TMenuItem;
    JavaScript1: TMenuItem;
    Java1: TMenuItem;
    HTML1: TMenuItem;
    Haskell1: TMenuItem;
    FoxPro1: TMenuItem;
    Fortran1: TMenuItem;
    COBOL1: TMenuItem;
    C2: TMenuItem;
    C3: TMenuItem;
    AWK1: TMenuItem;
    Assembly1: TMenuItem;
    N15: TMenuItem;
    Semlinguagem1: TMenuItem;
    CheckBox_ItalicoComentarioPas: TDugCheckBox;
    CheckBox_ItalicoDiretivasPas: TDugCheckBox;
    CheckBox_ItalicoIdentificadorPas: TDugCheckBox;
    CheckBox_ItalicoNumeroPas: TDugCheckBox;
    CheckBox_ItalicoReservadasPas: TDugCheckBox;
    CheckBox_ItalicoStringPas: TDugCheckBox;
    CheckBox_NegritoComentarioPas: TDugCheckBox;
    CheckBox_NegritoDiretivasPas: TDugCheckBox;
    CheckBox_NegritoIdentificadorPas: TDugCheckBox;
    CheckBox_NegritoNumeroPas: TDugCheckBox;
    CheckBox_NegritoReservadasPas: TDugCheckBox;
    CheckBox_NegritoStringPas: TDugCheckBox;
    CheckBox_SublinhadoComentarioPas: TDugCheckBox;
    CheckBox_SublinhadoDiretivasPas: TDugCheckBox;
    CheckBox_SublinhadoIdentificadorPas: TDugCheckBox;
    CheckBox_SublinhadoNumeroPas: TDugCheckBox;
    CheckBox_SublinhadoReservadasPas: TDugCheckBox;
    CheckBox_SublinhadoStringPas: TDugCheckBox;
    Ed_ComentarioPas: TEdit;
    Ed_DiretivasPas: TEdit;
    Ed_IdentificadorPas: TEdit;
    Ed_NumeroPas: TEdit;
    Ed_ReservadasPas: TEdit;
    Ed_StringPas: TEdit;
    Ed_StringC: TEdit;
    Ed_ReservadasC: TEdit;
    Ed_NumeroC: TEdit;
    Ed_IdentificadorC: TEdit;
    Ed_ComentarioC: TEdit;
    CheckBox_SublinhadoStringC: TDugCheckBox;
    CheckBox_SublinhadoReservadasC: TDugCheckBox;
    CheckBox_SublinhadoNumeroC: TDugCheckBox;
    CheckBox_SublinhadoIdentificadorC: TDugCheckBox;
    CheckBox_SublinhadoComentarioC: TDugCheckBox;
    CheckBox_NegritoStringC: TDugCheckBox;
    CheckBox_NegritoReservadasC: TDugCheckBox;
    CheckBox_NegritoNumeroC: TDugCheckBox;
    CheckBox_NegritoIdentificadorC: TDugCheckBox;
    CheckBox_NegritoComentarioC: TDugCheckBox;
    CheckBox_ItalicoStringC: TDugCheckBox;
    CheckBox_ItalicoReservadasC: TDugCheckBox;
    CheckBox_ItalicoNumeroC: TDugCheckBox;
    CheckBox_ItalicoIdentificadorC: TDugCheckBox;
    CheckBox_ItalicoComentarioC: TDugCheckBox;
    Ed_StringJava: TEdit;
    Ed_ReservadasJava: TEdit;
    Ed_NumeroJava: TEdit;
    Ed_IdentificadorJava: TEdit;
    Ed_DocumentacaoJava: TEdit;
    Ed_ComentarioJava: TEdit;
    CheckBox_SublinhadoStringJava: TDugCheckBox;
    CheckBox_SublinhadoReservadasJava: TDugCheckBox;
    CheckBox_SublinhadoNumeroJava: TDugCheckBox;
    CheckBox_SubLinhadoIdentificadorJava: TDugCheckBox;
    CheckBox_SublinhadoDocumentacaoJava: TDugCheckBox;
    CheckBox_SublinhadoComentarioJava: TDugCheckBox;
    CheckBox_NegritoStringJava: TDugCheckBox;
    CheckBox_NegritoReservadasJava: TDugCheckBox;
    CheckBox_NegritoNumeroJava: TDugCheckBox;
    CheckBox_NegritoIdentificadorJava: TDugCheckBox;
    CheckBox_NegritoDocumentacaoJava: TDugCheckBox;
    CheckBox_NegritoComentarioJava: TDugCheckBox;
    CheckBox_ItalicoStringJava: TDugCheckBox;
    CheckBox_ItalicoReservadasJava: TDugCheckBox;
    CheckBox_ItalicoNumeroJava: TDugCheckBox;
    CheckBox_ItalicoIdentificadorJava: TDugCheckBox;
    CheckBox_ItalicoDocumentacaoJava: TDugCheckBox;
    CheckBox_ItalicoComentarioJava: TDugCheckBox;
    CheckBox_ItalicoComentarioSQL: TDugCheckBox;
    CheckBox_ItalicoidentificadorSQL: TDugCheckBox;
    CheckBox_ItalicoNumeroSQL: TDugCheckBox;
    CheckBox_ItalicoReservadasSQL: TDugCheckBox;
    CheckBox_ItalicoStringSQL: TDugCheckBox;
    CheckBox_NegritoComentarioSQL: TDugCheckBox;
    CheckBox_NegritoIdentificadorSQL: TDugCheckBox;
    CheckBox_NegritoNumeroSQL: TDugCheckBox;
    CheckBox_NegritoReservadasSQL: TDugCheckBox;
    CheckBox_NegritoStringSQL: TDugCheckBox;
    CheckBox_SublinhadoComentarioSQL: TDugCheckBox;
    CheckBox_SublinhadoIdentificadorSQL: TDugCheckBox;
    CheckBox_SublinhadoNumeroSQL: TDugCheckBox;
    CheckBox_SublinhadoReservadasSQL: TDugCheckBox;
    CheckBox_SublinhadoStringSQL: TDugCheckBox;
    Ed_ComentarioSQL: TEdit;
    Ed_IdentificadorSQL: TEdit;
    Ed_NumeroSQL: TEdit;
    Ed_ReservadasSQL: TEdit;
    Ed_StringSQL: TEdit;
    Ed_TextoHTML: TEdit;
    Ed_TagHTML: TEdit;
    Ed_StringHTML: TEdit;
    Ed_ComentarioHTML: TEdit;
    CheckBox_SublinhadoValuesHTML: TDugCheckBox;
    CheckBox_SublinhadoTagHTML: TDugCheckBox;
    CheckBox_SublinhadoIdentificadorHTML: TDugCheckBox;
    CheckBox_SublinhadoComentarioHTML: TDugCheckBox;
    CheckBox_NegritoValuesHTML: TDugCheckBox;
    CheckBox_NegritoTagHTML: TDugCheckBox;
    CheckBox_NegritoIdentificadorHTML: TDugCheckBox;
    CheckBox_NegritoComentarioHTML: TDugCheckBox;
    CheckBox_ItalicoValuesHTML: TDugCheckBox;
    CheckBox_ItalicoTagHTML: TDugCheckBox;
    CheckBox_ItalicoIdentificadorHTML: TDugCheckBox;
    CheckBox_ItalicoComentarioHTML: TDugCheckBox;
    Ed_StringVB: TEdit;
    Ed_ReservadasVB: TEdit;
    Ed_NumeroVB: TEdit;
    Ed_IdentificadorVB: TEdit;
    Ed_ComentarioVB: TEdit;
    CheckBox_SublinhadoStringVB: TDugCheckBox;
    CheckBox_SublinhadoReservadasVB: TDugCheckBox;
    CheckBox_SublinhadoNumeroVB: TDugCheckBox;
    CheckBox_SublinhadoIdentificadorVB: TDugCheckBox;
    CheckBox_SublinhadoComentarioVB: TDugCheckBox;
    CheckBox_NegritoStringVB: TDugCheckBox;
    CheckBox_NegritoReservadasVB: TDugCheckBox;
    CheckBox_NegritoNumeroVB: TDugCheckBox;
    CheckBox_NegritoIdentificadorVB: TDugCheckBox;
    CheckBox_NegritoComentarioVB: TDugCheckBox;
    CheckBox_ItalicoStringVB: TDugCheckBox;
    CheckBox_ItalicoReservadasVB: TDugCheckBox;
    CheckBox_ItalicoNumeroVB: TDugCheckBox;
    CheckBox_ItalicoIdentificadorVB: TDugCheckBox;
    CheckBox_ItalicoComentarioVB: TDugCheckBox;
    Desfazer2: TMenuItem;
    Refazer1: TMenuItem;
    N20: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Excluir1: TMenuItem;
    Excluirlinha1: TMenuItem;
    Limpartexto2: TMenuItem;
    Limpardeat2: TMenuItem;
    N29: TMenuItem;
    Selecionartudo1: TMenuItem;
    Localizartexto1: TMenuItem;
    Localizaresubstituir1: TMenuItem;
    Irpara1: TMenuItem;
    N31: TMenuItem;
    MenuReadOnly: TMenuItem;
    CheckBox_NegritoFuncaoSQL: TDugCheckBox;
    CheckBox_ItalicoFuncaoSQL: TDugCheckBox;
    CheckBox_SublinhadoFuncaoSQL: TDugCheckBox;
    Ed_FuncaoSQL: TEdit;
    MenuDestacarLinha: TMenuItem;
    Bt_CorLinha: TToolButton;
    MenuRuby: TMenuItem;
    Novaaba2: TMenuItem;
    SQL1: TMenuItem;
    C4: TMenuItem;
    Java3: TMenuItem;
    Pascal1: TMenuItem;
    HTML2: TMenuItem;
    exto1: TMenuItem;
    N4: TMenuItem;
    Fechartodas2: TMenuItem;
    N11: TMenuItem;
    Irparaaba2: TMenuItem;
    Irparaprimeira1: TMenuItem;
    Irparaltima1: TMenuItem;
    N13: TMenuItem;
    Rascunho2: TMenuItem;
    Rascunhocomsintaxedalinguagem2: TMenuItem;
    Duplicartexto2: TMenuItem;
    Duplicartextocomsintaxedalinguagem2: TMenuItem;
    N14: TMenuItem;
    Mostrarabasemordemalfabtica2: TMenuItem;
    Mudarttulo1: TMenuItem;
    Posicionar1: TMenuItem;
    Acima2: TMenuItem;
    Abaixo2: TMenuItem;
    MemoPrinter: TSynEditPrint;
    Empretoebranco1: TMenuItem;
    Colorido1: TMenuItem;
    Empretoebranco2: TMenuItem;
    Colorido2: TMenuItem;
    Bt_Preview: TToolButton;
    MenuReabrir: TMenuItem;
    Abrirtodoohistrico1: TMenuItem;
    Abrirtodoohistricoeapagaremseguida2: TMenuItem;
    Limparhistrico1: TMenuItem;
    N32: TMenuItem;
    Configurarimpresso1: TMenuItem;
    CheckBox1: TCheckBox;
    CheckBox_CaseSensitive: TCheckBox;
    SynCss: TSynCssSyn;
    Css1: TMenuItem;
    CSS2: TMenuItem;
    N35: TMenuItem;
    MenuSelecionarPorExtensao: TMenuItem;
    N8: TMenuItem;
    Bt_Atualizar: TToolButton;
    Ed_Filtro: TEdit;
    Label10: TLabel;
    SpeedButton17: TSpeedButton;
    MenuManterAbas: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Bt_AbrirClick(Sender: TObject);
    procedure Bt_SalvarClick(Sender: TObject);
    procedure MenuCClick(Sender: TObject);
    procedure MenuJavaClick(Sender: TObject);
    procedure Mudarnomedaaba1Click(Sender: TObject);
    procedure extoselecionado1Click(Sender: TObject);
    procedure extointeiro1Click(Sender: TObject);
    procedure extoselecionado2Click(Sender: TObject);
    procedure extointeiro2Click(Sender: TObject);
    procedure Dataehora1Click(Sender: TObject);
    procedure MenuExibirBarraClick(Sender: TObject);
    procedure Refazer1Click(Sender: TObject);
    procedure MenuSempreVisivelClick(Sender: TObject);
    procedure MenuMostrarMargemClick(Sender: TObject);
    procedure MenuNumLinhasClick(Sender: TObject);
    procedure MenuQuebraLinhaClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Semsintaxe1Click(Sender: TObject);
    procedure MenuSalvarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Ed_PesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Localizaresubstituir1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Ed_SubstituirKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton12Click(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
    procedure MenuDirPadraoClick(Sender: TObject);
    procedure MenuConfigCoresClick(Sender: TObject);
    procedure MenuAbasFechadasClick(Sender: TObject);
    procedure Ed_DiretorioPadraoMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MenuExcluiAbaClick(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure MenuSalvarTudoClick(Sender: TObject);
    procedure FileListBox_ArquivosDblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MenuArquivosClick(Sender: TObject);
    procedure DirectoryListBox_DiretorioPadraoChange(Sender: TObject);
    procedure DirectoryListBox_ArquivosChange(Sender: TObject);
    procedure FileListBox_ArquivosChange(Sender: TObject);
    procedure Meuestilo1Click(Sender: TObject);
    procedure Clssico1Click(Sender: TObject);
    procedure PopReadOnlyClick(Sender: TObject);
    procedure PageControl_PrincipalChange(Sender: TObject);
    procedure exto1Click(Sender: TObject);
    procedure CC1Click(Sender: TObject);
    procedure SQL1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Standart1Click(Sender: TObject);
    procedure InterBase61Click(Sender: TObject);
    procedure MSSSQL1Click(Sender: TObject);
    procedure MySQL1Click(Sender: TObject);
    procedure Oracle1Click(Sender: TObject);
    procedure Sybase1Click(Sender: TObject);
    procedure ListBoxAtalhosDblClick(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure SobreoDugPad101Click(Sender: TObject);
    procedure MenuHTMLClick(Sender: TObject);
    procedure HTML2Click(Sender: TObject);
    procedure Limparlista1Click(Sender: TObject);
    procedure PopupMenu5Popup(Sender: TObject);
    procedure MenuExcluiAtalhoClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure Ed_PesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuExcluirLinhaClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure Contedo1Click(Sender: TObject);
    procedure Nova2Click(Sender: TObject);
    procedure Novatarefa1Click(Sender: TObject);
    procedure MenuAtalhosClick(Sender: TObject);
    procedure Abrirnestaaba1Click(Sender: TObject);
    procedure Abriremnovaaba1Click(Sender: TObject);
    procedure Abrirtodososarquivos1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure Somentedata1Click(Sender: TObject);
    procedure Somentehora1Click(Sender: TObject);
    procedure Irpara2Click(Sender: TObject);
    procedure PopupMenu4Popup(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ListBoxAbasKeyPress(Sender: TObject; var Key: Char);
    procedure Selecionartudo3Click(Sender: TObject);
    procedure Noselecionarnenhuma1Click(Sender: TObject);
    procedure Abrirarquivosselecionados1Click(Sender: TObject);
    procedure Inverterseleo1Click(Sender: TObject);
    procedure Selecionartudo4Click(Sender: TObject);
    procedure Inverterseleo2Click(Sender: TObject);
    procedure Noselecionarnenhum1Click(Sender: TObject);
    procedure FileListBox_ArquivosKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxAtalhosKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl_ConfiguracoesChange(Sender: TObject);
    procedure MenuExibirClick(Sender: TObject);
    procedure Irpararaz1Click(Sender: TObject);
    procedure DriveComboBox_DiretorioPadraoChange(Sender: TObject);
    procedure DriveComboBox_ArquivosChange(Sender: TObject);
    procedure Limparlista2Click(Sender: TObject);
    procedure PopUltimosArquivosPopup(Sender: TObject);
    procedure MenuNovoClick(Sender: TObject);
    procedure Interface1Click(Sender: TObject);
    procedure Procedure2Click(Sender: TObject);
    procedure Mtodopblico1Click(Sender: TObject);
    procedure Mtodoprivado1Click(Sender: TObject);
    procedure Novoobjeto1Click(Sender: TObject);
    procedure MenuOrdemClick(Sender: TObject);
    procedure Abrirtodoas1Click(Sender: TObject);
    procedure Comentrio2Click(Sender: TObject);
    procedure ryExcept1Click(Sender: TObject);
    procedure ryFinally1Click(Sender: TObject);
    procedure IfThenElse1Click(Sender: TObject);
    procedure Fortodo1Click(Sender: TObject);
    procedure whiledo1Click(Sender: TObject);
    procedure Repeatuntil1Click(Sender: TObject);
    procedure Query1Click(Sender: TObject);
    procedure Caseof1Click(Sender: TObject);
    procedure Switchcase1Click(Sender: TObject);
    procedure while1Click(Sender: TObject);
    procedure Ifelse1Click(Sender: TObject);
    procedure For1Click(Sender: TObject);
    procedure MessageBox1Click(Sender: TObject);
    procedure Confirmao1Click(Sender: TObject);
    procedure Erro1Click(Sender: TObject);
    procedure Informao1Click(Sender: TObject);
    procedure Ateno1Click(Sender: TObject);
    procedure Duplicartexto1Click(Sender: TObject);
    procedure Duplicartextocomsintaxedalinguagem1Click(Sender: TObject);
    procedure CbBox_FontesKeyPress(Sender: TObject; var Key: Char);
    procedure CbBox_FontesChange(Sender: TObject);
    procedure CbBox_TamFonteChange(Sender: TObject);
    procedure MenuBarraFormatacaoClick(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure CbBox_TamFonteKeyPress(Sender: TObject; var Key: Char);
    procedure MenuPHPClick(Sender: TObject);
    procedure MenuVBClick(Sender: TObject);
    procedure MenuShellClick(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure MenuFortranClick(Sender: TObject);
    procedure MenuPythonClick(Sender: TObject);
    procedure MenuFoxProClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure Limpartexto1Click(Sender: TObject);
    procedure Rascunho1Click(Sender: TObject);
    procedure Bt_NegritoClick(Sender: TObject);
    procedure Bt_ItalicoClick(Sender: TObject);
    procedure Bt_SublinhadoClick(Sender: TObject);
    procedure Bt_StrikeOutClick(Sender: TObject);
    procedure Bt_CorFonteClick(Sender: TObject);
    procedure Bt_CorFundoClick(Sender: TObject);
    procedure Abaixo1Click(Sender: TObject);
    procedure Acima1Click(Sender: TObject);
    procedure Primeira2Click(Sender: TObject);
    procedure ltima2Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Java2Click(Sender: TObject);
    procedure Gerarclasse1Click(Sender: TObject);
    procedure Pascal1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Portugol1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure TimerPesquisaTimer(Sender: TObject);
    procedure TimerAbasTimer(Sender: TObject);
    procedure TimerAtalhosTimer(Sender: TObject);
    procedure EdPesqArquivoChange(Sender: TObject);
    procedure TimerArquivosTimer(Sender: TObject);
    procedure EdPesqArquivoKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxAbasDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure Comentrio3Click(Sender: TObject);
    procedure Function1Click(Sender: TObject);
    procedure Procedure1Click(Sender: TObject);
    procedure Caseof2Click(Sender: TObject);
    procedure Fortodo2Click(Sender: TObject);
    procedure Ifthenelse2Click(Sender: TObject);
    procedure Repeatuntil2Click(Sender: TObject);
    procedure ryexcept2Click(Sender: TObject);
    procedure ryfinally2Click(Sender: TObject);
    procedure Whiledo2Click(Sender: TObject);
    procedure Comentrio1Click(Sender: TObject);
    procedure ToolButtonTextoPreClick(Sender: TObject);
    procedure If1Click(Sender: TObject);
    procedure Dowhile1Click(Sender: TObject);
    procedure Altertable1Click(Sender: TObject);
    procedure Altertabledrop1Click(Sender: TObject);
    procedure Altertablemodify1Click(Sender: TObject);
    procedure Createtable1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Select1Click(Sender: TObject);
    procedure Update1Click(Sender: TObject);
    procedure MenuMostrarTarefasClick(Sender: TObject);
    procedure MenuPerguntaClick(Sender: TObject);
    procedure MenuPerguntaTodasClick(Sender: TObject);
    procedure MenuPermitirEscClick(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure ListBoxAbasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
    procedure Abrirnestaaba2Click(Sender: TObject);
    procedure ListBoxAbasDblClick(Sender: TObject);
    procedure Bt_AtualizarFileListBoxClick(Sender: TObject);
    procedure CheckBox_NegritoPasClick(Sender: TObject);
    procedure CheckBox_ItalicoStringPasClick(Sender: TObject);
    procedure CheckBox_SublinhadoStringPasClick(Sender: TObject);
    procedure Ed_StringPasDblClick(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure MenuCobolClick(Sender: TObject);
    procedure MenuCSharpClick(Sender: TObject);
    procedure MenuJavaScriptClick(Sender: TObject);
    procedure MenuVBScriptClick(Sender: TObject);
    procedure MenuXMLClick(Sender: TObject);
    procedure MenuAWKClick(Sender: TObject);
    procedure MenuBatClick(Sender: TObject);
    procedure MenuPerlClick(Sender: TObject);
    procedure MenuHaskell1Click(Sender: TObject);
    procedure MenuProgressClick(Sender: TObject);
    procedure MenuRubyClick(Sender: TObject);
    procedure MenuAssemblyClick(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar4Click(Sender: TObject);
    procedure Copiar2Click(Sender: TObject);
    procedure Colar2Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure Selecionartudo2Click(Sender: TObject);
    procedure Localizartexto2Click(Sender: TObject);
    procedure MenuEditarClick(Sender: TObject);
    procedure MenuDestacarLinhaClick(Sender: TObject);
    procedure Bt_CorLinhaClick(Sender: TObject);
    procedure Irparaaba2Click(Sender: TObject);
    procedure MenuAbasClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Colorido1Click(Sender: TObject);
    procedure Empretoebranco1Click(Sender: TObject);
    procedure Colorido2Click(Sender: TObject);
    procedure Empretoebranco2Click(Sender: TObject);
    procedure Arquivo1Click(Sender: TObject);
    procedure Configurarimpresso1Click(Sender: TObject);
    procedure Css1Click(Sender: TObject);
    procedure MenuSelecionarPorExtensaoClick(Sender: TObject);
    procedure Bt_AtualizarClick(Sender: TObject);
    procedure Ed_FiltroChange(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton15Click(Sender: TObject);
    procedure PageControl_PrincipalDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure MenuManterAbasClick(Sender: TObject);
  private
    IdAba : Integer;
    AbaReabrir : TAba;
    CanCloseProgram,
    SempreVisivelClick: Boolean;
    ListBoxDatas : TListBox;
    FormDatas : TForm;
    EditLinha,
    EditColuna : TLabeledEdit;
    TagSalva : Byte;
    FormRascunho : TForm;
    MemoRascunho : TSynMemo;
    AutoCompletes  : array [0..6] of TSynCompletionProposal;
    PopUpCompletes : array [0..3] of TPopupMenu;
    Splitter : TSplitter;
    DiretorioPadrao : String;
    ListaAtalhos : TStringList;
    EstaOrdenado : Boolean;
    TotalEncontrado : Integer;
    procedure NovaAba(pFlag : Boolean; pTexto: String; pSyn: TSynCustomHighlighter);
    procedure FechaAba(pTag : Integer);
    procedure HabilitarBotoes(pFlag : Boolean);
    procedure MemoChange(Sender : TObject);
    procedure OrdenaAbas;
    procedure SempreVisivel(pFlag : Boolean);
    procedure MostraHint(Sender : Tobject);
    procedure MemoClick(Sender : TObject);
    function  Localizar(pTexto,pSubs : String; pSubstituir:Boolean; pSubstituirTudo : Boolean; CaseSensitive : Boolean) : Boolean;
    procedure DatasDoubleClick(Sender : TObject);
    procedure MemoDragDrop(Sender, Source: TObject; X,Y: Integer);
    procedure MemoDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ReabreAbas(pX : Integer; CriaNova : Boolean);
    procedure VerificaExtensaoArquivo(pNomeArquivo : String);
    procedure MemoEnter(Sender : TObject);
    procedure AutoComplete(Sender : TSynMemo);
    procedure LerAtalhos;
    procedure ExcluiAtalho(Indice : Integer);
    procedure EditIrParaKeyPress(Sender: TObject; var Key: Char);
    procedure BotaoIrParaClick(Sender : TObject);
    procedure EditIrParaChange(Sender : TObject);
    procedure MemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormIrParaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InsereUltimosArquivosAbertos(pNomeArquivo : String);
    function  LerUltimosArquivosAbertos : Boolean;
    procedure PopUltimosArquivoItemClick(Sender : TObject);
    procedure AbreArquivo(pNomeArquivo : String; CriaNova : Boolean = True);
    procedure SalvaArquivo;
    function  TamanhoArquivoBytes(pArquivo : String) : Integer;
    function  TamanhoArquivoKb(pArquivo : String) : Real;
    function  TamanhoArquivoMb(pArquivo : String) : Real;
    function  TamanhoArquivoBits(pArquivo: String): Integer;
    function  TextoLinguagem : String;
    procedure TrocaLinguagem(pHighlighter : TSynCustomHighlighter; pCor : TColor);
    procedure CriaRascunho(Sintaxe : Boolean);
    function  MostraCaixaDeCores(Titulo : String; CorPadrao : TColor): TColor;
    procedure Pisca(Edit : TEdit);
    procedure MemoDropFiles(Sender : TObject; x,y : Integer; Arquivo : TStrings);
    procedure BuscaNaLista(Lista: TListBox; Edit : TEdit; Timer : TTimer);
    procedure HabilitaCheckButtons(Memo : TSynmemo);
    function  NrCaracteres(Memo : TSynMemo) : Integer;
    procedure CriaSplitter(Alinhamento : TAlign);
    procedure IniciaBarraDeProgresso(var Barra: TProgressBar; MaxBarra: integer);
    procedure ResetaBarraDeProgresso;
    function  PreparaImpressao(Colorido : Boolean; Mostra : Boolean = True) : Integer;
    procedure MemoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SelecionarExtensaoClick(Sender : TObject);
    procedure AtualizaCoresSelecao;
  public
    DiretorioEXE : String;
    CorLinhaAtiva : TColor;
    procedure VerificaArquivosTexto;
    procedure EscreveConfiguracaoDug(Descricao,Valor : String);
    procedure LeConfiguracaoDug;
    procedure LeConfiguracaoSintaxe;
    function  MemoAtivo : TSynMemo;
    procedure TiraFotoJanela;
    function  Data(pTipo : Byte) : String; {retorna vários formatos de data}
    procedure BarraHorizontalListBox(ListBox: TListBox);
    procedure AdicionaAtalho(Atalho:String; Caminho: String);
    procedure ImprimeTexto(TotalPaginas : Integer);
   end;

var
  F_Principal: TF_Principal;

implementation

uses StrUtils, U_Calendario, U_TarefasAgendadas, U_NovoAtalho,
   U_NovaTarefa, U_InfoTexto, U_Cores, U_Preview, U_ConfiguraImpressao,
   U_Sobre;

{$R *.dfm}

procedure TF_Principal.MemoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   StatusBar1.Panels[2].Text := 'Linha:' + IntToStr(MemoAtivo.CaretY) +
                                ' : Coluna:' + IntToStr(MemoAtivo.CaretX);
end;

procedure TF_Principal.EditIrParaChange(Sender : TObject);
begin
  if (TLabeledEdit(Sender).Text = '') then
     TLabeledEdit(Sender).Text := '1';
end;


procedure TF_Principal.EditIrParaKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#13,#8]) then
      key := #0;
end;

//*******************************
//formatos de data
//********************************
function TF_Principal.Data(pTipo : Byte) : String;
var vZero : String;
begin
 //DateSeparator := '/';
 vZero := '';
 if StrToInt(Copy(TimeToStr(Now),0,2))-12 < 10  then
   vZero := '0';
 case pTipo of
     1: Result := cDiaDaSemana[DayOfWeek(Now)] + ', ' +
                  Copy(DateToStr(Now),0,2)+ ' de ' +
                  cMes[StrToInt(Copy(DateToStr(Now),4,2))]+ ' de '+
                  IntToStr(CurrentYear);

     2: Result := Copy(DateToStr(Now),0,2)+ ' de ' +
                    cMes[StrToInt(Copy(DateToStr(Now),4,2))]+ ' de '+
                    IntToStr(CurrentYear);

     3: Result := Copy(DateToStr(Now),0,2)+ '-' +
                    Copy(cMes[StrToInt(Copy(DateToStr(Now),4,2))],0,3)+ '-'+
                    IntToStr(CurrentYear);

     4: Result := Copy(cMes[StrToInt(Copy(DateToStr(Now),4,2))],0,3)+ '/'+
                    IntToStr(CurrentYear);

     5: Result := cMes[StrToInt(Copy(DateToStr(Now),4,2))]+ ' de '+
                    IntToStr(CurrentYear);

     6: Result := Copy(TimeToStr(Now),0,5);

     7: Result := vZero+IntToStr(StrToInt(Copy(TimeToStr(Now),0,2))-12) +
                    Copy(TimeToStr(Now),3,3);

     8: Result := Copy(DateToStr(Now),7,4) + '-' +
                    Copy(DateToStr(Now),4,2) + '-' +
                    Copy(DatetoStr(Now),1,2) ;

     9: Result := vZero+IntToStr(StrToInt(Copy(TimeToStr(Now),0,2))-12) +
                    Copy(TimeToStr(Now),3,3)+
                    Copy(TimeToStr(Now),6,3);
 end;
end;

procedure TF_Principal.ExcluiAtalho(Indice : Integer);
begin
   ListaAtalhos.Delete(Indice);
   TAtalho(ListBoxAtalhos.Items.Objects[Indice]).Free;
   ListBoxAtalhos.Items.Delete(Indice);
   ListaAtalhos.SaveToFile(DiretorioEXE+cArquivoAtalhos);
end;

procedure TF_Principal.LerAtalhos;
var Item : TAtalho;
    Ind : Integer;
    Tokens : TStrArray;
begin
   if not FileExists(DiretorioEXE+cArquivoAtalhos) then
     Exit;

   ListaAtalhos.LoadFromFile(DiretorioEXE+cArquivoAtalhos);
   //ListaAtalhos.Sort;
   ListBoxAtalhos.Clear;
   for Ind := 0 to ListaAtalhos.Count-1 do
   begin
     GetTokens(Tokens,';',ListaAtalhos.Strings[Ind],2);
     if FileExists(Tokens[1]) then
     begin
       Item := TAtalho.Create;
       Item.Atalho := Tokens[0];
       Item.Path := Tokens[1];
       ListBoxAtalhos.Items.AddObject(Item.Atalho,Item);
     end;
   end;
end;

procedure TF_Principal.AutoComplete(Sender : TSynMemo);
var Ind : Byte;
    Indice : Shortint;
begin
  for Ind := 0 to 6 do
    AutoCompletes[Ind].Editor := nil;
  ToolButtonTextoPre.DropdownMenu := nil;
  if (Sender.Highlighter <> nil) then
  begin
    Indice := AnsiIndexText(Sender.Highlighter.Name,
                ['SynPascalClassic','SynDelphi','SynJava','SynSQL','SynC','SynHTML','SynPHP']);

    if Indice >= 0 then
      AutoCompletes[Indice].Editor := Sender;

    if (Indice >= 0) and (Indice <= 3)  then
      ToolButtonTextoPre.DropdownMenu := PopUpCompletes[Indice];
  end;
  ToolButtonTextoPre.Enabled := ToolButtonTextoPre.DropdownMenu <> nil;
end;

procedure TF_Principal.MemoEnter(Sender : TObject);
begin
  StatusBar1.Panels[2].Text := 'Linha:'+IntToStr(MemoAtivo.CaretY)+
                              ' : Coluna:'+IntToStr(MemoAtivo.CaretX);
  StatusBar1.Panels[1].Text := 'N° de caracteres: '+IntToStr(NrCaracteres(MemoAtivo));

  //StatusBar1.Panels[1].Text := TextoLinguagem;

  AutoComplete(MemoAtivo);      

  CbBox_Fontes.ItemIndex := CbBox_Fontes.Items.IndexOf(MemoAtivo.Font.Name);
  CbBox_TamFonte.ItemIndex := CbBox_TamFonte.Items.IndexOf(IntToStr(MemoAtivo.Font.Size));

  MemoAtivo.Gutter.Visible := MenuNumLinhas.Checked;
  MemoAtivo.WordWrap := MenuQuebraLinha.Checked;
  if MenuMostrarMargem.Checked then
    MemoAtivo.RightEdge := 80
  else
    MemoAtivo.RightEdge := 0;

  if MenuDestacarLinha.Checked then
     MemoAtivo.ActiveLineColor := CorLinhaAtiva
  else
     MemoAtivo.ActiveLineColor := clNone;
     
  HabilitaCheckButtons(MemoAtivo);

  Application.Title := 'DugPad - ' + PageControl_Principal.ActivePage.Caption;
  //AtualizaCoresSelecao;
end;

procedure TF_Principal.VerificaExtensaoArquivo(pNomeArquivo : String);
begin
  case AnsiIndexText(ExtractFileExt(pNomeArquivo),['.pas','.c','.java','.sql','.html','.htm',
                                                  '.txt','.php','.cpp','.h','.hpp','.dpr',
                                                  '.dpk','.pp','.php3','.phtml','.for','.bas',
                                                  '.py','.prg','.xml','.js','.rb','.rbw','.cs',
                                                  '.asm','.hpp','.w','.p','.i','.vbs',
                                                  '.hs','.lhs','.awk','.pl','.pm','.cgi','.css','.jomp']) of
    2,38 : menuJava.Click;
    3 : Standart1.Click;
    6 : Semsintaxe1.Click;
    16 : MenuFortran.Click;
    17 : MenuVB.Click;
    18 : MenuPython.Click;
    19 : MenuFoxPro.Click;
    4,5 : MenuHTML.Click;
    7,14,15 : MenuPHP.Click;
    1,8,9,10,26 : MenuC.Click;
    0,11,12,13 : MenuPascal.Items[1].Click;
    20 : MenuXML.Click;
    21 : MenuJavaScript.Click;
    22,23 : MenuRuby.Click;
    24 : MenuCSharp.Click;
    25 : MenuAssembly.Click;
    27,28,29 : MenuProgress.Click;
    30 : MenuVBScript.Click;
    31,32 : MenuHaskell1.Click;
    33 : MenuAWK.Click;
    34,35,36 : MenuPerl.Click;
    37 : Css1.Click;
    -1 : Semsintaxe1.Click;
  end;
end;

procedure TF_Principal.MemoDragDrop(Sender, Source: TObject; X,Y: Integer);
begin
 try
   {se vier arrastado da FileListBox,ou seja, é abertura de arquivo}
   if (Source is TFileListBox) then
   begin
     IniciaBarraDeProgresso(BarraProgresso,0);
     AbreArquivo(TFileListBox(Source).FileName,False);
     //VerificaExtensaoArquivo(TFileListBox(Source).FileName);
     //MemoAtivo.Lines.LoadFromFile(TFileListBox(Source).FileName);
     ResetaBarraDeProgresso;
   end;
   {se vier do arrastado do ListBox, ou seja, se for aba reaberta...}
   if ((Source is TListBox) and (TListBox(Source).Name = 'ListBoxAbas')) then
   begin
     IniciaBarraDeProgresso(BarraProgresso,0);
     ReabreAbas(ListBoxAbas.ItemIndex,False);
     ResetaBarraDeProgresso;
   end;
   MemoAtivo.Tag := 0;
 except end;
end;

procedure TF_Principal.MemoDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := True;
end;

procedure TF_Principal.DatasDoubleClick(Sender : TObject);
begin
 if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := ListBoxDatas.Items[ListBoxDatas.ItemIndex] + ' ';
end;

function TF_Principal.Localizar(pTexto,pSubs : String; pSubstituir:Boolean; pSubstituirTudo : Boolean; CaseSensitive : Boolean) : Boolean;
var
  Texto, Aux : PChar;
  TextoProcura : string;
  Resp : Integer;
begin
   Result := True;
   try
     Ed_Pesquisa.Color := clWhite;
     TimerPesquisa.Enabled := false;
     if not CaseSensitive then
     begin
       TextoProcura := LowerCase(pTexto);
       Texto := PChar(LowerCase(MemoAtivo.Text))
     end
     else
     begin
       TextoProcura := pTexto;
       Texto := PChar(MemoAtivo.Text);
     end;
     Aux :=   Texto + MemoAtivo.SelStart +
                     MemoAtivo.SelLength;
     Aux := StrPos(Aux,PChar(TextoProcura));
     if Aux = nil then
     begin
      Result := False;
      if pSubstituir then
      begin
         if not pSubstituirTudo then
           DugMensagem('Não foi possível encontrar "'+pTexto+'"!','DugPad',48);
      end
      else
      if (Ed_Pesquisa.Text <> '') then
        TimerPesquisa.Enabled := True;
      Exit;
     end;
     MemoAtivo.SelStart := Aux - Texto;
     MemoAtivo.SelLength := Length(TextoProcura);
     MemoAtivo.SetFocus;
     if pSubstituir then
     begin
        if not pSubstituirTudo then
        begin
          Resp := Application.MessageBox(PChar('Substituir "'+MemoAtivo.SelText+'" por "'+pSubs+'" ?'),cTituloMensagem,35);
          if  Resp = mrYes then
            MemoAtivo.SelText := pSubs
          else if Resp = mrCancel then
            Result := False;
          Ed_Substituir.SetFocus;
        end
        else
          MemoAtivo.SelText := pSubs
     end
     else
     if Panel5.Visible then
     begin
       Ed_Pesquisa.SetFocus;
       Ed_Pesquisa.SelStart := Length(Ed_Pesquisa.Text);
     end;
   except end;
end;

{***********************************************************
 implementar scroll horizontal nos listBox
************************************************************}
procedure TF_Principal.BarraHorizontalListBox(ListBox: TListBox);
var I,Max: Integer;
begin
   Max:= 0;
   for I := 0 to ListBox.Count - 1 do
   if Max < ListBox.Canvas.TextWidth(ListBox.Items[I]) then
        Max := ListBox.Canvas.TextWidth(ListBox.Items[I]);
   SendMessage(ListBox.Handle, LB_SETHORIZONTALEXTENT,Max+5, 0);
end;

procedure TF_Principal.MostraHint(Sender : TObject);
var Hint : String;
begin
  Hint := Application.Hint;
  if (Hint = '1') or (Hint = '0') or (Hint = '') then
  begin
    PageControl_Principal.ShowHint := False;
    Hint := 'Pronto';
  end;
  StatusBar1.Panels[0].Text := Hint;
end;

procedure TF_principal.MemoClick(Sender : TObject);
begin
  StatusBar1.Panels[2].Text := 'Linha:'+IntToStr(MemoAtivo.CaretY)+
                                ' : Coluna:'+IntToStr(MemoAtivo.CaretX);
  MemoEnter(Sender);
end;

procedure TF_Principal.SempreVisivel(pFlag : Boolean);
begin
  if pFlag then
    FormStyle := fsStayOnTop
  else
    FormStyle := fsNormal;
end;

{*******************************************************
Procedure para ordenação de abas em ordem alfabética
*********************************************************}
procedure TF_Principal.OrdenaAbas;
var Ind : Integer;
    Lista : TStringList;
    Page : TTabSheet;
begin
  if not EstaOrdenado then
  begin
    Lista := nil;
    try
      Page := PageControl_Principal.ActivePage;
      PnCarga.Caption := 'Ordenando abas...';
      PnCarga.Show;
      PnCarga.Update;
      IniciaBarraDeProgresso(BarraProgresso,PageControl_Principal.PageCount*2);
      Lista := TStringList.Create;
      for Ind := 0 to PageControl_Principal.PageCount-1 do
      begin
         Lista.AddObject(PageControl_Principal.Pages[0].Caption,PageControl_Principal.Pages[0]);
         PageControl_Principal.Pages[0].PageControl := nil;
         BarraProgresso.Position := BarraProgresso.Position + 1;
      end;
      Lista.Sort;
      for Ind := 0 to Lista.Count-1 do
      begin
         TTabSheet(Lista.Objects[Ind]).PageControl := PageControl_Principal;
         BarraProgresso.Position := BarraProgresso.Position + 1;
      end;
      PageControl_Principal.ActivePage := Page;
      EstaOrdenado := True;
    finally
      ResetaBarraDeProgresso;
      PnCarga.Hide;
      Lista.Free;
    end;
  end;
end;

procedure TF_Principal.MemoChange(Sender : TObject);
begin
  MemoAtivo.Tag := 1;
  StatusBar1.Panels[1].Text := 'N° de caracteres: '+IntToStr(NrCaracteres(MemoAtivo));
end;

procedure TF_Principal.HabilitarBotoes(pFlag : Boolean);
var vInd : Integer;
begin
     for vInd := 1 to ComponentCount-1 do
      if (Components[vInd] is TToolButton) then
       TToolButton(Components[vInd]).Enabled := pFlag;

     MenuSalvar.Enabled := pFlag;
     MenuEditar.Enabled := pFlag;
     MenuImprimir.Enabled := pFlag;
     MenuFormatar.Enabled := pFlag;
     MenuSalvarComo.Enabled := pFlag;
     MenuSalvarTudo.Enabled := pFlag;
     MenuVisualizarImpressao.Enabled := pFlag;
     MainMenu1.Items[5][0][7].Enabled := pFlag;
     MenuSalvar.Visible := pFlag;
     MenuEditar.Visible := pFlag;
     MenuImprimir.Visible := pFlag;
     MenuFormatar.Visible := pFlag;
     MenuSalvarComo.Visible := pFlag;
     MenuSalvarTudo.Visible := pFlag;
     MenuVisualizarImpressao.Visible := pFlag;
     MainMenu1.Items[5][0][7].Visible := pFlag;
     {}
     CbBox_Fontes.Enabled := pFlag;
     CbBox_TamFonte.Enabled := pFlag;
     {}
     for vInd := 1 to PopupMenu1.Items.Count-1 do
     begin
       PopUpMenu1.Items[vInd].Enabled := pFlag;
       MainMenu1.Items[1][vInd].Enabled := pFlag;
       PopUpMenu1.Items[vInd].Visible := pFlag;
       MainMenu1.Items[1][vInd].Visible := pFlag;
     end;
     {}
     SpeedButton12.Enabled := True;
     Bt_Novo.Enabled  := True;
     SpeedButton9.Enabled  := True;
     SpeedButton6.Enabled  := True;
     SpeedButton3.Enabled  := True;
     SpeedButton13.Enabled := True;
     bt_abrir.Enabled      := True;
     if pFlag then
       Bt_CorLinha.Enabled := MenuDestacarLinha.Checked;
end;

procedure TF_Principal.NovaAba(pFlag : Boolean; pTexto: String; pSyn: TSynCustomHighlighter);
var Memo : TSynMemo;
    NovaAbaObj : TTabSheet;
begin
    try
       {flag para incrementar o número da aba
       se for ordeneção ou reabertura não incrementa}
       if (not pFlag) then Inc(IdAba);
       {}
       NovaAbaObj := TTabSheet.Create(Self);
       //criação e definição das propriedades default da area de texto
       Memo := TSynMemo.Create(NovaAbaObj);
       Memo.Parent := NovaAbaObj;
       Memo.Align := alClient;
       Memo.Gutter.Visible := False;
       Memo.BorderStyle := bsSingle;
       Memo.RightEdge := 0;
       Memo.ScrollBars := ssBoth;
       Memo.Font.Size := 10;
       Memo.PopupMenu := PopUpMenu2;
       Memo.Clear;
       Memo.Gutter.ShowLineNumbers := True;
       Memo.Gutter.AutoSize := True;
       Memo.WantTabs := True;
       Memo.ShowHint := False;
       Memo.MaxScrollWidth := MAX_SCROLL;
       Memo.Options := [eoAutoIndent,eoGroupUndo,eoDisableScrollArrows,eoDragDropEditing,
                        eoDropFiles,eoHideShowScrollbars,eoSmartTabs,eoTabIndent,eoTabsToSpaces];
       {definindo os eventos da area de texto}
       Memo.OnChange   :=  MemoChange;
       Memo.OnClick    :=  MemoClick;
       Memo.OnDragDrop :=  MemoDragDrop;
       Memo.OnDragOver :=  MemoDragOver;
       Memo.OnEnter    :=  MemoEnter;
       Memo.OnKeyUp    :=  MemoKeyUp;
       Memo.OnKeyDown  :=  MemoKeyDown;
       Memo.OnDropFiles:=  MemoDropFiles;
       {}
       Memo.Text := pTexto;
       Memo.Highlighter := pSyn;
       Memo.Options := Memo.Options + [eoDropFiles];
       {}
       if MenuMostrarMargem.Checked then
          Memo.RightEdge := 80;
       {}
       Memo.Gutter.Visible := MenuNumLinhas.Checked;
       Memo.WordWrap := MenuQuebraLinha.Checked;
       {}
       HabilitarBotoes(True);
       {}
       NovaAbaObj.Caption := 'Novo texto '+IntToStr(IdAba);
       NovaAbaObj.ImageIndex := 0;
       if pSyn <> nil then
         NovaAbaObj.ImageIndex := pSyn.Tag;
       {}
       NovaAbaObj.Hint := NovaAbaObj.Caption;
       NovaAbaObj.PageControl := PageControl_Principal;
       PageControl_Principal.ActivePage := NovaAbaObj;
       {}
       EstaOrdenado := False;
    except end;
    MemoEnter(MemoAtivo);
end;

procedure TF_Principal.FechaAba(pTag : Integer);

     procedure Libera;
     begin
        MemoAtivo.Free;
        PageControl_Principal.ActivePage.Free;
     end;

var RespFecha : Integer;
    ContinuaFechando : Boolean;
begin
  PnCarga.Caption := 'Fechando abas...Aguarde...';
  PnCarga.Show;
  PnCarga.Update;
  IniciaBarraDeProgresso(BarraProgresso,PageControl_Principal.PageCount);

  ContinuaFechando := True; {flag para o while}
  while (ContinuaFechando) do
  begin
    try
      {cria objeto TAba para ListBox}
      AbaReabrir := TAba.Create;
      AbaReabrir.Texto := MemoAtivo.Text;
      AbaReabrir.Fonte := TFont.Create;
      AbaReabrir.Fonte.Assign(MemoAtivo.Font);
      AbaReabrir.Caption := PageControl_Principal.ActivePage.Caption;
      AbaReabrir.Sintaxe := MemoAtivo.Highlighter;
      AbaReabrir.Cor := MemoAtivo.Color;
      AbaReabrir.Tag := PageControl_Principal.ActivePage.Tag;
      AbaReabrir.Path := PageControl_Principal.ActivePage.Hint;
      if (MemoAtivo.Tag = 1) then
      begin
         PnCarga.Hide;
         RespFecha := Application.MessageBox(PChar('O texto "'+PageControl_Principal.ActivePage.Caption+'" foi alterado.'+#13+
                     'Deseja salvá-lo?'),cTituloMensagem,35);
         if RespFecha = mrYes then
         begin
           Bt_Salvar.Click;
           Libera;
         end
         else
         if RespFecha = mrNo then
           Libera
         else
         if RespFecha = mrCancel then
         begin
           CanCloseProgram := False;
           Exit;
         end;
         PnCarga.Show;
         PnCarga.Update;
      end//if (MemoAtivoTag = 1) then
      else
        Libera;
      {insere no ListBox}
      ListBoxAbas.Items.AddObject(AbaReabrir.Caption,AbaReabrir);
      BarraHorizontalListBox(ListBoxAbas);
      BarraProgresso.Position := BarraProgresso.Position + 1;
    except
    end;
    ContinuaFechando := not((PageControl_Principal.PageCount = 0) or (pTag = 1)); {pode sair do while}
  end;// while (vFlag) do
  CanCloseProgram := True; {pode fechar o sistema}

  ResetaBarraDeProgresso;

  if (PageControl_Principal.PageCount = 0) then
  begin
    HabilitarBotoes(False);
    Panel5.Visible := False;
    Panel10.Visible := False;
    Panel6.Visible := False;
    Panel19.Visible := False;;
    StatusBar1.Panels[1].Text := '';
  end;
  PnCarga.Hide;
end;

procedure TF_Principal.FormCreate(Sender: TObject);
begin
  {}
  DiretorioEXE := ExtractFilePath(Application.ExeName);
  {}
  AutoCompletes[0] := PascalComplete;
  AutoCompletes[1] := PascalComplete;
  AutoCompletes[2] := JavaComplete;
  AutoCompletes[3] := SQLComplete;
  AutoCompletes[4] := LingCComplete;
  AutoCompletes[5] := HTMLComplete;
  AutoCompletes[6] := PhpComplete;
  PopUpCompletes[0] := PopUpPascal;
  PopUpCompletes[1] := PopUpPascal;
  PopUpCompletes[2] := PopUpJava;
  PopUpCompletes[3] := PopUpSQL;
  {}
  LeConfiguracaoDug;
  LeConfiguracaoSintaxe;
  ListaAtalhos := TStringList.Create;
  ListaAtalhos.Sorted := True;
  LerAtalhos;
  {}
  LongDateFormat := 'dd/MM/yyyy';
  {}
  ShortDateFormat := LongDateFormat;
  BitBtn3.Align := alBottom;
  BitBtn3.Enabled := False;
  BitBtn2.Align := alBottom;
  BitBtn1.Align := alBottom;
  PnCarga.Align := alClient;
  {}
  StatusBar1.Visible := MenuExibirBarra.Checked;
  SempreVisivel(MenuSempreVisivel.Checked);
  {}
  StatusBar1.Panels[1].Text := 'N° de caracteres: 0';
  Application.OnHint := MostraHint;
  Panel3.Visible := False;
  Panel5.Visible := False;
  Panel6.Visible := False;
  Panel7.Visible := False;
  Panel2.Visible := False;
  Panel10.Visible := False;
  Panel11.Visible := False;
  Panel14.Visible := False;
  {}
  Application.HelpFile := 'HELP.HLP';
  {}
  MenuAssocia.Visible := False;
  {}
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ cExemploJava;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ cExemploDelphi;
  PhpComplete.InsertList.Strings[PhpComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ cExemploPhp;
  HTMLComplete.InsertList.Strings[HTMLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ cExemploHTML;
  {}
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('while')] := cWhileJava;
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('dowhile')] := cDoWhileJava;
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('for')] := cForJava;
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('ifelse')] := cIfElseJava;
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('if')] := cIfJava;
  JavaComplete.InsertList.Strings[JavaComplete.InsertList.IndexOf('switch')] := cSwitchCase;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('asmend')] := cAsmEnd;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('beginend')] := cBeginEnd;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('caseof')] := cCaseOf;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('fordowntodo')] := cForDowntoDo;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('fortodo')] := cForToDo;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('ifthenelse')] := cIfPascal;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('repeatuntil')] := cRepeat;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('tryexcept')] := cTryExcept;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('tryfinally')] := cTryFinally;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('whiledo')] := cWhileDo;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('ifthen')] := cIfThen;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('functionblock')] := cFunction;
  PascalComplete.InsertList.Strings[PascalComplete.InsertList.IndexOf('procedureblock')] := cProcedure;
  LingCComplete.InsertList.Strings[LingCComplete.InsertList.IndexOf('while')] := cWhileJava;
  LingCComplete.InsertList.Strings[LingCComplete.InsertList.IndexOf('for')] := cForJava;
  LingCComplete.InsertList.Strings[LingCComplete.InsertList.IndexOf('dowhile')] := cDoWhileJava;
  LingCComplete.InsertList.Strings[LingCComplete.InsertList.IndexOf('ifelse')] := cIfJava;
  LingCComplete.InsertList.Strings[LingCComplete.InsertList.IndexOf('switch')] := cSwitchCase;
  {}
  ToolButtonTextoPre.Enabled := False;
  {}
  if MenuMostrarTarefas.Checked then
  begin
    F_TarefasAgendadas := TF_TarefasAgendadas.Create(Self);
    if (not F_TarefasAgendadas.Showing) and
       (F_TarefasAgendadas.TotalHoje > 0) then
    begin
       F_TarefasAgendadas.Panel3.Visible := False;
       F_TarefasAgendadas.ShowModal;
       F_TarefasAgendadas.Panel3.Visible := True;
    end;
    F_TarefasAgendadas.Free;
  end;
  {}
  CorLinhaAtiva := RGB(232,242,220);
end;                                

procedure TF_Principal.Bt_AbrirClick(Sender: TObject);
var I : Integer;
begin
 Abrir.FileName := '';
 Abrir.InitialDir := DiretorioPadrao;
 if Abrir.Execute then
 begin
   IniciaBarraDeProgresso(BarraProgresso,Abrir.Files.Count-1);
   for I := 0 to Abrir.Files.Count-1 do
   begin
     try
       AbreArquivo(Abrir.Files[I])
     except
       DugMensagem('O arquivo "'+Abrir.Files[I]+'" não foi encontrado!',cTituloMensagem,48);
     end;
     BarraProgresso.Position := BarraProgresso.Position + 1;
   end;
   ResetaBarraDeProgresso;
 end;
end;

procedure TF_Principal.Bt_SalvarClick(Sender: TObject);
begin
  TagSalva := PageControl_Principal.ActivePage.Tag;
  SalvaArquivo;
  Sleep(100);
end;

procedure TF_Principal.MenuCClick(Sender: TObject);
begin
  TrocaLinguagem(SynC,clWhite);
end;

procedure TF_Principal.MenuJavaClick(Sender: TObject);
begin
  TrocaLinguagem(SynJava,clWhite);
end;

procedure TF_Principal.Mudarnomedaaba1Click(Sender: TObject);
begin
  Panel6.Visible:= not Panel6.Visible;
  if Panel6.Visible then
  begin
    Edit1.Text := PageControl_Principal.ActivePage.Caption;
    Edit1.SetFocus;
  end;
end;

procedure TF_Principal.extoselecionado1Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := LowerCase(MemoAtivo.SelText);
end;

procedure TF_Principal.extointeiro1Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
   MemoAtivo.Text := LowerCase(MemoAtivo.Text);
end;

procedure TF_Principal.extoselecionado2Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := UpperCase(MemoAtivo.SelText);
end;

procedure TF_Principal.extointeiro2Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
   MemoAtivo.Text := UpperCase(MemoAtivo.Text);
end;

procedure TF_Principal.Dataehora1Click(Sender: TObject);
begin
  try
    FormDatas := TForm.Create(Application);
    ListBoxDatas := TListBox.Create(FormDatas);
    {propriedades do form}
    FormDatas.Position := poMainFormCenter;
    FormDatas.Caption := 'Formatos de data e hora';
    {propriedades da lista}
    ListBoxDatas.Parent := FormDatas;
    ListBoxDatas.Align := alClient;
    ListBoxDatas.OnDblClick := DatasDoubleClick;
    //inserindo items na lista
    ListBoxDatas.Items.Add(Data(1));
    ListBoxDatas.Items.Add(Data(2));
    ListBoxDatas.Items.Add(Data(3));
    ListBoxDatas.Items.Add(Data(4));
    ListBoxDatas.Items.Add(Data(5));
    ListBoxDatas.Items.Add(Data(6));
    ListBoxDatas.Items.Add(Data(7));
    ListBoxDatas.Items.Add(Data(8));
    ListBoxDatas.Items.Add(Data(9));
    ListBoxDatas.Items.Add(DateToStr(Date));
    ListBoxDatas.Items.Add(DateTimeToStr(Now));
    ListBoxDatas.Items.Add(TimeToStr(Time));
    {}
    FormDatas.BorderStyle := bsToolWindow;
    FormDatas.ShowModal;
  finally
    ListBoxDatas.Free;
    FormDatas.Free;
  end;
  //MemoAtivoSelText := DateTimeToStr(now);
end;
{}
procedure TF_Principal.MenuExibirBarraClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('barra_status',BoolToStr(TMenuItem(Sender).Checked,True));
  statusbar1.Visible := not statusbar1.Visible;
end;

procedure TF_Principal.Refazer1Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
     MemoAtivo.Redo
end;
{}
procedure TF_Principal.MenuSempreVisivelClick(Sender: TObject);
begin
  SempreVisivelClick := True;
  try
    EscreveConfiguracaoDug('sempre_visivel',BoolToStr(TMenuItem(Sender).Checked,True));
    SempreVisivel(MenuSempreVisivel.Checked);
  except end;
  SempreVisivelClick := False;
end;
{}
procedure TF_Principal.MenuMostrarMargemClick(Sender: TObject);
begin
  if PageControl_Principal.PageCount > 0 then
  begin
    EscreveConfiguracaoDug('mostrar_margem',BoolToStr(TMenuItem(Sender).Checked,True));
    if TMenuItem(Sender).Checked then
      MemoAtivo.RightEdge := 80
    else
      MemoAtivo.RightEdge := 0;
  end;
end;
{}
procedure TF_Principal.MenuNumLinhasClick(Sender: TObject);
begin
  if PageControl_Principal.PageCount > 0 then
     MemoAtivo.Gutter.Visible := MenuNumLinhas.Checked;
  EscreveConfiguracaoDug('mostrar_linhas',BoolToStr(TMenuItem(Sender).Checked,True));
end;
{}
procedure TF_Principal.MenuQuebraLinhaClick(Sender: TObject);
begin
  if PageControl_Principal.PageCount > 0 then
  begin
    MemoAtivo.WordWrap := MenuQuebraLinha.Checked;
    if not MenuQuebraLinha.Checked then
       MemoAtivo.ScrollBars := ssBoth;
    EscreveConfiguracaoDug('quebra_linha',BoolToStr(TMenuItem(Sender).Checked,True));
  end;
end;
{}
procedure TF_Principal.Sair1Click(Sender: TObject);
begin
   Close;
end;
{}
procedure TF_Principal.Semsintaxe1Click(Sender: TObject);
begin
  TrocaLinguagem(nil,clWhite);
end;
{}
procedure TF_Principal.MenuSalvarClick(Sender: TObject);
begin
  TagSalva := PageControl_Principal.ActivePage.Tag;
  PageControl_Principal.ActivePage.Tag := 0;
  SalvaArquivo;
end;

procedure TF_Principal.ReabreAbas(pX : Integer; CriaNova : Boolean);
begin
  try
    if CriaNova then
       NovaAba(True,'',nil);
    {}

    PageControl_Principal.ActivePage.Caption :=
                         TAba(ListBoxAbas.Items.Objects[pX]).Caption;
    PageControl_Principal.ActivePage.Hint := TAba(ListBoxAbas.Items.Objects[pX]).Path;
    PageControl_Principal.ActivePage.Tag  := TAba(ListBoxAbas.Items.Objects[pX]).Tag;
    MemoAtivo.Color := TAba(ListBoxAbas.Items.Objects[pX]).Cor;
    MemoAtivo.Text := TAba(ListBoxAbas.Items.Objects[pX]).Texto;
    MemoAtivo.Font.Assign(TAba(ListBoxAbas.Items.Objects[pX]).Fonte);
    MemoAtivo.Highlighter := TAba(ListBoxAbas.Items.Objects[pX]).Sintaxe;
    if CriaNova then
    begin
      TAba(ListBoxAbas.Items.Objects[pX]).Free;
      ListBoxAbas.Items.Delete(pX);
    end;
  except
  end;
  BarraHorizontalListBox(ListBoxAbas);
  MemoAtivo.Hint := PageControl_Principal.ActivePage.Caption;
  MemoAtivo.SetFocus;
  if ListBoxAbas.Items.Count = 0 then
    BitBtn3.Enabled := False;
end;
{}
procedure TF_Principal.SpeedButton4Click(Sender: TObject);
begin
   Localizar(Ed_Pesquisa.Text,'',False,False,CheckBox1.Checked);
end;

procedure TF_Principal.SpeedButton5Click(Sender: TObject);
begin
   Panel5.Visible := False;
   TimerPesquisa.Enabled := False;
end;

procedure TF_Principal.Ed_PesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   case key of
     #13: SpeedButton4.Click;
   end;
end;
{}
procedure TF_Principal.SpeedButton7Click(Sender: TObject);
begin
   if Length(Trim(Edit1.Text)) > 0 then
    begin
      PageControl_Principal.ActivePage.Caption := Edit1.Text;
      PageControl_Principal.ActivePage.Hint := Edit1.Text;
      EstaOrdenado := False;
    end;
   Panel6.Visible := False;
   Application.Title := 'DugPad - ' + PageControl_Principal.ActivePage.Caption;
end;
{}
procedure TF_Principal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   case key of
     #13: SpeedButton7.Click;
   end;
end;
{}
procedure TF_Principal.SpeedButton8Click(Sender: TObject);
begin
  Panel7.Visible := not Panel7.Visible;
  Panel3.Visible := False;
end;
{}
procedure TF_Principal.SpeedButton6Click(Sender: TObject);
begin
    Panel3.Visible := False;
    MenuAbasFechadas.Checked := False;
    TimerAbas.Enabled := false;
end;
{}
procedure TF_Principal.SpeedButton9Click(Sender: TObject);
begin
    Panel7.Visible := False;
    MenuDirPadrao.Checked := False;
end;
{}
procedure TF_Principal.Localizaresubstituir1Click(Sender: TObject);
begin
  Panel10.Visible := True;
  Ed_Localizar.Text := MemoAtivo.SelText;
  if Ed_Localizar.Text = '' then
     Ed_Localizar.SetFocus
  else
     Ed_Substituir.SetFocus;
  Panel5.Visible := False;
  Ed_Substituir.Clear;
end;
{}
procedure TF_Principal.SpeedButton10Click(Sender: TObject);
begin
  MemoAtivo.CaretX := 0;
  while Localizar(Ed_Localizar.Text,Ed_Substituir.Text,True,False,CheckBox_CaseSensitive.Checked) do;
end;
{}
procedure TF_Principal.SpeedButton11Click(Sender: TObject);
begin
  Panel10.Visible := False;
end;
{}
procedure TF_Principal.Ed_SubstituirKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: SpeedButton10.Click;
  end;
end;
{}
procedure TF_Principal.SpeedButton12Click(Sender: TObject);
begin
  Panel11.Visible := False;
  MenuConfigCores.Checked := False;
end;
{}
procedure TF_Principal.bt_fecharClick(Sender: TObject);
var PodeFechar : Boolean;
begin
   PodeFechar := False;
   if (TSpeedButton(Sender).Tag = 1) then
   begin
     if (MenuPergunta.Checked) then
       PodeFechar := DugMensagem('Fechar aba?',cTituloMensagem,36)
     else
       PodeFechar := True;
   end
   else
   if (TSpeedButton(Sender).Tag = 0) then
   begin
     if (MenuPerguntaTodas.Checked) then
       PodeFechar := DugMensagem('Fechar todas as abas?',cTituloMensagem,36)
     else
       PodeFechar := True;
   end;

   if PodeFechar then
   begin
     FechaAba(TSpeedButton(Sender).Tag);
     if PageControl_Principal.PageCount > 0 then
       MemoAtivo.SetFocus;
     BitBtn3.Enabled := True;
   end;
end;
{}
procedure TF_Principal.MenuDirPadraoClick(Sender: TObject);
begin
  Panel3.Visible := False;
  panel11.Visible := False;
  Panel2.Visible := False;
  PAnel14.Visible := False;
  Panel7.Visible := MenuDirPadrao.Checked;
  MenuAtalhos.Checked := False;
  MenuAbasFechadas.Checked := False;
  MenuConfigCores.Checked := False;
  MenuArquivos.Checked := False;
  //
  DirectoryListBox_DiretorioPadrao.Directory := DiretorioPadrao;
  //
  CriaSplitter(alRight);
end;
{}
procedure TF_Principal.MenuConfigCoresClick(Sender: TObject);
begin
  Panel3.Visible := False;
  Panel7.Visible := False;
  Panel2.Visible := False;
  PAnel14.Visible := False;
  Panel11.Visible := MenuConfigCores.Checked;
  MenuAtalhos.Checked := False;
  MenuDirPadrao.Checked := False;
  MenuAbasFechadas.Checked := False;
  MenuArquivos.Checked := False;
  CriaSplitter(alRight);

  PageControl_Configuracoes.ActivePage := TabSheet_Delphi;

  if (MemoAtivo.Highlighter = SynC) then
    PageControl_Configuracoes.ActivePage := TabSheet_LingC
  else
  if (MemoAtivo.Highlighter = SynHTML) then
    PageControl_Configuracoes.ActivePage := TabSheet_HTML
  else
  if (MemoAtivo.Highlighter = SynJava) then
    PageControl_Configuracoes.ActivePage := TabSheet_Java
  else
  if (MemoAtivo.Highlighter = SynSQL) then
    PageControl_Configuracoes.ActivePage := TabSheet_SQL
  else
  if (MemoAtivo.Highlighter = SynVB) then
    PageControl_Configuracoes.ActivePage := TabSheet_VB
end;
{}
procedure TF_Principal.MenuAbasFechadasClick(Sender: TObject);
begin
   Panel7.Visible := False;
   Panel11.Visible := False;
   Panel2.Visible := False;
   PAnel14.Visible := False;

   Panel3.Visible := MenuAbasFechadas.Checked;
   MenuAtalhos.Checked := False;
   MenuDirPadrao.Checked := False;
   MenuConfigCores.Checked := False;
   MenuArquivos.Checked := False;
   if Panel3.Visible then
      Edit5.SetFocus;

   CriaSplitter(alRight);
end;
{}
procedure TF_Principal.Ed_DiretorioPadraoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  Ed_DiretorioPadrao.Hint := Ed_DiretorioPadrao.Text;
end;

procedure TF_Principal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if PageControl_Principal.PageCount > 1 then
  begin
    if DugMensagem('Existem '+IntToStr(PageControl_Principal.PageCount)+' abas abertas! Deseja sair?',cTituloMensagem,36) then
      FechaAba(0);
  end
  else
  if PageControl_Principal.PageCount = 1 then
    FechaAba(1);
    
  CanClose := CanCloseProgram;
end;
procedure TF_Principal.MenuExcluiAbaClick(Sender: TObject);
var Ind : Integer;
begin
  try
    if ListBoxAbas.SelCount = 1 then
    begin
     TAba(ListBoxAbas.Items.Objects[ListBoxAbas.ItemIndex]).Free;
     ListBoxAbas.Items.Delete(ListBoxAbas.ItemIndex);
    end
    else
    begin
      for Ind := ListBoxAbas.Items.Count-1 downto 0 do
       if ListBoxAbas.Selected[Ind] then
       begin
         TAba(ListBoxAbas.Items.Objects[Ind]).Free;
         ListBoxAbas.Items.Delete(Ind);
       end;
    end;
    BitBtn3.Enabled := (ListBoxAbas.Items.Count > 0);
  except end
end;

procedure TF_Principal.PopupMenu3Popup(Sender: TObject);
var vInd : Integer;
begin
   for vInd := 0 to PopupMenu3.Items.Count-1 do
       PopupMenu3.Items[vInd].Enabled := (ListBoxAbas.Items.Count > 0);

   PopupMenu3.Items[4].Enabled := (PageControl_Principal.PageCount > 0) and (ListBoxAbas.Items.Count > 0);
end;

procedure TF_Principal.Edit5KeyPress(Sender: TObject; var Key: Char);
var vMsg : PChar;
begin
  vMsg := PChar('O texto "'+Edit5.Text+'" não foi encontrado!');
  case key of
    #13 : begin
       if ListBoxAbas.ItemIndex > -1 then
       begin
         ListBoxAbasDblClick(Sender);
         Edit5.Clear;
       end
       else
         DugMensagem(vMsg,cTituloMensagem,48);
    end;
   #27 : Edit5.Clear;
  end;
end;

procedure TF_Principal.MenuSalvarTudoClick(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to PageControl_Principal.PageCount-1 do
  begin
     TagSalva := PageControl_Principal.ActivePage.Tag;
     PageControl_Principal.ActivePage := PageControl_Principal.Pages[vInd];
     SalvaArquivo;
  end;
end;

procedure TF_Principal.FileListBox_ArquivosDblClick(Sender: TObject);
begin
   IniciaBarraDeProgresso(BarraProgresso,0);
   AbreArquivo(FileListBox_Arquivos.FileName);
   ResetaBarraDeProgresso;
end;

procedure TF_Principal.SpeedButton3Click(Sender: TObject);
begin
   Panel2.Visible := False;
   MenuArquivos.Checked := False;
   TimerArquivos.Enabled := false;
end;

procedure TF_Principal.MenuArquivosClick(Sender: TObject);
begin
  Panel3.Visible  := False;
  Panel7.Visible  := False;
  Panel11.Visible := False;
  PAnel14.Visible := False;
  Panel2.Visible  := MenuArquivos.Checked;
  //
  DirectoryListBox_Arquivos.Directory := DiretorioPadrao;
  //
  MenuAtalhos.Checked := False;
  MenuDirPadrao.Checked := False;
  MenuConfigCores.Checked := False;
  MenuAbasFechadas.Checked := False;
  EdPesqArquivo.Clear;
  CriaSplitter(alRight);
end;

procedure TF_Principal.DirectoryListBox_DiretorioPadraoChange(Sender: TObject);
begin
  DiretorioPadrao := TDirectoryListBox(Sender).Directory;
  EscreveConfiguracaoDug('diretorio_padrao',DiretorioPadrao);
  Ed_DiretorioPadrao.Text := DiretorioPadrao;
end;

procedure TF_Principal.DirectoryListBox_ArquivosChange(Sender: TObject);
begin
   BarraHorizontalListBox(TListBox(DirectoryListBox_Arquivos));
   BitBtn2.Enabled := (FileListBox_Arquivos.Count > 0);
end;

procedure TF_Principal.FileListBox_ArquivosChange(Sender: TObject);
begin
   BarraHorizontalListBox(TListBox(FileListBox_Arquivos));
end;

procedure TF_Principal.Meuestilo1Click(Sender: TObject);
begin
  TrocaLinguagem(SynDelphi,clWhite);
end;

procedure TF_Principal.Clssico1Click(Sender: TObject);
begin
   TrocaLinguagem(SynPascalClassic,clNavy);
end;

procedure TF_Principal.PopReadOnlyClick(Sender: TObject);
begin
   MemoAtivo.ReadOnly := TMenuItem(Sender).Checked;
end;

procedure TF_Principal.PageControl_PrincipalChange(Sender: TObject);
begin
  MemoAtivo.SetFocus;
  StatusBar1.Panels[1].Text := 'N° de caracteres: '+IntToStr(NrCaracteres(MemoAtivo));
end;

procedure TF_Principal.exto1Click(Sender: TObject);
begin
  NovaAba(False,'',nil);
  MemoAtivo.SetFocus;
end;

procedure TF_Principal.CC1Click(Sender: TObject);
begin
  NovaAba(False,cPadraoC,SynC);
end;

procedure TF_Principal.SQL1Click(Sender: TObject);
begin
  NovaAba(False,cPadraoSQL,SynSQL);
end;

procedure TF_Principal.VerificaArquivosTexto;
var Arquivo : TextFile;
    Linha : String;
    Lista : TStringList;
    ListaErros : TStringList;
    Caminho : String;
    Mensagem : PChar;
    Tokens : TStrArray;
begin
   Caminho := DiretorioEXE+cArquivoTarefas;
   if not FileExists(Caminho) then
   begin
     AssignFile(Arquivo,Caminho);
     Rewrite(Arquivo);
     CloseFile(Arquivo);
   end
   else {se já existe o arquivo, apaga as linhas que contém erro}
   begin
      AssignFile(Arquivo,Caminho);
      Reset(Arquivo);
      Lista := TStringList.Create;
      ListaErros := TStringList.Create;
      while not Eof(Arquivo) do
      begin
        try
          Readln(Arquivo,Linha);
          GetTokens(Tokens,';', Linha,2);
          StrToDate(Tokens[0]);
          Lista.Add(Linha);
        except
          ListaErros.Add(Linha);
        end;
      end;
      CloseFile(Arquivo);
      if ListaErros.Count > 0 then
      begin
        Mensagem := PChar('O arquivo '+Caminho+' apresentou erro em '+IntToStr(ListaErros.Count)+' linhas.');
        Mensagem := PChar(Mensagem + ' Clique OK para corrigir o problema.');

        MensagemDeErro(Mensagem,'Erro',ListaErros.Text,cMsgAviso);

        Lista.SaveToFile(Caminho);
      end;
      Lista.Free;
      ListaErros.Free;
   end;
   {}
   Caminho := DiretorioEXE+cArquivoAtalhos;
   if not FileExists(Caminho) then
   begin
     AssignFile(Arquivo,Caminho);
     Rewrite(Arquivo);
     CloseFile(Arquivo);
   end;
end;

procedure TF_Principal.Abrir1Click(Sender: TObject);
var Ind : Integer;
    Lista : TStringList;
begin
   try
    PnCarga.Caption := 'Abrindo abas...Aguarde...';
    PnCarga.Show;
    PnCarga.Update;
    IniciaBarraDeProgresso(BarraProgresso,ListBoxAbas.Items.Count);
    Lista := TStringList.Create;
    for Ind := ListBoxAbas.Items.Count-1 downto 0 do
    begin
     if ListBoxAbas.Selected[Ind] then
        ReabreAbas(Ind,True);
     BarraProgresso.Position := BarraProgresso.Position + 1
    end;
   finally
     PnCarga.Hide;
     ResetaBarraDeProgresso;
     Lista.Free;
   end;
end;

procedure TF_Principal.Standart1Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlStandard;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);
end;

procedure TF_Principal.InterBase61Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlInterbase6;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);
end;

procedure TF_Principal.MSSSQL1Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlMSSQL7;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);
end;

procedure TF_Principal.MySQL1Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlMySQL;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);
end;

procedure TF_Principal.Oracle1Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlOracle;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);
end;

procedure TF_Principal.Sybase1Click(Sender: TObject);
begin
   TrocaLinguagem(SynSQL,clWhite);
   SynSQL.SQLDialect := sqlSybase;
   SQLComplete.InsertList.Strings[SQLComplete.InsertList.Count-1] := 'Exemplo de código: ' +#13+#13+ ExemploSQL(SynSQL.SQLDialect);   
end;

procedure TF_Principal.ListBoxAtalhosDblClick(Sender: TObject);
begin
  try
    WinExec(PChar(TAtalho(ListBoxAtalhos.Items.Objects[ListBoxAtalhos.ItemIndex]).Path),1);
  except end;
end;

procedure TF_Principal.Edit6KeyPress(Sender: TObject; var Key: Char);
var vMsg : PChar;
begin
  vMsg := PChar('O arquivo "'+Edit6.Text+'" não foi encontrado!');
  case key of
    #13 : begin
             if ListBoxAbas.ItemIndex > -1 then
             begin
               ListBoxAtalhosDblClick(Sender);
               Edit6.Clear;
             end
             else
               DugMensagem(vMsg,cTituloMensagem,48);
          end;
    #27 : Edit6.Clear;
  end;
end;

procedure TF_Principal.BitBtn1Click(Sender: TObject);
begin
 try
   F_NovoAtalho := TF_NovoAtalho.Create(Self);
   F_NovoAtalho.ShowModal;
 finally
   F_NovoAtalho.Free;
 end;
end;

procedure TF_Principal.SobreoDugPad101Click(Sender: TObject);
begin
 F_Sobre := nil;
 try
   F_Sobre := TF_Sobre.Create(Application);
   F_Sobre.ShowModal;
 finally
   F_Sobre.Free;
 end;
end;

procedure TF_Principal.MenuHTMLClick(Sender: TObject);
begin
   TrocaLinguagem(SynHTML,clWhite);
end;

procedure TF_Principal.HTML2Click(Sender: TObject);
begin
  NovaAba(False,cPadraoHTML,SynHTML);
end;

procedure TF_Principal.Limparlista1Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to ListBoxAbas.Items.Count-1 do
  begin
    TAba(ListBoxAbas.Items.Objects[0]).Free;
    ListBoxAbas.Items.Delete(0);
  end;
  BarraHorizontalListBox(ListBoxAbas);
  BitBtn3.Enabled := (ListBoxAbas.Items.Count>0);
end;

procedure TF_Principal.PopupMenu5Popup(Sender: TObject);
var vInd : Integer;
begin
   for vInd := 0 to PopupMenu5.Items.Count-1 do
     PopupMenu5.Items[vInd].Enabled := ListBoxAtalhos.Items.Count > 0;
end;

procedure TF_Principal.MenuExcluiAtalhoClick(Sender: TObject);
var Ind : Integer;
begin
   if not FileExists(DiretorioEXE+cArquivoAtalhos) then
     Exit;
   if ListBoxAtalhos.SelCount = 1 then
     ExcluiAtalho(ListBoxAtalhos.ItemIndex)
   else
   begin
     for Ind := ListaAtalhos.Count-1 downto 0 do
       if ListBoxAtalhos.Selected[Ind] then
         ExcluiAtalho(Ind);
   end;
end;

procedure TF_Principal.MenuItem4Click(Sender: TObject);
var Ind : Integer;
begin
  ListaAtalhos.Clear;
  ListaAtalhos.SaveToFile(DiretorioEXE+cArquivoAtalhos);
  for Ind := 0 to ListBoxAtalhos.Items.Count-1 do
    TAtalho(ListBoxAtalhos.Items.Objects[Ind]).Free;
  ListBoxAtalhos.Items.Clear;
end;

procedure TF_Principal.Ed_PesquisaChange(Sender: TObject);
begin
  MemoAtivo.CaretX := 0;
  MemoAtivo.CaretY := 0;
  Localizar(Ed_Pesquisa.Text,'',False,False,CheckBox1.Checked);
end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
   if not SempreVisivelClick then
   begin
     IdAba := 0;
     NovaAba(False,'',nil);
     MemoAtivo.SetFocus;
     {}
     CbBox_Fontes.Items := Screen.Fonts;
     CbBox_Fontes.ItemIndex := CbBox_Fontes.Items.IndexOf(MemoAtivo.Font.Name);
     {}
     VerificaArquivosTexto;
     {}
     ToolBar1.Visible := MenuExibirFerramentas.Checked;
     ToolBar2.Visible := MenuBarraFormatacao.Checked;
     Bt_CorLinha.Enabled := MenuDestacarLinha.Checked;
     {}
     if (ParamStr(1) <> '') and FileExists(ParamStr(1)) then
       AbreArquivo(ParamStr(1),False);
     {}
   end;
   StatusBar1.Panels[3].Style := psOwnerDraw;
   BarraProgresso.Parent := StatusBar1;
   SetWindowLong(BarraProgresso.Handle, GWL_EXSTYLE,GetWindowLong(BarraProgresso.Handle,GWL_EXSTYLE) - WS_EX_STATICEDGE);   
end;

procedure TF_Principal.MenuExcluirLinhaClick(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
  begin
    try
      MemoAtivo.Lines[MemoAtivo.CaretY-1] := '';
    except
    end;
  end;
end;

procedure TF_Principal.SpeedButton14Click(Sender: TObject);
begin
  Ed_PesquisaChange(Sender);
end;

procedure TF_Principal.Calendrio1Click(Sender: TObject);
begin
  F_Calendario := nil;
  try
    F_Calendario := TF_Calendario.Create(Application);
    F_Calendario.ShowModal;
  finally
    F_Calendario.Free;
  end;
end;

procedure TF_Principal.Contedo1Click(Sender: TObject);
begin
  if FileExists('HELP.hlp') then
    Application.HelpCommand(11,0)
  else
    DugMensagem('Arquivo de ajuda não encontrado!',cTituloMensagem,48);
end;

procedure TF_Principal.FormIrParaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if MenuPermitirEsc.Checked then
    if Key = 27 then
      TForm(Sender).Close;
end;

procedure TF_Principal.Nova2Click(Sender: TObject);
begin
  VerificaArquivosTexto;
  try
    F_TarefasAgendadas := TF_TarefasAgendadas.Create(Self);
    F_TarefasAgendadas.ShowModal;
  finally
    F_TarefasAgendadas.Free;
  end;
end;

procedure TF_Principal.Novatarefa1Click(Sender: TObject);
begin
  VerificaArquivosTexto;
  try
    F_NovaTarefa := TF_NovaTarefa.Create(Self);
    F_NovaTarefa.DateTimePicker1.Date := Date;
    F_NovaTarefa.ShowModal;
  finally
    F_NovaTarefa.Free;
  end;
end;

procedure TF_Principal.MenuAtalhosClick(Sender: TObject);
begin
   Panel2.Visible := False;
   Panel3.Visible := False;
   Panel7.Visible := False;
   Panel11.Visible := False;
   Panel14.Visible :=  MenuAtalhos.Checked;
   MenuAbasFechadas.Checked := False;
   MenuDirPadrao.Checked := False;
   MenuConfigCores.Checked := False;
   MenuArquivos.Checked := False;
   CriaSplitter(alRight);
end;

procedure TF_Principal.Abrirnestaaba1Click(Sender: TObject);
begin
  if FileListBox_Arquivos.FileName <> '' then
  begin
    IniciaBarraDeProgresso(BarraProgresso,0);
    AbreArquivo(FileListBox_Arquivos.FileName,False);
    ResetaBarraDeProgresso;
  end;
end;

procedure TF_Principal.Abriremnovaaba1Click(Sender: TObject);
begin
  if FileListBox_Arquivos.FileName <> '' then
     FileListBox_ArquivosDblClick(Sender);
end;

procedure TF_Principal.Abrirtodososarquivos1Click(Sender: TObject);
var vInd : Integer;
begin
  PnCarga.Caption := 'Abrindo abas...Aguarde...';
  PnCarga.Show;
  PnCarga.Update;
  IniciaBarraDeProgresso(BarraProgresso,FileListBox_Arquivos.Count);
  for vInd := 0 to FileListBox_Arquivos.Count-1 do
  begin
    AbreArquivo(FileListBox_Arquivos.Directory+'\'+FileListBox_Arquivos.Items[vInd]);
    BarraProgresso.Position := vInd;
  end;
  PnCarga.Hide;
  ResetaBarraDeProgresso;
end;

procedure TF_Principal.Data1Click(Sender: TObject);
begin
 if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := DateTimeToStr(Now);
end;

procedure TF_Principal.Somentedata1Click(Sender: TObject);
begin
 if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := DateToStr(Now);
end;

procedure TF_Principal.Somentehora1Click(Sender: TObject);
begin
 if not MemoAtivo.ReadOnly then
   MemoAtivo.SelText := TimeToStr(Now);
end;

procedure TF_Principal.Irpara2Click(Sender: TObject);
var Form : TForm;
    Botao : TBitBtn;
begin
  Form := nil;
  Botao := nil;
  try
    Form := TForm.Create(Self);
    EditLinha := TLabeledEdit.Create(Form);
    EditColuna := TLabeledEdit.Create(Form);
    Botao := TBitBtn.Create(Form);
    {}
    EditLinha.Parent := Form;
    EditLinha.Left := 10;
    EditLinha.Top := 20;
    EditLinha.OnKeyPress := EditIrParaKeyPress;
    EditLinha.EditLabel.Caption := 'Linha';
    EditLinha.Width := 60;
    EditLinha.Text := '1';
    EditLinha.OnChange := EditIrParaChange;
    EditLinha.MaxLength := 5;
    {}
    EditColuna.Parent := Form;
    EditColuna.OnKeyPress := EditIrParaKeyPress;
    EditColuna.EditLabel.Caption := 'Coluna';
    EditColuna.Left := 80;
    EditColuna.Top := 20;
    EditColuna.Width := 60;
    EditColuna.Text := '1';
    EditColuna.OnChange := EditIrParaChange;
    EditColuna.MaxLength := 5;
    {}
    Botao.OnClick := BotaoIrParaClick;
    Botao.Parent := Form;
    Botao.Caption := 'OK';
    Botao.Left := 145;
    Botao.Height := 24;
    Botao.Top := 20;
    Botao.Kind := bkOK;
    Botao.Glyph := nil;
    Botao.Height := 22;
    {}
    Form.Position := poMainFormCenter;
    Form.OnKeyDown := FormIrParaKeyDown;
    Form.KeyPreview := True;
    Form.Caption := 'Ir para...';
    Form.AutoSize := True;
    Form.BorderIcons := [biSystemMenu];
    Form.ShowModal;
  finally
    Botao.Free;
    EditColuna.Free;
    EditLinha.Free;
    Form.Free;
  end;
  StatusBar1.Panels[2].Text := 'Linha:'+IntToStr(MemoAtivo.CaretY)+
                               ': Coluna:'+IntToStr(MemoAtivo.CaretX);
end;

procedure TF_Principal.PopupMenu4Popup(Sender: TObject);
var vInd : Integer;
begin
   for vInd := 0 to PopupMenu4.Items.Count-1 do
      PopupMenu4.Items[vInd].Enabled := (FileListBox_Arquivos.Items.Count > 0);

   PopupMenu4.Items[4].Enabled := (PageControl_Principal.PageCount > 0) and (FileListBox_Arquivos.Items.Count > 0);
end;

procedure TF_Principal.PopupMenu1Popup(Sender: TObject);
begin
   PopupMenu1.Items[1].Caption := 'Fechar "'+PageControl_Principal.ActivePage.Caption+'"';
end;

procedure TF_Principal.BitBtn3Click(Sender: TObject);
var vInd : Integer;
begin
   PnCarga.Caption := 'Abrindo abas...Aguarde...';
   PnCarga.Show;
   PnCarga.Update;
   IniciaBarraDeProgresso(BarraProgresso,ListBoxAbas.Items.Count);
   for vInd := 0 to ListBoxAbas.Items.Count-1 do
   begin
     ReabreAbas(0,True);
     BarraProgresso.Position := BarraProgresso.Position + 1;
   end;
   ResetaBarraDeProgresso;
   BitBtn3.Enabled := False;
   PnCarga.Hide;
end;

procedure TF_Principal.ListBoxAbasKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #13 : Abrir1.Click;
  end;
end;

procedure TF_Principal.Selecionartudo3Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to ListBoxAbas.Items.Count-1 do
    ListBoxAbas.Selected[vInd] := True;
end;

procedure TF_Principal.Noselecionarnenhuma1Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to ListBoxAbas.Items.Count-1 do
    ListBoxAbas.Selected[vInd] := False;
end;

procedure TF_Principal.Abrirarquivosselecionados1Click(Sender: TObject);
var Ind : Integer;
begin
   PnCarga.Caption := 'Abrindo abas...Aguarde...';
   PnCarga.Show;
   PnCarga.Update;
   IniciaBarraDeProgresso(BarraProgresso,FileListBox_Arquivos.Count);
   for Ind := 0 to FileListBox_Arquivos.Count-1 do
     if FileListBox_Arquivos.Selected[Ind] then
     begin
       AbreArquivo(FileListBox_Arquivos.Directory+'\'+FileListBox_Arquivos.Items[Ind]);
       BarraProgresso.Position := Ind;
     end;
   PnCarga.Hide;
   ResetaBarraDeProgresso;
end;

procedure TF_Principal.Inverterseleo1Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to ListBoxAbas.Items.Count-1 do
    ListBoxAbas.Selected[vInd] := not ListBoxAbas.Selected[vInd];
end;
{}
procedure TF_Principal.Selecionartudo4Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to FileListBox_Arquivos.Items.Count-1 do
    FileListBox_Arquivos.Selected[vInd] := True;
end;
{}
procedure TF_Principal.Inverterseleo2Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to FileListBox_Arquivos.Items.Count-1 do
    FileListBox_Arquivos.Selected[vInd] := not FileListBox_Arquivos.Selected[vInd];
end;
{}
procedure TF_Principal.Noselecionarnenhum1Click(Sender: TObject);
var vInd : Integer;
begin
  for vInd := 0 to FileListBox_Arquivos.Items.Count-1 do
    FileListBox_Arquivos.Selected[vInd] := False;
end;

procedure TF_Principal.FileListBox_ArquivosKeyPress(Sender: TObject; var Key: Char);
begin
   case key of
     #13: Abrirarquivosselecionados1.Click;
   end;
end;

procedure TF_Principal.ListBoxAtalhosKeyPress(Sender: TObject; var Key: Char);
var Ind : Integer;
begin
  case key of
    #13 : begin
          if ListBoxAtalhos.SelCount > 1 then
          begin
           if DugMensagem('Abrir todos os programas selecionados?',cTituloMensagem,36) then
             for Ind := 0 to ListBoxAtalhos.Items.Count-1 do
              if ListBoxAtalhos.Selected[Ind] then
                WinExec(PChar(TAtalho(ListBoxAtalhos.Items.Objects[Ind]).Path),1);
          end
          else
             ListBoxAtalhosDblClick(Sender);
    end;
  end;
end;

procedure TF_Principal.PageControl_ConfiguracoesChange(Sender: TObject);
begin
   {case TPageControl(Sender).TabIndex of
     0: Ed_StringPas.Font.Color := SynDelphi.StringAttri.Foreground;
   end; }
   //TPageControl(Sender).SetFocus;
end;

procedure TF_Principal.MenuExibirClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('barra_ferramentas',BoolToStr(TMenuItem(Sender).Checked,True));
  ToolBar1.Visible := MenuExibirFerramentas.Checked;
end;

procedure TF_Principal.Irpararaz1Click(Sender: TObject);
begin
  DirectoryListBox_DiretorioPadrao.Directory := DirectoryListBox_DiretorioPadrao.Items[0];
  DirectoryListBox_DiretorioPadrao.Selected[0] := True;
end;

procedure TF_Principal.DriveComboBox_DiretorioPadraoChange(Sender: TObject);
begin
 try
    DirectoryListBox_DiretorioPadrao.Drive := DriveComboBox_DiretorioPadrao.Drive;
 except
    Application.MessageBox('Não foi possível abrir esta unidade!',cTituloMensagem,16); 
 end;
end;

procedure TF_Principal.DriveComboBox_ArquivosChange(Sender: TObject);
begin
  try
    DirectoryListBox_Arquivos.Drive := DriveComboBox_Arquivos.Drive;
  except
    Application.MessageBox('Não foi possível abrir esta unidade!',cTituloMensagem,16);
  end;
end;

procedure TF_Principal.InsereUltimosArquivosAbertos(pNomeArquivo: String);
var vReg : TRegIniFile;
    vInd : Integer;
begin
   vReg := TRegIniFile.Create('UltimosArquivosDugPad');
   try
     for vInd := 1 to 15 do
       if LowerCase(vReg.ReadString('arquivos',IntToStr(vInd),'')) = LowerCase(pNomeArquivo) then
          Exit;

     for vInd := 1 to 15 do
       vReg.WriteString('arquivos',IntToStr(vInd),vReg.ReadString('arquivos',IntToStr(vInd+1),''));

     vReg.WriteString('arquivos','15',pNomeArquivo);
   finally
     vReg.Free
   end;
end;

function TF_Principal.LerUltimosArquivosAbertos : Boolean;
var vReg : TRegIniFile;
    vMenuItemP : TMenuItem;
    vMenuItemM : TMenuItem;
    vInd : Integer;
begin
   Result := False;
   vReg := TRegIniFile.Create('UltimosArquivosDugPad');
   try
      for vInd := 4 to PopUltimosArquivos.Items.Count-1 do
         PopUltimosArquivos.Items.Delete(4);
      for vInd := 4 to MenuReabrir.Count-1  do
         MenuReabrir.Delete(4);
      for vInd := 1 to 15 do
      begin
        if not FileExists(vReg.ReadString('arquivos',IntToStr(vInd),'')) then
            vReg.DeleteKey('arquivos',IntToStr(vInd))
        else
        if vReg.ReadString('arquivos',IntToStr(vInd),'') <> '' then
          if FileExists(vReg.ReadString('arquivos',IntToStr(vInd),'')) then
          begin
             vMenuItemP := TMenuItem.Create(PopUltimosArquivos);
             vMenuItemP.Caption := vReg.ReadString('arquivos',IntToStr(vInd),'');
             vMenuItemP.OnClick := PopUltimosArquivoItemClick;
             PopUltimosArquivos.Items.Add(vMenuItemP);
             vMenuItemM := TMenuItem.Create(MainMenu1);
             vMenuItemM.Caption := vReg.ReadString('arquivos',IntToStr(vInd),'');
             vMenuItemM.OnClick := PopUltimosArquivoItemClick;
             MenuReabrir.Add(vMenuItemM);
             Result := True;
          end;
      end;
   finally
      vReg.Free
   end;
end;

procedure TF_Principal.PopUltimosArquivoItemClick(Sender: TObject);
begin
    AbreArquivo(TmenuItem(Sender).Caption);
end;


procedure TF_Principal.AbreArquivo(pNomeArquivo : String; CriaNova : Boolean);
var vConteudoAnsi : String;
begin
   if FileExists(pNomeArquivo) then
   begin
     if CriaNova then
       NovaAba(True,'',nil);
     VerificaExtensaoArquivo(pNomeArquivo);
     MemoAtivo.Lines.LoadFromFile(pNomeArquivo);
     vConteudoAnsi := Utf8ToAnsi(MemoAtivo.Text);
     if vConteudoAnsi <> '' then
       MemoAtivo.Text := vConteudoAnsi;
     PageControl_Principal.ActivePage.Caption := ExtractFileName(pNomeArquivo);
     //Passando o caminho que vai ser usado para salvar
     PageControl_Principal.ActivePage.Hint := pNomeArquivo;
     //Passando parametro. TAG = 1, vai salvar direto
     PageControl_Principal.ActivePage.Tag  := 1;
     MemoAtivo.Hint := PageControl_Principal.ActivePage.Caption;
     MemoEnter(MemoAtivo);
     InsereUltimosArquivosAbertos(pNomeArquivo);
   end
   else
     DugMensagem('Arquivo não encontrado!','DugPad',48)
end;

procedure TF_Principal.Limparlista2Click(Sender: TObject);
var vReg : TRegIniFile;
    vInd : Integer;
begin
   if DugMensagem('Apagar histórico de arquivos abertos?',cTituloMensagem,36) then
   begin
     vReg := TRegIniFile.Create('UltimosArquivosDugPad');
     try
       for vInd := 1 to 15 do
         vReg.DeleteKey('arquivos',IntToStr(vInd));
     finally
       vReg.Free
     end;
   end;
end;

procedure TF_Principal.PopUltimosArquivosPopup(Sender: TObject);
var IsEnabled : Boolean;
begin
   IsEnabled := LerUltimosArquivosAbertos;
   PopUltimosArquivos.Items[0].Enabled := IsEnabled;
   PopUltimosArquivos.Items[1].Enabled := IsEnabled;
   PopUltimosArquivos.Items[2].Enabled := IsEnabled;
end;

procedure TF_Principal.SalvaArquivo;
begin
  Salvar.InitialDir := DiretorioPadrao;
  Salvar.FileName := PageControl_Principal.ActivePage.Hint;
  if ((PageControl_Principal.ActivePage.Tag = 1) and FileExists(PageControl_Principal.ActivePage.Hint)) then
     MemoAtivo.Lines.SaveToFile(Salvar.FileName)
  else
  if Salvar.Execute then
  begin
    if (FileExists(Salvar.FileName)) then
    begin
       if DugMensagem('O arquivo "'+ExtractFileName(Salvar.FileName)+'" já existe!'+#13+'Deseja substituí-lo?',cTituloMensagem,36) then
       begin
        MemoAtivo.Lines.SaveToFile(Salvar.FileName);
        PageControl_Principal.ActivePage.Tag := 1;
        PageControl_Principal.ActivePage.Hint := Salvar.FileName;
       end
       else
       begin
          PageControl_Principal.ActivePage.Tag := TagSalva;
          Exit;
       end;
    end
    else
    begin
      MemoAtivo.Lines.SaveToFile(Salvar.FileName);
      PageControl_Principal.ActivePage.Tag := 1;
      PageControl_Principal.ActivePage.Hint := Salvar.FileName;
    end;
  end
  else
  begin
     PageControl_Principal.ActivePage.Tag := TagSalva;
     Exit;
  end;
  MemoAtivo.Tag := 0;
  PageControl_Principal.ActivePage.Caption := ExtractFileName(Salvar.FileName);
  MemoAtivo.Hint := PageControl_Principal.ActivePage.Caption;
  StatusBar1.Panels[0].Text := 'Salvou!'
end;

procedure TF_Principal.MenuNovoClick(Sender: TObject);
begin
  WinExec(PChar(Application.ExeName),0);
end;

procedure TF_Principal.Interface1Click(Sender: TObject);
begin
  NovaAba(False,cPadraoInterfaceJava,SynJava);
end;

procedure TF_Principal.Procedure2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cProcedure;
end;

procedure TF_Principal.Mtodopblico1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMetodoPublico;
end;

procedure TF_Principal.Mtodoprivado1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMetodoPrivado;
end;

procedure TF_Principal.Novoobjeto1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cNovoObjeto;
end;

procedure TF_Principal.MenuOrdemClick(Sender: TObject);
begin
  OrdenaAbas;
end;

procedure TF_Principal.Abrirtodoas1Click(Sender: TObject);
var vInd : Integer;
    vReg : TRegIniFile;
begin
  PnCarga.Caption := 'Abrindo abas...Aguarde...';
  PnCarga.Show;
  PnCarga.Update;
  IniciaBarraDeProgresso(BarraProgresso,PopUltimosArquivos.Items.Count-4);
  for vInd := 4 to PopUltimosArquivos.Items.Count-1 do
  begin
    AbreArquivo(PopUltimosArquivos.Items[vInd].Caption);
    BarraProgresso.Position := BarraProgresso.Position + 1;
  end;
  if TMenuItem(sender).Tag = 1 then
  begin
    vReg := TRegIniFile.Create('UltimosArquivosDugPad');
    try
      for vInd := 1 to 15 do
       vReg.DeleteKey('arquivos',IntToStr(vInd));
    finally
       vReg.Free
    end;
  end;
  PnCarga.Hide;
  ResetaBarraDeProgresso;
end;

procedure TF_Principal.Comentrio2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cComentario;
end;
procedure TF_Principal.ryExcept1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cTryExcept;
end;
procedure TF_Principal.ryFinally1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cTryFinally;
end;
procedure TF_Principal.IfThenElse1Click(Sender: TObject);
begin
   MemoAtivo.SelText := cIfPascal;
end;
procedure TF_Principal.Fortodo1Click(Sender: TObject);
begin
   MemoAtivo.SelText := cForToDo;
end;
procedure TF_Principal.whiledo1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cWhileDo;
end;
procedure TF_Principal.Repeatuntil1Click(Sender: TObject);
begin
 MemoAtivo.SelText := cRepeat;
end;
procedure TF_Principal.Query1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cQuery;
end;
procedure TF_Principal.Caseof1Click(Sender: TObject);
begin
   MemoAtivo.SelText := cCaseof;
end;
procedure TF_Principal.Switchcase1Click(Sender: TObject);
begin
    MemoAtivo.SelText := cSwitchCase;
end;
procedure TF_Principal.while1Click(Sender: TObject);
begin
    MemoAtivo.SelText := cWhileJava;
end;
procedure TF_Principal.Ifelse1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cIfElseJava;
end;
procedure TF_Principal.For1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cForJava;
end;
procedure TF_Principal.MessageBox1Click(Sender: TObject);
begin
   MemoAtivo.SelText := cMessageBox;
end;
procedure TF_Principal.Confirmao1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMessageDlgConfirma;
end;
procedure TF_Principal.Erro1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMessageDlgErro;
end;
procedure TF_Principal.Informao1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMessageDlgInformacao;
end;
procedure TF_Principal.Ateno1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cMessageDlgAtencao;
end;

procedure TF_Principal.Duplicartexto1Click(Sender: TObject);
begin
  NovaAba(False,MemoAtivo.Text,nil);
end;

procedure TF_Principal.Duplicartextocomsintaxedalinguagem1Click(Sender: TObject);
begin
  NovaAba(False,MemoAtivo.Text,MemoAtivo.Highlighter);
end;

procedure TF_Principal.CbBox_FontesKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TF_Principal.CbBox_FontesChange(Sender: TObject);
begin
  if TComboBox(Sender).Text <> '' then
    MemoAtivo.Font.Name := TComboBox(Sender).Text;
end;

procedure TF_Principal.CbBox_TamFonteChange(Sender: TObject);
begin
  if TComboBox(Sender).Text <> '' then
    MemoAtivo.Font.Size := StrToInt(TComboBox(Sender).Text);
end;

procedure TF_Principal.MenuBarraFormatacaoClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('barra_formatacao',BoolToStr(TMenuItem(Sender).Checked,True));
  ToolBar2.Visible := MenuBarraFormatacao.Checked;
end;

procedure TF_Principal.PopupMenu2Popup(Sender: TObject);
begin
  PopReadOnly.Checked := MemoAtivo.ReadOnly;
  MenuExcluirLinha.Enabled := (Length(Trim(MemoAtivo.Lines[MemoAtivo.CaretY-1]))) > 0;
end;

procedure TF_Principal.CbBox_TamFonteKeyPress(Sender: TObject; var Key: Char);
begin
   key := #0;
end;

procedure TF_Principal.MenuPHPClick(Sender: TObject);
begin
  TrocaLinguagem(SynPHP,clWhite);
end;

procedure TF_Principal.MenuVBClick(Sender: TObject);
begin
  TrocaLinguagem(SynVB,clWhite);
end;

procedure TF_Principal.TiraFotoJanela;
var
  Imagem : TBitmap;
  Sc, Ds : TRect;
  Dc : THandle;
  Cn : TCanvas;
  NomeImagem : String;
  ImagemJPEG : TJPEGImage;
  Mensagem : String;
begin
 Imagem := nil;
 ImagemJPEG := nil;
 try
   Imagem := TBitmap.Create;
   GetWindowRect(GetForegroundWindow,Sc);
   Ds.Top := 0;
   Ds.Left := 0;
   Ds.Right := Sc.Right - Sc.Left;
   Ds.Bottom := Sc.Bottom - Sc.Top;
   Imagem.Height := Ds.Bottom;
   Imagem.Width := Ds.Right;
   Dc := GetDC(0);
   Cn := TCanvas.create;
   Cn.Handle := Dc;
   Imagem.Canvas.CopyRect(Ds,Cn,Sc);
   Cn.Free;

   NomeImagem := DiretorioPadrao+'\'+FormatDateTime('ddmmyyyy_hhnnss',Now);
   Imagem.SaveToFile(NomeImagem + '.bmp');

   {transformando imagem em JPEG}
   Imagem.LoadFromFile(NomeImagem + '.bmp');
   try
     ImagemJPEG := TJPEGImage.Create;
     ImagemJPEG.CompressionQuality := 100;
     ImagemJPEG.Assign(Imagem);
     ImagemJPEG.SaveToFile(ChangeFileExt(NomeImagem,'.jpg'));
     ImagemJPEG.SaveToFile(NomeImagem + '.jpg');
   except
     DugMensagem('Erro ao salvar imagem! Tente novamente.',cTituloMensagem,48);
     Exit;
   end;
   {imagem transformada em JPEG}

   if FileExists(NomeImagem + '.bmp') then
      DeleteFile(NomeImagem + '.bmp');

   Mensagem := 'Imagem gravada em ' + ExtractFilePath(NomeImagem)  + #13;
   Mensagem := Mensagem + 'Nome da imagem: ' + ExtractFileName(NomeImagem)+'.jpg' + #13+#13 ;
   Mensagem := Mensagem + 'Deseja visualizá-la agora?';
   if DugMensagem(PChar(Mensagem),cTituloMensagem,36) then
     ShellExecute(Handle, 'open',PChar(NomeImagem+'.jpg'), nil, nil, SW_SHOWMAXIMIZED);
 finally
   ImagemJPEG.Free;
   Imagem.Free;
 end;
end;

procedure TF_Principal.MenuShellClick(Sender: TObject);
begin
  if ShellExecute(Handle, 'open',PChar('cmd.exe'), nil, nil, SW_SHOWDEFAULT) <> 42 then
    if ShellExecute(Handle, 'open',PChar('command.com'), nil, nil, SW_SHOWDEFAULT) <> 42 then
      DugMensagem('O prompt do sistema não pôde ser aberto!',cTituloMensagem,48);
end;

function TF_Principal.TamanhoArquivoBytes(pArquivo : String): Integer;
var vArquivo : TFileStream;
begin
  vArquivo := nil;
  if not FileExists(pArquivo) then
      Result := 0
  else
  try
    vArquivo := TFileStream.Create(pArquivo,fmOpenRead or fmShareExclusive);
    Result := vArquivo.Size;
  finally
    vArquivo.Free;
  end;
end;

function TF_Principal.MemoAtivo: TSynMemo;
begin
  Result := TSynMemo(PageControl_Principal.ActivePage.Components[0]);
end;

procedure TF_Principal.ToolButton13Click(Sender: TObject);
begin
  TiraFotoJanela;
end;

function TF_Principal.TamanhoArquivoKb (pArquivo : String) : Real;
begin
  Result := StrToFloaT(FormatFloat('0.00',TamanhoArquivoBytes(pArquivo)/1024));
  if Result = 0 then
     Result := StrToFloaT(FormatFloat('0.000',TamanhoArquivoBytes(pArquivo)/1024));
  if Result = 0 then
     Result := StrToFloaT(FormatFloat('0.0000',TamanhoArquivoBytes(pArquivo)/1024));
end;

function TF_Principal.TamanhoArquivoMb(pArquivo: String): Real;
begin
   Result := StrToFloaT(FormatFloat('0.00',TamanhoArquivoKb(pArquivo)/1024));
   if Result = 0 then
      Result := StrToFloaT(FormatFloat('0.000',TamanhoArquivoKb(pArquivo)/1024));
   if Result = 0 then
      Result := StrToFloaT(FormatFloat('0.0000',TamanhoArquivoKb(pArquivo)/1024));
end;

function TF_Principal.TamanhoArquivoBits(pArquivo: String): Integer;
begin
   Result := TamanhoArquivoBytes(pArquivo)*8;
end;

procedure TF_Principal.MenuFortranClick(Sender: TObject);
begin
   TrocaLinguagem(SynForTran,clWhite);
end;

procedure TF_Principal.MenuPythonClick(Sender: TObject);
begin
  TrocaLinguagem(SynPython,clWhite);
end;

procedure TF_Principal.MenuFoxProClick(Sender: TObject);
begin
   TrocaLinguagem(SynFoxPro,clWhite);
end;

function TF_Principal.TextoLinguagem: String;
begin    
  if MemoAtivo.Highlighter <> nil then
    Result := 'Linguagem: ' + MemoAtivo.Highlighter.GetLanguageName
  else
    Result := 'Sem linguagem';
end;

procedure TF_Principal.TrocaLinguagem(pHighlighter : TSynCustomHighlighter; pCor : TColor);
begin
   MemoAtivo.Highlighter := pHighlighter;
   MemoAtivo.Color := pCor;
   AutoComplete(MemoAtivo);
   PageControl_Principal.ActivePage.ImageIndex := 0;
   if pHighlighter <> nil then
     PageControl_Principal.ActivePage.ImageIndex := pHighlighter.Tag;

   HabilitaCheckButtons(MemoAtivo);
end;

procedure TF_Principal.CriaRascunho(Sintaxe : Boolean);
begin
   if not Assigned(FormRascunho) then
   begin
     FormRascunho := TForm.Create(Self);
     FormRascunho.Position := poMainFormCenter;
     FormRascunho.Height := Self.Height - 150;
     FormRascunho.Width := Self.Width - 200;
     FormRascunho.Caption := 'Rascunho...';
   end;
   if not Assigned(MemoRascunho) then
   begin
     MemoRascunho := TSynMemo.Create(Self);
     MemoRascunho.Parent := FormRascunho;
     MemoRascunho.Align := alClient;
     MemoRascunho.ScrollBars := ssVertical;
     MemoRascunho.WordWrap := True;
   end;
   MemoRascunho.Text := MemoAtivo.Text;
   MemoRascunho.Font := MemoAtivo.Font;
   if Sintaxe then
   begin
     MemoRascunho.Highlighter := MemoAtivo.Highlighter;
     MemoRascunho.Color := MemoAtivo.Color;
   end;
   FormRascunho.Show;
end;

procedure TF_Principal.ToolButton16Click(Sender: TObject);
begin
  try
    F_InfoTexto := TF_InfoTexto.Create(Self);
    F_InfoTexto.MostraInfoArquivo(PageControl_Principal.ActivePage.Caption,
                                  PageControl_Principal.ActivePage.Hint,
                                  FloatToStr(TamanhoArquivoKb(PageControl_Principal.ActivePage.Hint)),
                                  IntToStr(MemoAtivo.Lines.Count),
                                  IntToStr(Length(MemoAtivo.Text)));
  finally
    F_InfoTexto.Free;
  end;
end;

procedure TF_Principal.BotaoIrParaClick(Sender : Tobject);
begin
  F_Principal.MemoAtivo.CaretX := StrToInt(F_Principal.EditColuna.Text);
  F_Principal.MemoAtivo.CaretY := StrToInt(F_Principal.EditLinha.Text);
  F_Principal.MemoAtivo.SetFocus;
end;

procedure TF_Principal.Limpartexto1Click(Sender: TObject);
begin
  MemoAtivo.Lines.Clear;
  MemoChange(nil);
end;

procedure TF_Principal.Rascunho1Click(Sender: TObject);
begin
  CriaRascunho(TComponent(Sender).Tag = 1);
end;

procedure TF_Principal.Bt_NegritoClick(Sender: TObject);
begin
  if TToolButton(Sender).Down then
     MemoAtivo.Font.Style := MemoAtivo.Font.Style + [fsBold]
  else
     MemoAtivo.Font.Style := MemoAtivo.Font.Style - [fsBold]
end;

procedure TF_Principal.Bt_ItalicoClick(Sender: TObject);
begin
  if TToolButton(Sender).Down then
     MemoAtivo.Font.Style := MemoAtivo.Font.Style + [fsItalic]
  else
     MemoAtivo.Font.Style := MemoAtivo.Font.Style - [fsItalic]
end;

procedure TF_Principal.Bt_SublinhadoClick(Sender: TObject);
begin
  if TToolButton(Sender).Down then
     MemoAtivo.Font.Style := MemoAtivo.Font.Style + [fsUnderline]
  else
     MemoAtivo.Font.Style := MemoAtivo.Font.Style - [fsUnderline];
end;

procedure TF_Principal.Bt_StrikeOutClick(Sender: TObject);
begin
  if TToolButton(Sender).Down then
     MemoAtivo.Font.Style := MemoAtivo.Font.Style + [fsStrikeOut]
  else
     MemoAtivo.Font.Style := MemoAtivo.Font.Style - [fsStrikeOut]
end;

procedure TF_Principal.Bt_CorFonteClick(Sender: TObject);
begin
  MemoAtivo.Font.Color := MostraCaixaDeCores('Cor da fonte',MemoAtivo.Font.Color);
  AtualizaCoresSelecao;
end;

procedure TF_Principal.Bt_CorFundoClick(Sender: TObject);
begin
   MemoAtivo.Color := MostraCaixaDeCores('Cor de fundo',MemoAtivo.Color);
   AtualizaCoresSelecao;
end;

function TF_Principal.MostraCaixaDeCores(Titulo : String; CorPadrao : TColor) : TColor;
begin
  try
    F_Cores := TF_Cores.Create(Self);
    Result := F_Cores.MostraCores(Titulo,CorPadrao);
  finally
    F_Cores.Free;
  end;
end;

procedure TF_Principal.Abaixo1Click(Sender: TObject);
begin
  PageControl_Principal.TabPosition := tpBottom;
  PageControl_Principal.MultiLine := False;
end;

procedure TF_Principal.Acima1Click(Sender: TObject);
begin
  PageControl_Principal.TabPosition := tpTop;
  PageControl_Principal.MultiLine := False;
end;

procedure TF_Principal.Primeira2Click(Sender: TObject);
begin
   PageControl_Principal.TabIndex := 0;
end;

procedure TF_Principal.ltima2Click(Sender: TObject);
begin
   PageControl_Principal.TabIndex := PageControl_Principal.PageCount-1;
end;

procedure TF_Principal.Label14Click(Sender: TObject);
begin
  Panel21.Visible := not Panel21.Visible;
  if Panel21.Visible then
    TLabel(Sender).Caption := 'Não filtrar...'
  else
  begin
    TLabel(Sender).Caption := 'Filtrar...';
    FileListBox_Arquivos.Mask := '*.*';
  end;
  FileListBox_Arquivos.Update;
end;

procedure TF_Principal.Java2Click(Sender: TObject);
begin
   NovaAba(False,cPadraoClasseJava,SynJava);
end;

procedure TF_Principal.Gerarclasse1Click(Sender: TObject);
//var vPath : String;
begin
  {vPath := ExtractFilePath(Application.ExeName);
  if ShellExecute(Handle, 'open',PChar(vPath+'\GeradorDeClasses\geradorDeClasses.exe'), nil, nil, SW_SHOWDEFAULT) <> 42 then
    if ShellExecute(Handle, 'open',PChar(vPath+'\geradorDeClasses.exe'), nil, nil, SW_SHOWDEFAULT) <> 42 then
     DugMensagem('O aplicativo para geração de classes não pôde ser aberto!',cTituloMensagem,48);}
end;

procedure TF_Principal.Pascal1Click(Sender: TObject);
begin
   NovaAba(False,cPadraoPascal,SynDelphi);
end;

procedure TF_Principal.SpeedButton1Click(Sender: TObject);
begin
   Panel6.Visible := false;
end;

procedure TF_Principal.Portugol1Click(Sender: TObject);
begin
   TrocaLinguagem(SynPortugol,clWhite);
end;

procedure TF_Principal.SpeedButton13Click(Sender: TObject);
begin
   Panel14.Visible := false;
   MenuAtalhos.Checked := false;
   TimerAtalhos.Enabled := False;
end;

procedure TF_Principal.TimerPesquisaTimer(Sender: TObject);
begin
   Pisca(Ed_Pesquisa);
end;

procedure TF_Principal.Pisca(Edit: TEdit);
begin
   if (Edit.Color = clWhite) then
     Edit.Color := RGB(255,255,150) //clYellow
   else
     Edit.Color := clWhite;
end;

procedure TF_Principal.MemoDropFiles(Sender: TObject; x, y: Integer;
  Arquivo: TStrings);
var Ind : Integer;
begin
  for Ind := 0 to Arquivo.Count-1 do
     AbreArquivo(Trim((Arquivo[Ind])));
end;

procedure TF_Principal.TimerAbasTimer(Sender: TObject);
begin
  Pisca(Edit5);
end;

procedure TF_Principal.BuscaNaLista(Lista: TListBox; Edit : TEdit; Timer : TTimer);
var Ind : Integer;
begin
  Edit.Color := clWhite;
  Timer.Enabled := false;
  if Length(Edit.Text) > 0 then
  begin
    for Ind := 0 to Lista.Items.Count-1 do
       Lista.Selected[Ind] := False;
    for Ind := 0 to Lista.Items.Count-1 do
      if (AnsiCompareText(Edit.Text,Copy(Lista.Items[Ind],0,Length(Edit.Text))) = 0) then
      begin
        Lista.Selected[Ind] := True;
        Break;
      end;
      
    Timer.Enabled := (Lista.SelCount = 0);
  end;
end;

procedure TF_Principal.HabilitaCheckButtons(Memo : TSynMemo);
begin
  if (Bt_CorFonte.Down) and (Memo.Highlighter <> nil) then
    F_Cores.Close;
  Bt_Negrito.Down := (fsBold in Memo.Font.Style);
  Bt_Italico.Down := (fsItalic in Memo.Font.Style);
  Bt_Sublinhado.Down := (fsUnderline in Memo.Font.Style);
  Bt_StrikeOut.Down := (fsStrikeOut in Memo.Font.Style);
  Bt_Negrito.Enabled := (Memo.Highlighter = nil);
  Bt_Italico.Enabled := (Memo.Highlighter = nil);
  Bt_Sublinhado.Enabled := (Memo.Highlighter = nil);
  Bt_StrikeOut.Enabled := (Memo.Highlighter = nil);
  Bt_CorFonte.Enabled := (Memo.Highlighter = nil);
end;

procedure TF_Principal.TimerAtalhosTimer(Sender: TObject);
begin
  Pisca(Edit6);
end;

procedure TF_Principal.EdPesqArquivoChange(Sender: TObject);
begin
  BuscaNaLista(TListBox(FileListBox_Arquivos),TEdit(Sender),TimerArquivos);
end;

procedure TF_Principal.TimerArquivosTimer(Sender: TObject);
begin
  Pisca(EdPesqArquivo);
end;

procedure TF_Principal.EdPesqArquivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    #13: if FileListBox_Arquivos.ItemIndex > -1 then
         begin
           AbreArquivo(FileListBox_Arquivos.FileName);
           EdPesqArquivo.Clear;
         end
         else
           DugMensagem('O arquivo "' + EdPesqArquivo.Text + '" não foi encontrado!',cTituloMensagem,48);
    #27 : EdPesqArquivo.Clear;        
  end;
end;

function TF_Principal.NrCaracteres(Memo: TSynMemo): Integer;
begin
  Result := Length(Trim(Memo.Text));
end;

procedure TF_Principal.ListBoxAbasDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var Cor : TColor;
begin
  if Odd(Index) then
   Cor := clWhite
  else
   Cor := clWhite;

  if not(odSelected in State) then
     TListBox(Control).Canvas.Brush.Color := Cor
  else
  if (odSelected in State) then
   begin
     TListBox(Control).Canvas.Font.Style := [fsBold];
     TListBox(Control).Canvas.Brush.Color := clSilver;
     TListBox(Control).Canvas.Font.Color := clBlack;
   end;
  TListBox(Control).Canvas.TextRect(Rect,Rect.Left+2,Rect.Top,TListBox(Control).Items[Index]);
end;

procedure TF_Principal.Comentrio3Click(Sender: TObject);
begin
  MemoAtivo.SelText := cComentario;
end;

procedure TF_Principal.Function1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cFunction;
end;

procedure TF_Principal.Procedure1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cProcedure;
end;

procedure TF_Principal.Caseof2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cCaseOf;
end;

procedure TF_Principal.Fortodo2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cForToDo;
end;

procedure TF_Principal.Ifthenelse2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cIfThen;
end;

procedure TF_Principal.Repeatuntil2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cRepeat;
end;

procedure TF_Principal.ryexcept2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cTryExcept;
end;

procedure TF_Principal.ryfinally2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cTryFinally;
end;

procedure TF_Principal.Whiledo2Click(Sender: TObject);
begin
  MemoAtivo.SelText := cWhileDo;
end;

procedure TF_Principal.Comentrio1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cComentario;
end;

procedure TF_Principal.ToolButtonTextoPreClick(Sender: TObject);
begin
  if ToolButtonTextoPre.DropdownMenu <> nil then
     ToolButtonTextoPre.CheckMenuDropdown;
end;

procedure TF_Principal.If1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cIfJava;
end;

procedure TF_Principal.Dowhile1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cDoWhileJava;
end;

procedure TF_Principal.Altertable1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cAlterTableAdd;
end;

procedure TF_Principal.Altertabledrop1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cAlterTableDrop;
end;

procedure TF_Principal.Altertablemodify1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cAlterTableModify;
end;

procedure TF_Principal.Createtable1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cCreateTable;
end;

procedure TF_Principal.Delete1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cDeleteFrom;
end;

procedure TF_Principal.Insert1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cInsert;
end;

procedure TF_Principal.Select1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cSelect;
end;

procedure TF_Principal.Update1Click(Sender: TObject);
begin
  MemoAtivo.SelText := cUpdate;
end;

procedure TF_Principal.CriaSplitter(Alinhamento : TAlign);
begin
  if Assigned(Splitter) then
    Splitter.Free;
  Splitter := TSplitter.Create(Self);
  Splitter.Parent := Self;
  Splitter.Align := Alinhamento;
  Splitter.MinSize := 200;
  Splitter.AutoSnap := False;
end;

procedure TF_Principal.EscreveConfiguracaoDug(Descricao: String;
  Valor: String);
var ConfiguracaoDug : TIniFile;
begin
  try
   ConfiguracaoDug := TIniFile.Create(DiretorioEXE+cArquivoConfiguracao);
   ConfiguracaoDug.WriteString(cConfiguracaoDugPad,Descricao,Valor);
  finally
   ConfiguracaoDug.Free;
  end;
end;

procedure TF_Principal.LeConfiguracaoDug;
var ConfiguracaoDug : TIniFile;
begin
  try
    ConfiguracaoDug := TIniFile.Create(DiretorioEXE+cArquivoConfiguracao);
    DiretorioPadrao := ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'diretorio_padrao','');
    if not DirectoryExists(DiretorioPadrao) then
    begin
      DiretorioPadrao := ExtractFilePath(Application.ExeName);
      ConfiguracaoDug.WriteString(cConfiguracaoDugPad,'diretorio_padrao',DiretorioPadrao);
    end;
    //
    MenuExibirFerramentas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'barra_ferramentas',''),False);
    MenuExibirBarra.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'barra_status',''),False);
    MenuSempreVisivel.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sempre_visivel',''),False);
    MenuBarraFormatacao.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'barra_formatacao',''),False);
    MenuMostrarTarefas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'mostrar_tarefas_inicio',''),False);
    MenuPergunta.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'perguntar_fechar',''),False);
    MenuPerguntaTodas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'perguntar_fechar_todas',''),False);
    MenuPermitirEsc.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'permitir_fechar_esc',''),False);
    MenuMostrarMargem.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'mostrar_margem',''),False);
    MenuQuebraLinha.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'quebra_linha',''),False);
    MenuNumLinhas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'mostrar_linhas',''),False);
    MenuDestacarLinha.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'destacar_linha',''),False);
    MenuManterAbas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'manter_abas_ao_fechar',''),False);
    //
    CheckBox_NegritoIdentificadorPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_pascal',''),False);
    CheckBox_ItalicoIdentificadorPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_pascal',''),False);
    CheckBox_SublinhadoIdentificadorPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_pascal',''),False);
    CheckBox_NegritoReservadasPas.Checked :=  StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_reservadas_pascal',''),False);
    CheckBox_ItalicoReservadasPas.Checked :=  StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_reservadas_pascal',''),False);
    CheckBox_SublinhadoReservadasPas.Checked :=  StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_reservadas_pascal',''),False);
    CheckBox_NegritoStringPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_string_pascal',''),False);
    CheckBox_ItalicoStringPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_string_pascal',''),False);
    CheckBox_SublinhadoStringPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_string_pascal',''),False);
    CheckBox_NegritoNumeroPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_pascal',''),False);
    CheckBox_ItalicoNumeroPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_pascal',''),False);
    CheckBox_SublinhadoNumeroPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_numero_pascal',''),False);
    CheckBox_NegritoDiretivasPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_diretivas_pascal',''),False);
    CheckBox_ItalicoDiretivasPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_diretivas_pascal',''),False);
    CheckBox_SublinhadoDiretivasPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_diretivas_pascal',''),False);
    CheckBox_NegritoComentarioPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_pascal',''),False);
    CheckBox_ItalicoComentarioPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_pascal',''),False);
    CheckBox_SublinhadoComentarioPas.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_pascal',''),False);
    CheckBox_SublinhadoComentarioC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_c',''),False);
    CheckBox_ItalicoComentarioC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_c',''),False);
    CheckBox_NegritoComentarioC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_c',''),False);
    CheckBox_SublinhadoNumeroC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_numero_c',''),False);
    CheckBox_ItalicoNumeroC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_numero_c',''),False);
    CheckBox_NegritoNumeroC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_c',''),False);
    CheckBox_SublinhadoStringC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_string_c',''),False);
    CheckBox_ItalicoStringC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_string_c',''),False);
    CheckBox_NegritoStringC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_string_c',''),False);
    CheckBox_SublinhadoReservadasC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinho_reservadas_c',''),False);
    CheckBox_ItalicoReservadasC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_reservadas_c',''),False);
    CheckBox_NegritoReservadasC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_reservadas_c',''),False);
    CheckBox_SublinhadoIdentificadorC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_c',''),False);
    CheckBox_ItalicoIdentificadorC.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_c',''),False);
    CheckBox_NegritoIdentificadorC.Checked :=  StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_c',''),False);
    CheckBox_SublinhadoReservadasJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_reservadas_java',''),False);
    CheckBox_ItalicoReservadasJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_reservas_java',''),False);
    CheckBox_NegritoReservadasJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_reservas_java',''),False);
    CheckBox_SubLinhadoIdentificadorJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_java',''),False);
    CheckBox_ItalicoIdentificadorJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_java',''),False);
    CheckBox_NegritoIdentificadorJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_java',''),False);
    CheckBox_SublinhadoStringJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_string_java',''),False);
    CheckBox_ItalicoStringJava .Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_string_java',''),False);
    CheckBox_NegritoStringJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_string_java',''),False);
    CheckBox_SublinhadoNumeroJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_numero_java',''),False);
    CheckBox_ItalicoNumeroJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_numero_java',''),False);
    CheckBox_NegritoNumeroJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_java',''),False);
    CheckBox_SublinhadoDocumentacaoJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_documentacao_java',''),False);
    CheckBox_ItalicoDocumentacaoJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_documentacao_java',''),False);
    CheckBox_NegritoDocumentacaoJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_documentacao_java',''),False);
    CheckBox_SublinhadoComentarioJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_java',''),False);
    CheckBox_ItalicoComentarioJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_java',''),False);
    CheckBox_NegritoComentarioJava.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_java',''),False);
    CheckBox_NegritoIdentificadorSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_sql',''),False);
    CheckBox_ItalicoidentificadorSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_sql',''),False);
    CheckBox_SublinhadoIdentificadorSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_sql',''),False);
    CheckBox_SublinhadoReservadasSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_reservadas_sql',''),False);
    CheckBox_ItalicoReservadasSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_reservadas_sql',''),False);
    CheckBox_NegritoReservadasSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_reservadas_sql',''),False);
    CheckBox_NegritoComentarioSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_sql',''),False);
    CheckBox_NegritoFuncaoSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_funcao_sql',''),False);
    CheckBox_ItalicoFuncaoSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_funcao_sql',''),False);
    CheckBox_SublinhadoFuncaoSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_funcao_sql',''),False);
    CheckBox_ItalicoComentarioSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_sql',''),False);
    CheckBox_SublinhadoComentarioSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_sql',''),False);
    CheckBox_SublinhadoNumeroSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_numero_sql',''),False);
    CheckBox_ItalicoNumeroSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_numero_sql',''),False);
    CheckBox_NegritoNumeroSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_sql',''),False);
    CheckBox_NegritoStringSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_string_sql',''),False);
    CheckBox_ItalicoStringSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_string_sql',''),False);
    CheckBox_SublinhadoStringSQL.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_string_sql',''),False);
    CheckBox_SublinhadoComentarioHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_html',''),False);
    CheckBox_ItalicoComentarioHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_html',''),False);
    CheckBox_NegritoComentarioHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_html',''),False);
    CheckBox_SublinhadoTagHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_tag_html',''),False);
    CheckBox_ItalicoTagHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_tag_html',''),False);
    CheckBox_NegritoTagHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_tag_html',''),False);
    CheckBox_SublinhadoValuesHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_values_html',''),False);
    CheckBox_ItalicoValuesHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_values_html',''),False);
    CheckBox_NegritoValuesHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_values_html',''),False);
    CheckBox_SublinhadoIdentificadorHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_html',''),False);
    CheckBox_ItalicoIdentificadorHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_html',''),False);
    CheckBox_NegritoIdentificadorHTML.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_html',''),False);
    CheckBox_NegritoIdentificadorVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_identificador_vb',''),False);
    CheckBox_ItalicoIdentificadorVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_identificador_vb',''),False);
    CheckBox_SublinhadoIdentificadorVB.Checked :=  StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_identificador_vb',''),False);
    CheckBox_NegritoReservadasVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_reservadas_vb',''),False);
    CheckBox_ItalicoReservadasVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_reservadas_vb',''),False);
    CheckBox_SublinhadoReservadasVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_reservadas_vb',''),False);
    CheckBox_NegritoStringVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_string_vb',''),False);
    CheckBox_ItalicoReservadasVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_string_vb',''),False);
    CheckBox_SublinhadoStringVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_string_vb',''),False);
    CheckBox_NegritoNumeroVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_numero_vb',''),False);
    CheckBox_ItalicoNumeroVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_numero_vb',''),False);
    CheckBox_SublinhadoNumeroVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_numero_vb',''),False);
    CheckBox_NegritoComentarioVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'negrito_comentario_vb',''),False);
    CheckBox_ItalicoComentarioVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'italico_comentario_vb',''),False);
    CheckBox_SublinhadoComentarioVB.Checked := StrToBoolDef(ConfiguracaoDug.ReadString(cConfiguracaoDugPad,'sublinhado_comentario_vb',''),False);
  finally
    ConfiguracaoDug.Free;
  end;
end;

procedure TF_Principal.MenuMostrarTarefasClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('mostrar_tarefas_inicio',BoolToStr(TMenuItem(Sender).Checked,True));
end;

procedure TF_Principal.MenuPerguntaClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('perguntar_fechar',BoolToStr(TMenuItem(Sender).Checked,True));
end;

procedure TF_Principal.MenuPerguntaTodasClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('perguntar_fechar_todas',BoolToStr(TMenuItem(Sender).Checked,True));
end;

procedure TF_Principal.MenuPermitirEscClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('permitir_fechar_esc',BoolToStr(TMenuItem(Sender).Checked,True));
end;

procedure TF_Principal.LeConfiguracaoSintaxe;
var ConfiguracaoDug : TIniFile;
begin
  try
    ConfiguracaoDug := TIniFile.Create(DiretorioEXE+cArquivoConfiguracao);
    SynDelphi.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentariopas',0);
    SynDelphi.StringAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringpas',0);
    SynDelphi.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_identificadorpas',0);
    SynDelphi.DirectiveAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_diretivaspas',0);
    SynDelphi.NumberAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_numeropas',0);
    SynDelphi.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_reservadaspas',0);
    SynJava.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentariojava',0);
    SynJava.StringAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringjava',0);
    SynJava.NumberAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_numerojava',0);
    SynJava.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_identificadorjava',0);
    SynJava.DocumentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_documentacaojava',0);
    SynJava.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_reservadasjava',0);
    SynC.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentarioc',0);
    SynC.StringAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringc',0);
    SynC.NumberAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_numeroc',0);
    SynC.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_identificadorc',0);
    SynC.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_reservadasc',0);
    SynSQL.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_reservadassql',0);
    SynSQL.NumberAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_numerosql',0);
    SynSQL.StringAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringsql',0);
    SynSQL.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentariosql',0);
    SynSQL.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_identificadorsql',0);
    SynSQL.FunctionAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_funcaosql',0);
    SynHTML.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_taghtml',0);
    SynHTML.ValueAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringhtml',0);
    SynHTML.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_textohtml',0);
    SynHTML.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentariohtml',0);
    SynVB.KeyAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_reservadasvb',0);
    SynVB.NumberAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_numerovb',0);
    SynVB.CommentAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_comentariovb',0);
    SynVB.IdentifierAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_identificadorvb',0);
    SynVB.StringAttri.Foreground := ConfiguracaoDug.ReadInteger(cConfiguracaoDugPad,'ed_stringvb',0);
    //
    Ed_ComentarioPas.Font.Color := SynDelphi.CommentAttri.Foreground;
    Ed_StringPas.Font.Color := SynDelphi.StringAttri.Foreground;
    Ed_IdentificadorPas.Font.Color := SynDelphi.IdentifierAttri.Foreground;
    Ed_DiretivasPas.Font.Color := SynDelphi.DirectiveAttri.Foreground;
    Ed_NumeroPas.Font.Color := SynDelphi.NumberAttri.Foreground;
    Ed_ReservadasPas.Font.Color := SynDelphi.KeyAttri.Foreground;
    Ed_ComentarioJava.Font.Color := SynJava.CommentAttri.Foreground;
    Ed_StringJava.Font.Color := SynJava.StringAttri.Foreground;
    Ed_NumeroJava.Font.Color := SynJava.NumberAttri.Foreground;
    Ed_IdentificadorJava.Font.Color := SynJava.IdentifierAttri.Foreground;
    Ed_DocumentacaoJava.Font.Color := SynJava.DocumentAttri.Foreground;
    Ed_ReservadasJava.Font.Color := SynJava.KeyAttri.Foreground;
    Ed_ComentarioC.Font.Color := SynC.CommentAttri.Foreground;
    Ed_StringC.Font.Color := SynC.StringAttri.Foreground;
    Ed_NumeroC.Font.Color := SynC.NumberAttri.Foreground;
    Ed_IdentificadorC.Font.Color := SynC.IdentifierAttri.Foreground;
    Ed_ReservadasC.Font.Color := SynC.KeyAttri.Foreground;
    Ed_ReservadasSQL.Font.Color := SynSQL.KeyAttri.Foreground;
    Ed_NumeroSQL.Font.Color := SynSQL.NumberAttri.Foreground;
    Ed_StringSQL.Font.Color := SynSQL.StringAttri.Foreground;
    Ed_ComentarioSQL.Font.Color := SynSQL.CommentAttri.Foreground;
    Ed_TextoHTML.Font.Color := SynHTML.KeyAttri.Foreground;
    Ed_StringHTML.Font.Color := SynHTML.ValueAttri.Foreground;
    Ed_TextoHTML.Font.Color := SynHTML.IdentifierAttri.Foreground;
    Ed_ComentarioHTML.Font.Color := SynHTML.CommentAttri.Foreground;
    Ed_ReservadasVB.Font.Color := SynVB.KeyAttri.Foreground;
    Ed_NumeroVB.Font.Color := SynVB.NumberAttri.Foreground;
    Ed_ComentarioVB.Font.Color := SynVB.CommentAttri.Foreground;
    Ed_IdentificadorVB.Font.Color := SynVB.IdentifierAttri.Foreground;
    Ed_StringVB.Font.Color := SynVB.StringAttri.Foreground;
    Ed_FuncaoSQL.Font.Color := SynSQL.FunctionAttri.Foreground;
  finally
    ConfiguracaoDug.Free;
  end;
end;

procedure TF_Principal.AdicionaAtalho(Atalho:String; Caminho: String);
var Item : TAtalho;
begin
  Item := TAtalho.Create;
  Item.Atalho := Atalho;
  Item.Path := Caminho;
  ListaAtalhos.Add(Atalho+';'+Caminho);
  ListBoxAtalhos.Items.AddObject(Atalho,Item);
  ListaAtalhos.SaveToFile(DiretorioEXE+cArquivoAtalhos);
end;

procedure TF_Principal.Edit6Change(Sender: TObject);
begin
  BuscaNaLista(ListBoxAtalhos,TEdit(Sender),TimerAtalhos);
end;

procedure TF_Principal.ListBoxAbasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if TListBox(Sender).Items.Count > 0 then
  begin
    if ((Key = Ord('A')) and (ssCtrl in Shift)) then
      TListBox(Sender).SelectAll
    else
    if ((Key = 46) and (ssCtrl in Shift)) and (Sender is TListBox) then
      case TListBox(Sender).Tag of
        1: Limparlista1.Click;
        2: MenuItem4.Click;
      end
    else
    if (Key = 46) and (Sender is TListBox) then
      case TListBox(Sender).Tag of
       1: MenuExcluiAba.Click;
       2: MenuExcluiAtalho.Click;
      end;
    BarraHorizontalListBox(TListBox(Sender));

    if (ssAlt in Shift) then
    begin
      if (Key = VK_DOWN) then
      begin
        if (TListBox(Sender).ItemIndex < TListBox(Sender).Count-1) then
          TListBox(Sender).Items.Exchange(TListBox(Sender).ItemIndex,TListBox(Sender).ItemIndex+1);
      end
      else
      if (Key = VK_UP) then
        if (TListBox(Sender).ItemIndex > 0) then
          TListBox(Sender).Items.Exchange(TListBox(Sender).ItemIndex,TListBox(Sender).ItemIndex-1);
      TListBox(Sender).Selected[TListBox(Sender).ItemIndex] := True;
    end;
  end;
end;

procedure TF_Principal.ResetaBarraDeProgresso;
begin
   BarraProgresso.Position := 0;
end;

procedure TF_Principal.IniciaBarraDeProgresso(var Barra: TProgressBar; MaxBarra : Integer);
begin
  Barra.Position := 0;
  Barra.Max := MaxBarra;
end;

procedure TF_Principal.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 if Panel = StatusBar1.Panels[3] then
 begin
   BarraProgresso.Top := Rect.Top;
   BarraProgresso.Left := Rect.Left;
   BarraProgresso.Width := Rect.Right - Rect.Left - 15;
   BarraProgresso.Height := Rect.Bottom - Rect.Top;
 end;
end;

procedure TF_Principal.Abrirnestaaba2Click(Sender: TObject);
begin
  if ListBoxAbas.Selected[ListBoxAbas.ItemIndex] then
  begin
    IniciaBarraDeProgresso(BarraProgresso,0);
    ReabreAbas(ListBoxAbas.ItemIndex,False);
    ResetaBarraDeProgresso;
  end;
end;

procedure TF_Principal.ListBoxAbasDblClick(Sender: TObject);
begin
  try
   if (ListBoxAbas.Selected[ListBoxAbas.ItemIndex]) then
   begin
     IniciaBarraDeProgresso(BarraProgresso,0);
     ReabreAbas(ListBoxAbas.ItemIndex,True);
     ResetaBarraDeProgresso;
   end;
  except end;
end;

procedure TF_Principal.Bt_AtualizarFileListBoxClick(Sender: TObject);
begin
  FileListBox_Arquivos.Update;
end;

procedure TF_Principal.CheckBox_NegritoPasClick(Sender: TObject);
begin
  if TDugCheckBox(Sender).Checked then
     TDugCheckBox(Sender).Edit.Font.Style :=
                               TDugCheckBox(Sender).Edit.Font.Style + [fsBold]
  else
     TDugCheckBox(Sender).Edit.Font.Style :=
                               TDugCheckBox(Sender).Edit.Font.Style - [fsBold];

  EscreveConfiguracaoDug(TDugCheckBox(Sender).TextoConfig,BoolToStr(TDugCheckBox(Sender).Checked,True));

  if CheckBox_NegritoComentarioPas.Checked then
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style + [fsBold]
  else
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoComentarioC.Checked then
     SynC.CommentAttri.Style := SynC.CommentAttri.Style + [fsBold]
  else
     SynC.CommentAttri.Style := SynC.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoComentarioHTML.Checked then
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style + [fsBold]
  else
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoComentarioJava.Checked then
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style + [fsBold]
  else
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoComentarioSQL.Checked then
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style + [fsBold]
  else
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoComentarioVB.Checked then
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style + [fsBold]
  else
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style - [fsBold];

  if CheckBox_NegritoDiretivasPas.Checked then
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style + [fsBold]
  else
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style - [fsBold];

  if CheckBox_NegritoDocumentacaoJava.Checked then
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style + [fsBold]
  else
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorC.Checked then
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style + [fsBold]
  else
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorHTML.Checked then
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style + [fsBold]
  else
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorJava.Checked then
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style + [fsBold]
  else
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorPas.Checked then
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style + [fsBold]
  else
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorSQL.Checked then
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style + [fsBold]
  else
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoIdentificadorVB.Checked then
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style + [fsBold]
  else
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style - [fsBold];

  if CheckBox_NegritoNumeroC.Checked then
     SynC.NumberAttri.Style := SynC.NumberAttri.Style + [fsBold]
  else
     SynC.NumberAttri.Style := SynC.NumberAttri.Style - [fsBold];

  if CheckBox_NegritoNumeroJava.Checked then
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style + [fsBold]
  else
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style - [fsBold];

  if CheckBox_NegritoNumeroPas.Checked then
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style + [fsBold]
  else
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style - [fsBold];

  if CheckBox_NegritoNumeroSQL.Checked then
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style + [fsBold]
  else
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style - [fsBold];

  if CheckBox_NegritoNumeroVB.Checked then
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style + [fsBold]
  else
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style - [fsBold];

  if CheckBox_NegritoReservadasC.Checked then
     SynC.KeyAttri.Style := SynC.KeyAttri.Style + [fsBold]
  else
     SynC.KeyAttri.Style := SynC.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoReservadasJava.Checked then
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style + [fsBold]
  else
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoReservadasPas.Checked then
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style + [fsBold]
  else
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoReservadasSQL.Checked then
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style + [fsBold]
  else
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoReservadasVB.Checked then
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style + [fsBold]
  else
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoStringC.Checked then
     SynC.StringAttri.Style := SynC.StringAttri.Style + [fsBold]
  else
     SynC.StringAttri.Style := SynC.StringAttri.Style - [fsBold];

  if CheckBox_NegritoStringJava.Checked then
     SynJava.StringAttri.Style := SynJava.StringAttri.Style + [fsBold]
  else
     SynJava.StringAttri.Style := SynJava.StringAttri.Style - [fsBold];

  if CheckBox_NegritoStringPas.Checked then
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style + [fsBold]
  else
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style - [fsBold];

  if CheckBox_NegritoStringSQL.Checked then
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style + [fsBold]
  else
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style - [fsBold];

  if CheckBox_NegritoStringVB.Checked then
    SynVB.StringAttri.Style := SynVB.StringAttri.Style + [fsBold]
  else
    SynVB.StringAttri.Style := SynVB.StringAttri.Style - [fsBold];

  if CheckBox_NegritoTagHTML.Checked then
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style + [fsBold]
  else
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style - [fsBold];

  if CheckBox_NegritoValuesHTML.Checked then
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style + [fsBold]
  else
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style - [fsBold];

  if CheckBox_NegritoFuncaoSQL.Checked then
    SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style + [fsBold]
  else
    SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style - [fsBold];
end;

procedure TF_Principal.CheckBox_ItalicoStringPasClick(Sender: TObject);
begin
  if TDugCheckBox(Sender).Checked then
     TDugCheckBox(Sender).Edit.Font.Style :=
                               TDugCheckBox(Sender).Edit.Font.Style + [fsItalic]
  else
     TDugCheckBox(Sender).Edit.Font.Style :=
                               TDugCheckBox(Sender).Edit.Font.Style - [fsItalic];

  EscreveConfiguracaoDug(TDugCheckBox(Sender).TextoConfig,BoolToStr(TDugCheckBox(Sender).Checked,True));

  if CheckBox_ItalicoComentarioPas.Checked then
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style + [fsItalic]
  else
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoComentarioC.Checked then
     SynC.CommentAttri.Style := SynC.CommentAttri.Style + [fsItalic]
  else
     SynC.CommentAttri.Style := SynC.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoComentarioHTML.Checked then
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style + [fsItalic]
  else
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoComentarioJava.Checked then
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style + [fsItalic]
  else
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoComentarioSQL.Checked then
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style + [fsItalic]
  else
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoComentarioVB.Checked then
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style + [fsItalic]
  else
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style - [fsItalic];

  if CheckBox_ItalicoDiretivasPas.Checked then
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style + [fsItalic]
  else
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style - [fsItalic];

  if CheckBox_ItalicoDocumentacaoJava.Checked then
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style + [fsItalic]
  else
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style - [fsItalic];

  if CheckBox_ItalicoIdentificadorC.Checked then
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style + [fsItalic]
  else
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style - [fsItalic];
        
  if CheckBox_ItalicoIdentificadorHTML.Checked then
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style + [fsItalic]
  else
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style - [fsItalic];

  if CheckBox_ItalicoIdentificadorJava.Checked then
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style + [fsItalic]
  else
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style - [fsItalic];

  if CheckBox_ItalicoIdentificadorPas.Checked then
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style + [fsItalic]
  else
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style - [fsItalic];

  if CheckBox_ItalicoIdentificadorSQL.Checked then
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style + [fsItalic]
  else
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style - [fsItalic];

  if CheckBox_ItalicoIdentificadorVB.Checked then
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style + [fsItalic]
  else
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style - [fsItalic];

  if CheckBox_ItalicoNumeroC.Checked then
     SynC.NumberAttri.Style := SynC.NumberAttri.Style + [fsItalic]
  else
     SynC.NumberAttri.Style := SynC.NumberAttri.Style - [fsItalic];

  if CheckBox_ItalicoNumeroJava.Checked then
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style + [fsItalic]
  else
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style - [fsItalic];

  if CheckBox_ItalicoNumeroPas.Checked then
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style + [fsItalic]
  else
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style - [fsItalic];

  if CheckBox_ItalicoNumeroSQL.Checked then
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style + [fsItalic]
  else
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style - [fsItalic];

  if CheckBox_ItalicoNumeroVB.Checked then
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style + [fsItalic]
  else
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style - [fsItalic];

  if CheckBox_ItalicoReservadasC.Checked then
     SynC.KeyAttri.Style := SynC.KeyAttri.Style + [fsItalic]
  else
     SynC.KeyAttri.Style := SynC.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoReservadasJava.Checked then
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style + [fsItalic]
  else
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoReservadasPas.Checked then
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style + [fsItalic]
  else
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoReservadasSQL.Checked then
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style + [fsItalic]
  else
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoReservadasVB.Checked then
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style + [fsItalic]
  else
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoStringC.Checked then
     SynC.StringAttri.Style := SynC.StringAttri.Style + [fsItalic]
  else
     SynC.StringAttri.Style := SynC.StringAttri.Style - [fsItalic];

  if CheckBox_ItalicoStringJava.Checked then
     SynJava.StringAttri.Style := SynJava.StringAttri.Style + [fsItalic]
  else
     SynJava.StringAttri.Style := SynJava.StringAttri.Style - [fsItalic];

  if CheckBox_ItalicoStringPas.Checked then
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style + [fsItalic]
  else
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style - [fsItalic];

  if CheckBox_ItalicoStringSQL.Checked then
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style + [fsItalic]
  else
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style - [fsItalic];

  if CheckBox_ItalicoStringVB.Checked then
    SynVB.StringAttri.Style := SynVB.StringAttri.Style + [fsItalic]
  else
    SynVB.StringAttri.Style := SynVB.StringAttri.Style - [fsItalic];

  if CheckBox_ItalicoTagHTML.Checked then
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style + [fsItalic]
  else
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style - [fsItalic];

  if CheckBox_ItalicoValuesHTML.Checked then
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style + [fsItalic]
  else
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style - [fsItalic];

  if CheckBox_ItalicoFuncaoSQL.Checked then
    SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style + [fsItalic]
  else
    SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style - [fsItalic];
end;

procedure TF_Principal.CheckBox_SublinhadoStringPasClick(Sender: TObject);
begin
  if TDugCheckBox(Sender).Checked then
     TDugCheckBox(Sender).Edit.Font.Style :=
                          TDugCheckBox(Sender).Edit.Font.Style + [fsUnderline]
  else
     TDugCheckBox(Sender).Edit.Font.Style :=
                          TDugCheckBox(Sender).Edit.Font.Style - [fsUnderline];

  EscreveConfiguracaoDug(TDugCheckBox(Sender).TextoConfig,BoolToStr(TDugCheckBox(Sender).Checked,True));

  if CheckBox_SublinhadoComentarioPas.Checked then
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style + [fsUnderline]
  else
     SynDelphi.CommentAttri.Style := SynDelphi.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoComentarioC.Checked then
     SynC.CommentAttri.Style := SynC.CommentAttri.Style + [fsUnderline]
  else
     SynC.CommentAttri.Style := SynC.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoComentarioHTML.Checked then
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style + [fsUnderline]
  else
     SynHTML.CommentAttri.Style := SynHTML.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoComentarioJava.Checked then
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style + [fsUnderline]
  else
     SynJava.CommentAttri.Style := SynJava.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoComentarioSQL.Checked then
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style + [fsUnderline]
  else
     SynSQL.CommentAttri.Style := SynSQL.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoComentarioVB.Checked then
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style + [fsUnderline]
  else
     SynVB.CommentAttri.Style := SynVB.CommentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoDiretivasPas.Checked then
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style + [fsUnderline]
  else
     SynDelphi.DirectiveAttri.Style := SynDelphi.DirectiveAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoDocumentacaoJava.Checked then
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style + [fsUnderline]
  else
     SynJava.DocumentAttri.Style := SynJava.DocumentAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorC.Checked then
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style + [fsUnderline]
  else
     SynC.IdentifierAttri.Style := SynC.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorHTML.Checked then
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style + [fsUnderline]
  else
     SynHTML.IdentifierAttri.Style := SynHTML.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorJava.Checked then
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style + [fsUnderline]
  else
     SynJava.IdentifierAttri.Style := SynJava.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorPas.Checked then
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style + [fsUnderline]
  else
     SynDelphi.IdentifierAttri.Style := SynDelphi.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorSQL.Checked then
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style + [fsUnderline]
  else
     SynSQL.IdentifierAttri.Style := SynSQL.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoIdentificadorVB.Checked then
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style + [fsUnderline]
  else
     SynVB.IdentifierAttri.Style := SynVB.IdentifierAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoNumeroC.Checked then
     SynC.NumberAttri.Style := SynC.NumberAttri.Style + [fsUnderline]
  else
     SynC.NumberAttri.Style := SynC.NumberAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoNumeroJava.Checked then
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style + [fsUnderline]
  else
     SynJava.NumberAttri.Style := SynJava.NumberAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoNumeroPas.Checked then
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style + [fsUnderline]
  else
     SynDelphi.NumberAttri.Style := SynDelphi.NumberAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoNumeroSQL.Checked then
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style + [fsUnderline]
  else
     SynSQL.NumberAttri.Style := SynSQL.NumberAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoNumeroVB.Checked then
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style + [fsUnderline]
  else
     SynVB.NumberAttri.Style := SynVB.NumberAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoReservadasC.Checked then
     SynC.KeyAttri.Style := SynC.KeyAttri.Style + [fsUnderline]
  else
     SynC.KeyAttri.Style := SynC.KeyAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoReservadasJava.Checked then
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style + [fsUnderline]
  else
     SynJava.KeyAttri.Style := SynJava.KeyAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoReservadasPas.Checked then
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style + [fsUnderline]
  else
     SynDelphi.KeyAttri.Style := SynDelphi.KeyAttri.Style -[fsUnderline];

  if CheckBox_SublinhadoReservadasSQL.Checked then
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style + [fsUnderline]
  else
     SynSQL.KeyAttri.Style := SynSQL.KeyAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoReservadasVB.Checked then
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style + [fsUnderline]
  else
     SynVB.KeyAttri.Style := SynVB.KeyAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoStringC.Checked then
     SynC.StringAttri.Style := SynC.StringAttri.Style + [fsUnderline]
  else
     SynC.StringAttri.Style := SynC.StringAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoStringJava.Checked then
     SynJava.StringAttri.Style := SynJava.StringAttri.Style + [fsUnderline]
  else
     SynJava.StringAttri.Style := SynJava.StringAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoStringPas.Checked then
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style + [fsUnderline]
  else
     SynDelphi.StringAttri.Style := SynDelphi.StringAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoStringSQL.Checked then
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style + [fsUnderline]
  else
    SynSQL.StringAttri.Style := SynSQL.StringAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoStringVB.Checked then
    SynVB.StringAttri.Style := SynVB.StringAttri.Style + [fsUnderline]
  else
    SynVB.StringAttri.Style := SynVB.StringAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoTagHTML.Checked then
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style + [fsUnderline]
  else
    SynHTML.KeyAttri.Style := SynHTML.KeyAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoValuesHTML.Checked then
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style + [fsUnderline]
  else
    SynHTML.ValueAttri.Style := SynHTML.ValueAttri.Style - [fsUnderline];

  if CheckBox_SublinhadoFuncaoSQL.Checked then
     SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style + [fsUnderline]
   else
     SynSQL.FunctionAttri.Style := SynSQL.FunctionAttri.Style - [fsUnderline];
end;

procedure TF_Principal.Ed_StringPasDblClick(Sender: TObject);
var Cor : TColor;
begin
  Cor := MostraCaixaDeCores('Escolha uma cor...',TEdit(Sender).Font.Color);
  TEdit(Sender).Font.Color := Cor;
  EscreveConfiguracaoDug(LowerCase(TEdit(Sender).Name),IntToStr(Cor));
  LeConfiguracaoSintaxe;
end;

procedure TF_Principal.Edit5Change(Sender: TObject);
begin
  BuscaNaLista(ListBoxAbas,TEdit(Sender),TimerAbas);
end;

procedure TF_Principal.SpeedButton16Click(Sender: TObject);
begin
  Panel19.Visible := False;
end;

procedure TF_Principal.SpeedButton2Click(Sender: TObject);
var Ind : Integer;
begin
  for Ind := 0 to PageControl_Principal.PageCount-1 do
    if AnsiCompareText(Edit7.Text,PageControl_Principal.Pages[Ind].Caption) = 0 then
    begin
      PageControl_Principal.TabIndex := Ind;
      Break;
    end;
end;

procedure TF_Principal.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
   case key of
     #13: SpeedButton2.Click;
   end;
end;

procedure TF_Principal.MenuCobolClick(Sender: TObject);
begin
  TrocaLinguagem(SynCobol,clWhite);
end;

procedure TF_Principal.MenuCSharpClick(Sender: TObject);
begin
  TrocaLinguagem(SynCSharp,clWhite);
end;

procedure TF_Principal.MenuJavaScriptClick(Sender: TObject);
begin
  TrocaLinguagem(SynJavaScript,clWhite);
end;

procedure TF_Principal.MenuVBScriptClick(Sender: TObject);
begin
  TrocaLinguagem(SynVbScript,clWhite);
end;

procedure TF_Principal.MenuXMLClick(Sender: TObject);
begin
   TrocaLinguagem(SynXML,clWhite);
end;

procedure TF_Principal.MenuAWKClick(Sender: TObject);
begin
  TrocaLinguagem(SynAWK,clWhite);
end;

procedure TF_Principal.MenuBatClick(Sender: TObject);
begin
  TrocaLinguagem(SynBat,clWhite);
end;

procedure TF_Principal.MenuPerlClick(Sender: TObject);
begin
  TrocaLinguagem(SynPerl,clWhite);
end;

procedure TF_Principal.MenuHaskell1Click(Sender: TObject);
begin
  TrocaLinguagem(SynHaskell,clWhite);
end;

procedure TF_Principal.MenuProgressClick(Sender: TObject);
begin
  TrocaLinguagem(SynProgress,clWhite);
end;

procedure TF_Principal.MenuRubyClick(Sender: TObject);
begin
  TrocaLinguagem(SynRuby,clWhite);
end;

procedure TF_Principal.MenuAssemblyClick(Sender: TObject);
begin
   TrocaLinguagem(SynAsm,clWhite);
end;

procedure TF_Principal.Desfazer1Click(Sender: TObject);
begin
 if not MemoAtivo.ReadOnly then
   MemoAtivo.Undo;
end;

procedure TF_Principal.Recortar4Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
     MemoAtivo.CutToClipboard;
end;

procedure TF_Principal.Copiar2Click(Sender: TObject);
begin
   MemoAtivo.CopyToClipboard;
end;

procedure TF_Principal.Colar2Click(Sender: TObject);
begin
  if not MemoAtivo.ReadOnly then
  begin
     MemoAtivo.PasteFromClipboard;
     MemoAtivo.Refresh;
  end;
end;

procedure TF_Principal.Excluir2Click(Sender: TObject);
begin
 if not MemoAtivo.ReadOnly then
    MemoAtivo.SelText := '';
end;

procedure TF_Principal.Selecionartudo2Click(Sender: TObject);
begin
   MemoAtivo.SelectAll;
end;

procedure TF_Principal.Localizartexto2Click(Sender: TObject);
begin
  Panel5.Visible := True;
  Ed_Pesquisa.Text := MemoAtivo.SelText;
  Ed_Pesquisa.SetFocus;
  Panel10.Visible := False;
end;

procedure TF_Principal.MenuEditarClick(Sender: TObject);
begin
   MenuReadOnly.Checked := MemoAtivo.ReadOnly;
end;

procedure TF_Principal.MenuDestacarLinhaClick(Sender: TObject);
begin
   EscreveConfiguracaoDug('destacar_linha',BoolToStr(TMenuItem(Sender).Checked,True));
   if PageControl_Principal.PageCount > 0 then
   begin
     if MenuDestacarLinha.Checked then
        MemoAtivo.ActiveLineColor := CorLinhaAtiva
     else
        MemoAtivo.ActiveLineColor := clNone;
     MemoAtivo.Refresh;
   end;
   Bt_CorLinha.Enabled := (MenuDestacarLinha.Checked) and (PageControl_Principal.PageCount>0);
end;

procedure TF_Principal.Bt_CorLinhaClick(Sender: TObject);
var Cor : TColor;
begin
   Cor := MemoAtivo.ActiveLineColor;
   MemoAtivo.ActiveLineColor := MostraCaixaDeCores('Cor da linha do cursor',MemoAtivo.ActiveLineColor);
   if Cor <> MemoAtivo.ActiveLineColor then
   begin
     CorLinhaAtiva := MemoAtivo.ActiveLineColor;
     MemoAtivo.Refresh;
   end;
end;

procedure TF_Principal.Irparaaba2Click(Sender: TObject);
begin
   Panel19.Visible := not Panel19.Visible;
   if Panel19.Visible then
   begin
     Edit7.Clear;
     Edit7.SetFocus;
   end;
end;

procedure TF_Principal.MenuAbasClick(Sender: TObject);
begin
  MenuAbas.Items[1].Caption := 'Fechar "'+PageControl_Principal.ActivePage.Caption+'"';
end;

procedure TF_Principal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in Shift) and (Key = VK_TAB) then
   begin
     if PageControl_Principal.TabIndex = PageControl_Principal.PageCount - 1 then
        PageControl_Principal.TabIndex := 0
     else
        PageControl_Principal.TabIndex := PageControl_Principal.TabIndex + 1;
   end;

   if (ssShift in Shift) and (Key = VK_TAB) then
   begin
     if PageControl_Principal.TabIndex = 0 then
        PageControl_Principal.TabIndex := PageControl_Principal.PageCount - 1
     else
        PageControl_Principal.TabIndex := PageControl_Principal.TabIndex - 1;
   end;
end;

procedure TF_Principal.ImprimeTexto(TotalPaginas : Integer);
begin
  Imprimir.MinPage := 1;
  Imprimir.MaxPage := TotalPaginas;
  Imprimir.PrintRange := prAllPages;
  if Imprimir.Execute then
  begin
    MemoPrinter.DocTitle := PageControl_Principal.ActivePage.Caption;
    MemoPrinter.Copies := Imprimir.Copies;
    if Imprimir.PrintRange = prPageNums then
      MemoPrinter.PrintRange(Imprimir.FromPage,Imprimir.ToPage)
    else
    begin
      MemoPrinter.SelectedOnly := (Imprimir.PrintRange = prSelection);
      MemoPrinter.Print;
    end;
  end;
end;
function TF_Principal.PreparaImpressao(Colorido: Boolean; Mostra : Boolean) : Integer;
begin
  if not Assigned(F_Preview) then
     F_Preview := TF_Preview.Create(Application);

  MemoPrinter.SelectedOnly := False;
  MemoPrinter.SynEdit := MemoAtivo;
  MemoPrinter.Highlighter := MemoAtivo.Highlighter;
  MemoPrinter.Colors := Colorido;
  if not Colorido then MemoPrinter.Font.Color := clBlack;
  F_Preview.SynEditVisualiza.SynEditPrint := MemoPrinter;
  F_Preview.SynEditVisualiza.UpdatePreview;
  F_Preview.Caption := PageControl_Principal.ActivePage.Caption;
  F_Preview.SynEditVisualiza.FirstPage;
  Result := F_Preview.SynEditVisualiza.PageCount;
  if Mostra then
  begin
    F_Preview.Show;
    F_Preview.WindowState := wsMaximized;
  end;
end;

procedure TF_Principal.Colorido1Click(Sender: TObject);
begin
  ImprimeTexto(PreparaImpressao(True,False));
end;

procedure TF_Principal.Empretoebranco1Click(Sender: TObject);
begin
  ImprimeTexto(PreparaImpressao(False,False));
end;

procedure TF_Principal.Colorido2Click(Sender: TObject);
begin
  PreparaImpressao(True);
end;

procedure TF_Principal.Empretoebranco2Click(Sender: TObject);
begin
  PreparaImpressao(False);
end;

procedure TF_Principal.Arquivo1Click(Sender: TObject);
var IsEnabled : Boolean;
begin
  IsEnabled := LerUltimosArquivosAbertos;
  MenuReabrir.Items[0].Enabled := IsEnabled;
  MenuReabrir.Items[1].Enabled := IsEnabled;
  MenuReabrir.Items[2].Enabled := IsEnabled;
  MenuReabrir.Enabled := (MenuReabrir.Count > 4);
end;

procedure TF_Principal.Configurarimpresso1Click(Sender: TObject);
begin
  try
    F_ConfiguraImpressao := TF_ConfiguraImpressao.Create(Application);
    F_ConfiguraImpressao.MostraConfiguracao(MemoPrinter);
  finally
    F_ConfiguraImpressao.Free;
  end;
end;

procedure TF_Principal.AtualizaCoresSelecao;
begin
  MemoAtivo.SelectedColor.Background := MemoAtivo.Font.Color;
  MemoAtivo.SelectedColor.Foreground := MemoAtivo.Color;
end;

procedure TF_Principal.MemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha : Integer;
begin
  if (ssAlt in Shift) then
  begin
    if (Key = VK_DOWN) then
    begin
      if (MemoAtivo.CaretY-1 < MemoAtivo.Lines.Count-1) then
      begin
        MemoAtivo.Lines.Exchange(MemoAtivo.CaretY-1,MemoAtivo.CaretY);
        MemoAtivo.CaretY := MemoAtivo.CaretY+1;
        MemoChange(nil);
        MemoAtivo.Refresh;
      end;
    end
    else
    if (Key = VK_UP) then
      if (MemoAtivo.CaretY-1 > 0) then
      begin
        MemoAtivo.Lines.Exchange(MemoAtivo.CaretY-1,MemoAtivo.CaretY-2);
        MemoAtivo.CaretY := MemoAtivo.CaretY-1;
        MemoChange(nil);
        MemoAtivo.Refresh;
      end;
  end;

  if (ssCtrl in Shift) then
  begin
    if Key = Ord('U') then
       MemoAtivo.SelText := UpperCase(MemoAtivo.SelText);
    if Key = Ord('L') then
       MemoAtivo.SelText := LowerCase(MemoAtivo.SelText);
  end;

  MemoKeyUp(Sender,Key,Shift);
end;

procedure TF_Principal.Css1Click(Sender: TObject);
begin
  TrocaLinguagem(SynCss,clWhite);
end;

procedure TF_Principal.MenuSelecionarPorExtensaoClick(Sender: TObject);
var Strings : TStringList;
    I : Integer;
    Ext : String;
    MenuItem : TMenuItem;
begin
    for I :=  1 to MenuSelecionarPorExtensao.Count-1 do
       MenuSelecionarPorExtensao.Delete(1);

    Strings := TStringList.Create;
    I := 0;
    while I < FileListBox_Arquivos.Count do
    begin
      Ext := ExtractFileExt(FileListBox_Arquivos.Items[I]);
      if (Strings.IndexOf(Ext) = -1) then
      begin
        Strings.Add(Ext);
        MenuItem := TMenuItem.Create(MenuSelecionarPorExtensao);
        MenuItem.Caption := Ext;
        MenuItem.OnClick := SelecionarExtensaoClick;
        MenuSelecionarPorExtensao.Add(MenuItem);
      end;
      Inc(I);
    end;
    MenuSelecionarPorExtensao.Delete(0);
    Strings.Free;
end;

procedure TF_Principal.SelecionarExtensaoClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to FileListBox_Arquivos.Items.Count-1 do
     FileListBox_Arquivos.Selected[I] :=
         LowerCase(ExtractFileExt(FileListBox_Arquivos.Items[I])) = LowerCase(TMenuItem(Sender).Caption);
end;

procedure TF_Principal.Bt_AtualizarClick(Sender: TObject);
begin
   if FileExists(PageControl_Principal.ActivePage.Hint) then
   begin
     VerificaExtensaoArquivo(PageControl_Principal.ActivePage.Hint);
     MemoAtivo.Lines.LoadFromFile(PageControl_Principal.ActivePage.Hint);
     MemoEnter(MemoAtivo);
   end;
end;

procedure TF_Principal.Ed_FiltroChange(Sender: TObject);
begin
  try
    FileListBox_Arquivos.Mask := Ed_Filtro.Text;
    BitBtn2.Enabled := FileListBox_Arquivos.Items.Count > 0;
  except
    DugMensagem('Filtro inválido!','DugPad',48);
  end;
end;

procedure TF_Principal.SpeedButton17Click(Sender: TObject);
begin
  MemoAtivo.CaretX := 0;
  TotalEncontrado := 0;
  while Localizar(Ed_Localizar.Text,Ed_Substituir.Text,True,True,CheckBox_CaseSensitive.Checked) do
    Inc(TotalEncontrado);

  DugMensagem('Pesquisa finalizada!'+#13+'Total encontrado/substituído: ' + IntToStr(TotalEncontrado),'DugPad 1.0',MB_ICONINFORMATION);
end;

procedure TF_Principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var vInd : Integer;
begin
  for vInd := 0 to ListBoxAbas.Items.Count-1 do
  begin
    TAba(ListBoxAbas.Items.Objects[0]).Free;
    ListBoxAbas.Items.Delete(0);
  end;
  for vInd := 0 to ListBoxAtalhos.Items.Count-1 do
  begin
    TAtalho(ListBoxAtalhos.Items.Objects[0]).Free;
    ListBoxAtalhos.Items.Delete(0);
  end;
  ListaAtalhos.Free;
  MemoRascunho.Free;
  Splitter.Free;
end;

procedure TF_Principal.SpeedButton15Click(Sender: TObject);
begin
  MemoAtivo.CaretX := 0;
  MemoAtivo.CaretY := 0;
  SpeedButton10.Click;
end;

procedure TF_Principal.PageControl_PrincipalDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  if PageControl_Principal.TabIndex = TabIndex then
  begin
    PageControl_Principal.Canvas.Font.Color := clGreen;
    PageControl_Principal.Canvas.Font.Style := [fsBold];
    PageControl_Principal.Canvas.TextOut(Rect.Left+5,Rect.Top+3,PageControl_Principal.Pages[TabIndex].Caption);
  end
  else
  begin
    PageControl_Principal.Canvas.Font.Color := clBlack;
    PageControl_Principal.Canvas.Font.Style := [];
    PageControl_Principal.Canvas.TextOut(Rect.Left+3,Rect.Top+3,PageControl_Principal.Pages[TabIndex].Caption);
  end;
  PageControl_Principal.Pages[TabIndex].Font.Color := Control.Canvas.Font.Color;
end;

procedure TF_Principal.MenuManterAbasClick(Sender: TObject);
begin
  EscreveConfiguracaoDug('manter_abas_ao_fechar',BoolToStr(TMenuItem(Sender).Checked,True));
end;

end.



