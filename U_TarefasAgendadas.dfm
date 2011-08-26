object F_TarefasAgendadas: TF_TarefasAgendadas
  Left = 166
  Top = 154
  Width = 672
  Height = 426
  Caption = 'Tarefas agendadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 380
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 500
      Height = 380
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 298
        Width = 500
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        MinSize = 36
      end
      object Grid: TStringGrid
        Left = 0
        Top = 0
        Width = 500
        Height = 298
        Align = alClient
        Color = clWhite
        ColCount = 2
        DefaultRowHeight = 15
        FixedCols = 0
        Options = [goFixedVertLine, goFixedHorzLine, goRowSelect]
        PopupMenu = PopupMenu1
        ScrollBars = ssVertical
        TabOrder = 0
        OnDrawCell = GridDrawCell
        OnSelectCell = GridSelectCell
        ColWidths = (
          64
          79)
      end
      object Memo: TMemo
        Left = 0
        Top = 300
        Width = 500
        Height = 80
        Align = alBottom
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 500
      Top = 0
      Width = 164
      Height = 380
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Bevel3: TBevel
        Left = 7
        Top = 186
        Width = 152
        Height = 2
      end
      object Bevel4: TBevel
        Left = 7
        Top = 266
        Width = 152
        Height = 2
      end
      object Bevel5: TBevel
        Left = 8
        Top = 346
        Width = 152
        Height = 2
      end
      object Button2: TButton
        Left = 6
        Top = 159
        Width = 155
        Height = 22
        Caption = 'Agendar nova tarefa'
        TabOrder = 0
        OnClick = Button2Click
      end
      object botaoHoje: TButton
        Left = 6
        Top = 192
        Width = 155
        Height = 22
        Caption = 'Ver somente hoje'
        TabOrder = 1
        OnClick = botaoHojeClick
      end
      object botaoProxs: TButton
        Left = 6
        Top = 216
        Width = 155
        Height = 22
        Caption = 'Ver pr'#243'ximas'
        TabOrder = 2
        OnClick = botaoProxsClick
      end
      object botaoTodas: TButton
        Left = 6
        Top = 240
        Width = 155
        Height = 22
        Caption = 'Ver todas'
        TabOrder = 3
        OnClick = botaoTodasClick
      end
      object botaoExcluiSelected: TButton
        Left = 6
        Top = 273
        Width = 155
        Height = 22
        Caption = 'Excluir selecionada'
        TabOrder = 4
        OnClick = botaoExcluiSelectedClick
      end
      object botaoExcluirAntigas: TButton
        Left = 6
        Top = 297
        Width = 155
        Height = 22
        Caption = 'Excluir antigas'
        TabOrder = 5
        OnClick = botaoExcluirAntigasClick
      end
      object botaoExcluirTodas: TButton
        Left = 6
        Top = 321
        Width = 155
        Height = 22
        Caption = 'Excluir todas'
        TabOrder = 6
        OnClick = botaoExcluirTodasClick
      end
      object Button1: TButton
        Left = 6
        Top = 351
        Width = 155
        Height = 22
        Caption = 'Fechar'
        TabOrder = 7
        OnClick = Button1Click
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 161
        Height = 148
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BiDiMode = bdLeftToRight
        Caption = 'Panel4'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 8
        object Calendario: TCalendar
          Left = 3
          Top = 25
          Width = 155
          Height = 120
          BorderStyle = bsNone
          StartOfWeek = 0
          TabOrder = 0
          OnChange = CalendarioChange
          OnDblClick = CalendarioDblClick
        end
        object PnData: TPanel
          Left = 2
          Top = 2
          Width = 156
          Height = 22
          BevelOuter = bvNone
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Image1: TImage
            Left = 3
            Top = 4
            Width = 12
            Height = 15
            Cursor = crHandPoint
            AutoSize = True
            Picture.Data = {
              07544269746D6170EE000000424DEE0000000000000076000000280000000C00
              00000F000000010004000000000078000000C40E0000C40E0000100000000000
              000000000000000080000080000000808000800000008000800080800000C0C0
              C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF007777777777770000777777777777000077777777F77700007777777FF777
              0000777777FFF777000077777FFFF77700007777FFFFF7770000777FFFFFF777
              00007777FFFFF777000077777FFFF7770000777777FFF77700007777777FF777
              000077777777F777000077777777777700007777777777770000}
            Transparent = True
            OnClick = Image1Click
          end
          object Image2: TImage
            Left = 142
            Top = 4
            Width = 12
            Height = 15
            Cursor = crHandPoint
            AutoSize = True
            Picture.Data = {
              07544269746D6170EE000000424DEE0000000000000076000000280000000C00
              00000F000000010004000000000078000000C40E0000C40E0000100000000000
              000000000000000080000080000000808000800000008000800080800000C0C0
              C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF0077777777777700007777777777770000777F777777770000777FF7777777
              0000777FFF7777770000777FFFF777770000777FFFFF77770000777FFFFFF777
              0000777FFFFF77770000777FFFF777770000777FFF7777770000777FF7777777
              0000777F77777777000077777777777700007777777777770000}
            Transparent = True
            OnClick = Image2Click
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 380
    Width = 664
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 289
    Top = 259
    object Agendarnovatarefa1: TMenuItem
      Caption = 'Agendar nova tarefa'
      OnClick = Button2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuVerHoje: TMenuItem
      OnClick = botaoHojeClick
    end
    object MenuVerProxs: TMenuItem
      Caption = 'Ver pr'#243'ximas'
      OnClick = botaoProxsClick
    end
    object MenuVerTodas: TMenuItem
      Caption = 'Ver todas'
      OnClick = botaoTodasClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuExcluirSelecionada: TMenuItem
      Caption = 'Excluir selecionada'
      OnClick = botaoExcluiSelectedClick
    end
    object MenuExcluirAntigas: TMenuItem
      Caption = 'Excluir antigas'
      OnClick = botaoExcluirAntigasClick
    end
    object MenuExcluirTodas: TMenuItem
      Caption = 'Excluir todas'
      OnClick = botaoExcluirTodasClick
    end
  end
end
