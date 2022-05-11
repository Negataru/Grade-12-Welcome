object frmCircle: TfrmCircle
  Left = 496
  Top = 281
  Width = 450
  Height = 350
  Caption = 'Circle Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDisplay: TPanel
    Left = 8
    Top = 8
    Width = 417
    Height = 297
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblRadius: TLabel
      Left = 88
      Top = 24
      Width = 145
      Height = 16
      Caption = 'Radius of the circle (cm):'
    end
    object edtRadius: TEdit
      Left = 240
      Top = 16
      Width = 49
      Height = 24
      TabOrder = 0
    end
    object btnCalculate: TButton
      Left = 144
      Top = 64
      Width = 113
      Height = 25
      Caption = '&Calculate'
      TabOrder = 1
      OnClick = btnCalculateClick
    end
    object redOutput: TRichEdit
      Left = 32
      Top = 104
      Width = 345
      Height = 121
      TabOrder = 2
    end
    object bmbReset: TBitBtn
      Left = 64
      Top = 256
      Width = 75
      Height = 25
      Caption = '&Reset'
      TabOrder = 3
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 264
      Top = 256
      Width = 75
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
  end
end
