object F_Calendario: TF_Calendario
  Left = 305
  Top = 284
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 184
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 328
    Height = 184
    Align = alClient
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Button2: TButton
      Left = 193
      Top = 125
      Width = 127
      Height = 22
      Caption = 'Inserir data selecionada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 193
      Top = 151
      Width = 127
      Height = 22
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 193
      Top = 99
      Width = 127
      Height = 22
      Caption = 'Agendar nova tarefa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Panel1: TPanel
      Left = 2
      Top = 174
      Width = 324
      Height = 8
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 6
      Top = 15
      Width = 175
      Height = 162
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
      TabOrder = 4
      object Calendario: TCalendar
        Left = 3
        Top = 25
        Width = 169
        Height = 134
        BorderStyle = bsNone
        PopupMenu = PopupMenu1
        StartOfWeek = 0
        TabOrder = 0
        OnChange = CalendarioChange
        OnDblClick = Button3Click
      end
      object PnData: TPanel
        Left = 2
        Top = 2
        Width = 170
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
          Left = 155
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
  object PopupMenu1: TPopupMenu
    Left = 53
    Top = 56
    object Agendartarefaparaestedia1: TMenuItem
      Caption = 'Agendar tarefa nesta data'
      OnClick = Button3Click
    end
  end
end
