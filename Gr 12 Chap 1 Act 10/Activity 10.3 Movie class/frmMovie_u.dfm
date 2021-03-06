object frmDate: TfrmDate
  Left = 192
  Top = 123
  Width = 443
  Height = 462
  Caption = 'Rating Movies'
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
    Top = 8
    Width = 369
    Height = 153
    TabOrder = 0
    object lblTitleA: TLabel
      Left = 24
      Top = 16
      Width = 98
      Height = 16
      Caption = 'Title of movie A: '
    end
    object lblRatingA: TLabel
      Left = 24
      Top = 56
      Width = 213
      Height = 16
      Caption = 'Rating ( 1 - poor up to 10 - excellent):'
    end
    object lblLabelB: TLabel
      Left = 24
      Top = 96
      Width = 95
      Height = 16
      Caption = 'Title of movie B:'
    end
    object lblRatingB: TLabel
      Left = 24
      Top = 128
      Width = 213
      Height = 16
      Caption = 'Rating ( 1 - poor up to 10 - excellent):'
    end
    object edtTitleA: TEdit
      Left = 128
      Top = 8
      Width = 233
      Height = 24
      TabOrder = 0
    end
    object sedRatingA: TSpinEdit
      Left = 304
      Top = 48
      Width = 57
      Height = 26
      MaxValue = 10
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object edtTitleB: TEdit
      Left = 128
      Top = 88
      Width = 233
      Height = 24
      TabOrder = 2
    end
    object sedRatingB: TSpinEdit
      Left = 304
      Top = 120
      Width = 57
      Height = 26
      MaxValue = 10
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
  end
  object pnlOutput: TPanel
    Left = 24
    Top = 216
    Width = 378
    Height = 168
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 8
      Top = 8
      Width = 353
      Height = 145
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
    Left = 72
    Top = 390
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 216
    Top = 390
    Width = 121
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object btnProcess: TButton
    Left = 144
    Top = 177
    Width = 121
    Height = 33
    Caption = '&Process rating'
    TabOrder = 4
    OnClick = btnProcessClick
  end
end
