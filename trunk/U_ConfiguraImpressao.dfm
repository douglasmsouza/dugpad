object F_ConfiguraImpressao: TF_ConfiguraImpressao
  Left = 307
  Top = 289
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o de impress'#227'o'
  ClientHeight = 117
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 113
    Caption = 'Margens (em mil'#237'metros)'
    TabOrder = 0
    object Ed_MargemEsq: TLabeledEdit
      Left = 16
      Top = 40
      Width = 65
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Esquerda'
      MaxLength = 6
      TabOrder = 0
      OnKeyPress = Ed_MargemEsqKeyPress
    end
    object Ed_MargemDir: TLabeledEdit
      Left = 105
      Top = 40
      Width = 64
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Direita'
      MaxLength = 6
      TabOrder = 1
      OnKeyPress = Ed_MargemEsqKeyPress
    end
    object Ed_MargemSup: TLabeledEdit
      Left = 16
      Top = 82
      Width = 65
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Superior'
      MaxLength = 6
      TabOrder = 2
      OnKeyPress = Ed_MargemEsqKeyPress
    end
    object Ed_MargemInf: TLabeledEdit
      Left = 105
      Top = 82
      Width = 64
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Inferior'
      MaxLength = 6
      TabOrder = 3
      OnKeyPress = Ed_MargemEsqKeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 195
    Top = 59
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 195
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
