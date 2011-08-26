object F_GeradorDeClasses: TF_GeradorDeClasses
  Left = 155
  Top = 123
  Width = 846
  Height = 551
  Caption = 'Gerador de classes Java'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 388
    Top = 29
    Height = 476
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 388
    Height = 476
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 0
    OnChange = PageControl1Change
    OnMouseDown = MemoClasseMouseDown
    object TabSheet1: TTabSheet
      Caption = 'Classes'
      OnMouseDown = MemoClasseMouseDown
      object Shape5: TShape
        Left = 311
        Top = 402
        Width = 66
        Height = 39
        Brush.Color = clBtnFace
        OnMouseDown = MemoClasseMouseDown
      end
      object SpeedButton5: TSpeedButton
        Left = 312
        Top = 403
        Width = 65
        Height = 38
        Caption = 'Gerar classe'
        OnClick = SpeedButton5Click
        OnMouseDown = MemoClasseMouseDown
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 380
        Height = 198
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        OnMouseDown = MemoClasseMouseDown
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 380
          Height = 198
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnMouseDown = MemoClasseMouseDown
          object GroupBox1: TGroupBox
            Left = 7
            Top = -2
            Width = 370
            Height = 198
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnMouseDown = MemoClasseMouseDown
            object Shape1: TShape
              Left = 319
              Top = 121
              Width = 45
              Height = 19
              Brush.Color = clBtnFace
              OnMouseDown = MemoClasseMouseDown
            end
            object SpeedButton2: TSpeedButton
              Left = 320
              Top = 122
              Width = 44
              Height = 18
              Caption = 'Add'
              OnClick = SpeedButton2Click
              OnMouseDown = MemoClasseMouseDown
            end
            object EdNomeClasse: TLabeledEdit
              Left = 8
              Top = 28
              Width = 355
              Height = 19
              Ctl3D = False
              EditLabel.Width = 76
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome da classe'
              ParentCtl3D = False
              TabOrder = 0
              OnMouseDown = MemoClasseMouseDown
            end
            object EdImplements: TLabeledEdit
              Left = 6
              Top = 121
              Width = 311
              Height = 19
              Ctl3D = False
              EditLabel.Width = 52
              EditLabel.Height = 13
              EditLabel.Caption = 'implements'
              ParentCtl3D = False
              TabOrder = 2
              OnKeyPress = EdImplementsKeyPress
              OnMouseDown = MemoClasseMouseDown
            end
            object ListaImplements: TListBox
              Left = 6
              Top = 143
              Width = 358
              Height = 50
              Ctl3D = False
              ItemHeight = 13
              ParentCtl3D = False
              PopupMenu = PopupMenu1
              TabOrder = 3
              OnMouseDown = MemoClasseMouseDown
            end
            object EdExtends: TLabeledEdit
              Left = 6
              Top = 84
              Width = 358
              Height = 19
              Ctl3D = False
              EditLabel.Width = 37
              EditLabel.Height = 13
              EditLabel.Caption = 'extends'
              ParentCtl3D = False
              TabOrder = 1
              OnMouseDown = MemoClasseMouseDown
            end
            object CheckPrivate: TCheckBox
              Left = 8
              Top = 50
              Width = 54
              Height = 17
              Caption = 'Private'
              TabOrder = 4
              OnMouseDown = MemoClasseMouseDown
            end
            object CheckAbstract: TCheckBox
              Left = 66
              Top = 50
              Width = 60
              Height = 17
              Caption = 'Abstract'
              TabOrder = 5
              OnMouseDown = MemoClasseMouseDown
            end
            object CheckStatic: TCheckBox
              Left = 129
              Top = 50
              Width = 54
              Height = 17
              Caption = 'Static'
              TabOrder = 6
              OnMouseDown = MemoClasseMouseDown
            end
            object CheckMain: TCheckBox
              Left = 291
              Top = 50
              Width = 71
              Height = 17
              Caption = 'Gerar main'
              TabOrder = 7
              OnMouseDown = MemoClasseMouseDown
            end
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 7
        Top = 197
        Width = 370
        Height = 198
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        OnMouseDown = MemoClasseMouseDown
        object Shape3: TShape
          Left = 319
          Top = 26
          Width = 45
          Height = 21
          Brush.Color = clBtnFace
          OnMouseDown = MemoClasseMouseDown
        end
        object SpeedButton1: TSpeedButton
          Left = 320
          Top = 27
          Width = 44
          Height = 20
          Caption = 'Add'
          OnClick = SpeedButton1Click
          OnMouseDown = MemoClasseMouseDown
        end
        object Label1: TLabel
          Left = 103
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Label1'
          Visible = False
          OnMouseDown = MemoClasseMouseDown
        end
        object EdAtributo: TLabeledEdit
          Left = 8
          Top = 28
          Width = 191
          Height = 19
          Ctl3D = False
          EditLabel.Width = 64
          EditLabel.Height = 13
          EditLabel.Caption = 'Novo atributo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyPress = CbTiposKeyPress
          OnMouseDown = MemoClasseMouseDown
        end
        object CbTipos: TComboBox
          Left = 200
          Top = 26
          Width = 117
          Height = 21
          BevelKind = bkSoft
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = CbTiposEnter
          OnKeyPress = CbTiposKeyPress
          Items.Strings = (
            'boolean'
            'byte'
            'char'
            'date'
            'double'
            'float'
            'int'
            'long'
            'short'
            'String')
        end
        object ListaAtributos: TListBox
          Left = 8
          Top = 48
          Width = 356
          Height = 144
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 2
          TabWidth = 50
          OnMouseDown = ListaAtributosMouseDown
        end
      end
      object RadioConstrutor: TRadioGroup
        Left = 8
        Top = 397
        Width = 301
        Height = 44
        BiDiMode = bdRightToLeftNoAlign
        Caption = 'Construtor'
        Columns = 3
        Ctl3D = True
        ItemIndex = 1
        Items.Strings = (
          'Com atributos'
          'Sem atributos'
          'Sem construtor')
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 2
        OnClick = RadioConstrutorClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Interfaces'
      ImageIndex = 1
      object Shape7: TShape
        Left = 293
        Top = 403
        Width = 84
        Height = 39
        Brush.Color = clBtnFace
        OnMouseDown = MemoClasseMouseDown
      end
      object SpeedButton7: TSpeedButton
        Left = 294
        Top = 404
        Width = 83
        Height = 38
        Caption = 'Gerar interface'
        OnClick = SpeedButton7Click
        OnMouseDown = MemoClasseMouseDown
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = -2
        Width = 370
        Height = 198
        TabOrder = 0
        OnMouseDown = MemoClasseMouseDown
        object Shape4: TShape
          Left = 322
          Top = 65
          Width = 41
          Height = 19
          Brush.Color = clBtnFace
          OnMouseDown = MemoClasseMouseDown
        end
        object SpeedButton4: TSpeedButton
          Left = 323
          Top = 66
          Width = 40
          Height = 18
          Caption = 'Add'
          OnClick = SpeedButton4Click
          OnMouseDown = MemoClasseMouseDown
        end
        object EdInterface: TLabeledEdit
          Left = 5
          Top = 28
          Width = 358
          Height = 19
          Ctl3D = False
          EditLabel.Width = 87
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome da interface'
          ParentCtl3D = False
          TabOrder = 0
          OnMouseDown = MemoClasseMouseDown
        end
        object EdImplementsInterface: TLabeledEdit
          Left = 6
          Top = 65
          Width = 315
          Height = 19
          Ctl3D = False
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'implements'
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = EdImplementsInterfaceKeyPress
          OnMouseDown = MemoClasseMouseDown
        end
        object ListaImplementsInterface: TListBox
          Left = 6
          Top = 87
          Width = 357
          Height = 106
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          PopupMenu = PopupMenu3
          TabOrder = 2
          OnMouseDown = MemoClasseMouseDown
        end
      end
      object GroupBox5: TGroupBox
        Left = 7
        Top = 197
        Width = 370
        Height = 198
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        OnMouseDown = MemoClasseMouseDown
        object Shape2: TShape
          Left = 319
          Top = 26
          Width = 45
          Height = 21
          Brush.Color = clBtnFace
          OnMouseDown = MemoClasseMouseDown
        end
        object SpeedButton3: TSpeedButton
          Left = 320
          Top = 27
          Width = 44
          Height = 20
          Caption = 'Add'
          OnClick = SpeedButton3Click
          OnMouseDown = MemoClasseMouseDown
        end
        object EdMetodo: TLabeledEdit
          Left = 8
          Top = 28
          Width = 191
          Height = 19
          Ctl3D = False
          EditLabel.Width = 64
          EditLabel.Height = 13
          EditLabel.Caption = 'Novo m'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnMouseDown = MemoClasseMouseDown
        end
        object CbRetorno: TComboBox
          Left = 200
          Top = 26
          Width = 117
          Height = 21
          BevelKind = bkSoft
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = CbTiposEnter
          OnKeyPress = CbRetornoKeyPress
          Items.Strings = (
            'boolean'
            'byte'
            'char'
            'date'
            'double'
            'float'
            'int'
            'long'
            'short'
            'String'
            'void')
        end
        object ListaMetodos: TListBox
          Left = 8
          Top = 48
          Width = 356
          Height = 144
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 2
          TabWidth = 50
          OnMouseDown = ListaMetodosMouseDown
        end
      end
    end
  end
  object PainelParametros: TPanel
    Left = 19
    Top = 272
    Width = 185
    Height = 129
    TabOrder = 1
    object Panel7: TPanel
      Left = 1
      Top = 112
      Width = 183
      Height = 16
      Align = alBottom
      TabOrder = 0
      object Button3: TSpeedButton
        Left = 40
        Top = 16
        Width = 23
        Height = 22
        Caption = 'Fechar'
        Flat = True
        OnClick = Button3Click
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 96
      Width = 183
      Height = 16
      Align = alBottom
      TabOrder = 1
      object Button4: TSpeedButton
        Left = 40
        Top = 16
        Width = 23
        Height = 22
        Caption = 'Excluir par'#226'metro'
        Flat = True
        OnClick = Button4Click
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 40
      Width = 183
      Height = 40
      Align = alClient
      TabOrder = 2
      object ListaParametros: TListBox
        Left = 1
        Top = 1
        Width = 181
        Height = 38
        Align = alClient
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        TabWidth = 50
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 17
      Width = 183
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Shape6: TShape
        Left = 155
        Top = 2
        Width = 27
        Height = 21
        Brush.Color = clBtnFace
      end
      object SpeedButton6: TSpeedButton
        Left = 156
        Top = 3
        Width = 26
        Height = 20
        Caption = 'Add'
        OnClick = SpeedButton6Click
      end
      object CbTipoParametro: TComboBox
        Left = 86
        Top = 2
        Width = 69
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        Items.Strings = (
          'boolean'
          'byte'
          'char'
          'date'
          'double'
          'float'
          'int'
          'long'
          'short'
          'String')
      end
      object EdNovoParametro: TLabeledEdit
        Left = 3
        Top = 3
        Width = 82
        Height = 19
        Ctl3D = False
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'EdNovoParametro'
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 80
      Width = 183
      Height = 16
      Align = alBottom
      TabOrder = 4
      object Button5: TSpeedButton
        Left = 40
        Top = 16
        Width = 23
        Height = 22
        Caption = 'Excluir m'#233'todo'
        Flat = True
        OnClick = Button5Click
      end
    end
    object PainelNomeMetodo: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 16
      Align = alTop
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Ctl3D = True
      ParentBackground = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 5
      object SpeedButton8: TSpeedButton
        Left = 40
        Top = 16
        Width = 23
        Height = 22
        Caption = 'Excluir m'#233'todo'
        Flat = True
        OnClick = Button5Click
      end
    end
  end
  object PainelAtributos: TPanel
    Left = 210
    Top = 272
    Width = 121
    Height = 130
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object CaixaAtributos: TCheckListBox
      Left = 1
      Top = 17
      Width = 119
      Height = 80
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'static'
        'final'
        'getter'
        'setter'
        'tem no construtor'
        'public')
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnClick = CaixaAtributosClick
    end
    object Panel4: TPanel
      Left = 1
      Top = 97
      Width = 119
      Height = 16
      Align = alBottom
      TabOrder = 1
      object Button2: TSpeedButton
        Left = 88
        Top = 0
        Width = 23
        Height = 22
        Caption = 'Excluir atributo'
        Flat = True
        OnClick = Button2Click
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 113
      Width = 119
      Height = 16
      Align = alBottom
      TabOrder = 2
      object Button1: TSpeedButton
        Left = 88
        Top = 0
        Width = 23
        Height = 22
        Caption = 'Fechar'
        Flat = True
        OnClick = Button1Click
      end
    end
    object PainelNomeAtributo: TPanel
      Left = 1
      Top = 1
      Width = 119
      Height = 16
      Align = alTop
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Ctl3D = True
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object PageControl2: TPageControl
    Left = 391
    Top = 29
    Width = 447
    Height = 476
    Align = alClient
    PopupMenu = PopupMenu2
    TabOrder = 3
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 838
    Height = 29
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList1
    TabOrder = 4
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = Novo1Click
      OnMouseDown = MemoClasseMouseDown
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = Salvar1Click
      OnMouseDown = MemoClasseMouseDown
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 54
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 3
      OnClick = Copiar1Click
      OnMouseDown = MemoClasseMouseDown
    end
    object ToolButton6: TToolButton
      Left = 77
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 4
      OnClick = Colar1Click
      OnMouseDown = MemoClasseMouseDown
    end
    object ToolButton4: TToolButton
      Left = 100
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 2
      OnClick = Recortar1Click
      OnMouseDown = MemoClasseMouseDown
    end
  end
  object SynJavaSyn1: TSynJavaSyn
    KeyAttri.Foreground = clNavy
    Left = 10
    Top = 298
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 168
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 289
    object Arquivos1: TMenuItem
      Caption = 'Arquivo'
      object Novo1: TMenuItem
        Caption = 'Novo'
        ShortCut = 16468
        OnClick = Novo1Click
      end
      object Salvar1: TMenuItem
        Caption = 'Salvar'
        OnClick = Salvar1Click
      end
      object Limpartudo1: TMenuItem
        Caption = 'Limpar tudo'
        OnClick = Limpartudo1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair '
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Recortar1: TMenuItem
        Caption = 'Recortar'
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = 'Copiar'
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
        OnClick = Colar1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Selecionartudo1: TMenuItem
        Caption = 'Selecionar tudo'
        OnClick = Selecionartudo1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object UsarsintaxeJava1: TMenuItem
        AutoCheck = True
        Caption = 'Usar sintaxe Java'
        Checked = True
        OnClick = UsarsintaxeJava1Click
      end
    end
  end
  object Salvar: TSaveDialog
    DefaultExt = '*.java'
    Filter = 'Classes java(*.java)|*.java'
    Left = 72
    Top = 328
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 424
    Top = 48
    object Novo2: TMenuItem
      Caption = 'Novo'
      ShortCut = 16468
      OnClick = Novo1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
    object Salvar2: TMenuItem
      Caption = 'Salvar'
      OnClick = Salvar1Click
    end
  end
  object ImageList1: TImageList
    Left = 152
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF008000000080000000800000008000
      00008000000080000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF00800000008000000080000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008080000000000000808000000000000080800000000000008080000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000080
      80000000000000FFFF00000000000000000000FFFF0000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000008000
      0000000000000000000080000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000008000
      0000000000000000000080000000000000008000000000000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000008000
      0000000000000000000080000000000000008000000000000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000800000008000000080000000000000008000000000000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000080000000000000008000000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000080000000000000008000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFFFF008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF008000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FC00000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0001000000000000000300000000000000030000000000000003000000000000
      00030000000000000FC300000000000000030000000000008007000000000000
      F87F000000000000FFFF0000000000007EFEFFFFFFFFFFFFBFFDC001F3FFFFFF
      E0078031ED9FFC01E0078031ED6FFC01E0078031ED6FFC01E0078001F16F0001
      E0078001FD1F0001E0068001FC7F000160078FF1FEFF0001E0078FF1FC7F0003
      E0078FF1FD7F0007E00F8FF1F93F000FE01F8FF1FBBF00FFE03F8FF5FBBF01FF
      BFFD8001FBBF03FF7F7EFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu3: TPopupMenu
    Left = 131
    Top = 179
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir2Click
    end
  end
end
