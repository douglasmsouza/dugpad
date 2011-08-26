object F_NovoAtalho: TF_NovoAtalho
  Left = 283
  Top = 197
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Novo atalho'
  ClientHeight = 337
  ClientWidth = 362
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
    Width = 362
    Height = 337
    Caption = 'Escolha um programa...'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object DirectoryListBox1: TDirectoryListBox
      Left = 2
      Top = 92
      Width = 358
      Height = 134
      Ctl3D = False
      FileList = FileListBox1
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 0
      OnChange = DirectoryListBox1Change
    end
    object FileListBox1: TFileListBox
      Left = 2
      Top = 227
      Width = 358
      Height = 108
      BevelInner = bvLowered
      BevelOuter = bvRaised
      Ctl3D = False
      DragMode = dmAutomatic
      ItemHeight = 13
      Mask = '*.exe'
      ParentCtl3D = False
      TabOrder = 1
      OnChange = FileListBox1Change
      OnClick = FileListBox1Click
    end
    object DriveComboBox1: TDriveComboBox
      Left = 2
      Top = 72
      Width = 358
      Height = 19
      BevelKind = bkFlat
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnChange = DriveComboBox1Change
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 358
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label1: TLabel
        Left = 1
        Top = 4
        Width = 75
        Height = 13
        Caption = 'Nome do atalho'
      end
      object EdNomeAtalho: TEdit
        Left = 0
        Top = 18
        Width = 289
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = EdNomeAtalhoKeyPress
      end
      object Button1: TButton
        Left = 291
        Top = 15
        Width = 67
        Height = 22
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
end
