object frmHearRateCalculator: TfrmHearRateCalculator
  Left = 340
  Top = 190
  Width = 443
  Height = 429
  Caption = 'Heartrate Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object pnlInput: TPanel
    Left = 16
    Top = 16
    Width = 369
    Height = 81
    TabOrder = 0
    object lblYear: TLabel
      Left = 24
      Top = 48
      Width = 117
      Height = 16
      Caption = 'Year fo Birth (yyyy): '
    end
    object lblName: TLabel
      Left = 24
      Top = 16
      Width = 40
      Height = 16
      Caption = 'Name:'
    end
    object edtYear: TEdit
      Left = 184
      Top = 40
      Width = 169
      Height = 24
      TabOrder = 1
    end
    object edtName: TEdit
      Left = 184
      Top = 8
      Width = 169
      Height = 24
      TabOrder = 0
    end
  end
  object pnlOutput: TPanel
    Left = 8
    Top = 167
    Width = 377
    Height = 146
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 16
      Top = 16
      Width = 345
      Height = 113
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object bmbReset: TBitBtn
    Left = 64
    Top = 336
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 200
    Top = 336
    Width = 121
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object btnCalculate: TButton
    Left = 136
    Top = 112
    Width = 121
    Height = 33
    Caption = '&Process Data'
    TabOrder = 4
    OnClick = btnCalculateClick
  end
end
