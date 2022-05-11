object frmDate: TfrmDate
  Left = 470
  Top = 195
  Width = 423
  Height = 382
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
    Height = 89
    TabOrder = 0
    object lblTitle: TLabel
      Left = 24
      Top = 16
      Width = 107
      Height = 16
      Caption = 'Title of the movie: '
    end
    object lblRating: TLabel
      Left = 24
      Top = 56
      Width = 213
      Height = 16
      Caption = 'Rating ( 1 - poor up to 10 - excellent):'
    end
    object edtTitle: TEdit
      Left = 136
      Top = 8
      Width = 225
      Height = 24
      TabOrder = 0
    end
    object sedRating: TSpinEdit
      Left = 304
      Top = 48
      Width = 57
      Height = 26
      MaxValue = 10
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
  end
  object pnlOutput: TPanel
    Left = 16
    Top = 160
    Width = 369
    Height = 113
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 16
      Top = 16
      Width = 337
      Height = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object bmbReset: TBitBtn
    Left = 64
    Top = 288
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 200
    Top = 288
    Width = 121
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object btnProcess: TButton
    Left = 136
    Top = 112
    Width = 121
    Height = 33
    Caption = '&Process rating'
    TabOrder = 4
    OnClick = btnProcessClick
  end
end
