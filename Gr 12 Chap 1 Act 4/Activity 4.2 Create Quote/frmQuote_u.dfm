object frmQuote: TfrmQuote
  Left = 192
  Top = 124
  Width = 423
  Height = 390
  Caption = 'Quote Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object pnlInput: TPanel
    Left = 16
    Top = 8
    Width = 369
    Height = 105
    TabOrder = 0
    object lblLength: TLabel
      Left = 24
      Top = 32
      Width = 188
      Height = 16
      Caption = 'Enter the length of the room (m): '
    end
    object lblWidth: TLabel
      Left = 24
      Top = 72
      Width = 179
      Height = 16
      Caption = 'Enter the width of the room (m):'
    end
    object edtLength: TEdit
      Left = 232
      Top = 24
      Width = 73
      Height = 24
      TabOrder = 0
    end
    object edtWidth: TEdit
      Left = 232
      Top = 64
      Width = 73
      Height = 24
      TabOrder = 1
    end
  end
  object pnlOutput: TPanel
    Left = 16
    Top = 160
    Width = 377
    Height = 153
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 8
      Top = 16
      Width = 361
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object bmbGenerateQuote: TBitBtn
    Left = 128
    Top = 120
    Width = 129
    Height = 33
    Caption = '&Generate Quote'
    TabOrder = 2
    OnClick = bmbGenerateQuoteClick
    Kind = bkOK
  end
  object bmbReset: TBitBtn
    Left = 88
    Top = 320
    Width = 75
    Height = 25
    Caption = '&Reset '
    TabOrder = 3
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 216
    Top = 320
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkClose
  end
end
