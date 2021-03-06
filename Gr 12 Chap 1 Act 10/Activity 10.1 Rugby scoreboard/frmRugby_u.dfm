object frmRugby: TfrmRugby
  Left = 227
  Top = 112
  Caption = 'Rugby Scoreboard'
  ClientHeight = 349
  ClientWidth = 677
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
  object pnlBokke: TPanel
    Left = 8
    Top = 9
    Width = 657
    Height = 329
    Color = clGreen
    TabOrder = 0
    object redBokke: TRichEdit
      Left = 8
      Top = 16
      Width = 273
      Height = 73
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object btnScoreBokke: TButton
      Left = 96
      Top = 120
      Width = 75
      Height = 25
      Caption = '&Score'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnScoreBokkeClick
    end
    object btnConvertBokke: TButton
      Left = 96
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Con&vert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConvertBokkeClick
    end
    object btnDropKickBokke: TButton
      Left = 96
      Top = 232
      Width = 75
      Height = 25
      Caption = '&DropKick'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnDropKickBokkeClick
    end
    object redOpponent: TRichEdit
      Left = 344
      Top = 16
      Width = 281
      Height = 73
      Alignment = taCenter
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object btnScoreOpp: TButton
      Left = 448
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Sc&ore'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnScoreOppClick
    end
    object btnConvertOpp: TButton
      Left = 448
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Co&nvert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnConvertOppClick
    end
    object btnDropKickOpp: TButton
      Left = 448
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Drop&Kick'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnDropKickOppClick
    end
    object bmbClose: TBitBtn
      Left = 280
      Top = 272
      Width = 75
      Height = 25
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkClose
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 8
    end
  end
end
