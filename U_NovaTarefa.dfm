object F_NovaTarefa: TF_NovaTarefa
  Left = 264
  Top = 263
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Nova tarefa'
  ClientHeight = 99
  ClientWidth = 513
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
    Width = 513
    Height = 99
    Align = alClient
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 433
      Top = 70
      Width = 75
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 433
      Top = 46
      Width = 75
      Height = 22
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Memo1: TLabeledEdit
      Left = 8
      Top = 73
      Width = 421
      Height = 19
      Ctl3D = False
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Tarefa'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = Memo1Change
      OnKeyPress = Memo1KeyPress
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 33
      Width = 97
      Height = 21
      Date = 39485.611689629630000000
      Format = 'dd/MM/yyyy'
      Time = 39485.611689629630000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
