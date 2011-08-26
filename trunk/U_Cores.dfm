object F_Cores: TF_Cores
  Left = 387
  Top = 303
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 130
  ClientWidth = 211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 171
    Height = 130
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GridCores: TStringGrid
      Left = 0
      Top = 0
      Width = 171
      Height = 130
      Cursor = crHandPoint
      Align = alClient
      ColCount = 8
      Ctl3D = True
      DefaultColWidth = 20
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 6
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
      ParentCtl3D = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDblClick = GridCoresDblClick
      OnDrawCell = GridCoresDrawCell
      OnSelectCell = GridCoresSelectCell
    end
  end
  object Panel2: TPanel
    Left = 171
    Top = 0
    Width = 40
    Height = 130
    Align = alRight
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 2
      Width = 10
      Height = 13
      Caption = 'R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 3
      Top = 33
      Width = 10
      Height = 13
      Caption = 'G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 64
      Width = 9
      Height = 13
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 3
      Top = 98
      Width = 34
      Height = 14
      Cursor = crHandPoint
      Hint = 'Aplicar cor'
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = Shape1MouseDown
    end
    object Shape2: TShape
      Left = 3
      Top = 113
      Width = 34
      Height = 14
      Cursor = crHandPoint
      Hint = 'Aplicar cor'
      Brush.Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = Shape2MouseDown
    end
    object Edit1: TEdit
      Left = 3
      Top = 14
      Width = 23
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 0
      Text = '0'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 3
      Top = 45
      Width = 23
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 1
      Text = '0'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 3
      Top = 76
      Width = 23
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 2
      Text = '0'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object UpDown1: TUpDown
      Left = 26
      Top = 14
      Width = 11
      Height = 19
      Associate = Edit1
      Max = 255
      TabOrder = 3
    end
    object UpDown2: TUpDown
      Left = 26
      Top = 45
      Width = 11
      Height = 19
      Associate = Edit2
      Max = 255
      TabOrder = 4
    end
    object UpDown3: TUpDown
      Left = 26
      Top = 76
      Width = 11
      Height = 19
      Associate = Edit3
      Max = 255
      TabOrder = 5
    end
  end
end
