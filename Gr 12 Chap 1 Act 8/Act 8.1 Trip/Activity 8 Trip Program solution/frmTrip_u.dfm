object frmTrip: TfrmTrip
  Left = 220
  Top = 142
  Width = 383
  Height = 425
  Caption = 'Travel System'
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
    Width = 345
    Height = 377
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblDate: TLabel
      Left = 24
      Top = 24
      Width = 135
      Height = 16
      Caption = 'Date of trip(dd/mm/yy):'
    end
    object lblDistance: TLabel
      Left = 24
      Top = 88
      Width = 90
      Height = 16
      Caption = 'Distance in km:'
    end
    object lblDriver: TLabel
      Left = 24
      Top = 56
      Width = 91
      Height = 16
      Caption = 'Name of driver:'
    end
    object edtDate: TEdit
      Left = 168
      Top = 16
      Width = 153
      Height = 24
      TabOrder = 0
    end
    object btnProcess: TButton
      Left = 96
      Top = 120
      Width = 121
      Height = 41
      Caption = '&Process data'
      TabOrder = 1
      OnClick = btnProcessClick
    end
    object redOutput: TRichEdit
      Left = 24
      Top = 176
      Width = 257
      Height = 145
      TabOrder = 2
    end
    object bmbReset: TBitBtn
      Left = 40
      Top = 336
      Width = 81
      Height = 25
      Caption = '&Reset'
      TabOrder = 3
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 192
      Top = 336
      Width = 81
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
    object sedDistance: TSpinEdit
      Left = 168
      Top = 80
      Width = 49
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object edtDriver: TEdit
      Left = 168
      Top = 48
      Width = 153
      Height = 24
      TabOrder = 6
    end
  end
end
