object frmCricket: TfrmCricket
  Left = 227
  Top = 112
  Width = 693
  Height = 388
  Caption = 'Cricket Scoreboard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDisplay: TPanel
    Left = 8
    Top = 9
    Width = 657
    Height = 329
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object redProteas: TRichEdit
      Left = 8
      Top = 16
      Width = 273
      Height = 105
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object btnSingleProteas: TButton
      Left = 96
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Single'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSingleProteasClick
    end
    object btnBoundaryProteas: TButton
      Left = 96
      Top = 176
      Width = 75
      Height = 25
      Caption = '&Boundary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnBoundaryProteasClick
    end
    object btnSixProteas: TButton
      Left = 96
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Si&x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnSixProteasClick
    end
    object redOpponent: TRichEdit
      Left = 344
      Top = 16
      Width = 281
      Height = 105
      Alignment = taCenter
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object btnScoreOpp: TButton
      Left = 448
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Si&ngle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnScoreOppClick
    end
    object btnBoundaryOpp: TButton
      Left = 448
      Top = 176
      Width = 75
      Height = 25
      Caption = 'B&oundary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnBoundaryOppClick
    end
    object btnSixOpp: TButton
      Left = 448
      Top = 208
      Width = 75
      Height = 25
      Caption = 'S&ix'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnSixOppClick
    end
    object bmbReset: TBitBtn
      Left = 280
      Top = 256
      Width = 75
      Height = 25
      Caption = '&Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 280
      Top = 288
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Kind = bkClose
    end
    object btnBatsmanPro: TButton
      Left = 88
      Top = 240
      Width = 97
      Height = 25
      Caption = 'Batsman &Out'
      TabOrder = 10
      OnClick = btnBatsmanProClick
    end
    object btnBatsmanOpp: TButton
      Left = 440
      Top = 240
      Width = 97
      Height = 25
      Cancel = True
      Caption = 'Batsman O&ut'
      TabOrder = 11
      OnClick = btnBatsmanOppClick
    end
  end
end
