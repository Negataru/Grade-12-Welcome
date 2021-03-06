object frmDate: TfrmDate
  Left = 192
  Top = 124
  Width = 587
  Height = 338
  Caption = 'Date System'
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
    Left = 8
    Top = 8
    Width = 337
    Height = 57
    TabOrder = 0
    object lblDate: TLabel
      Left = 24
      Top = 16
      Width = 149
      Height = 16
      Caption = 'Enter a date (dd/mm/yy): '
    end
    object edtDate: TEdit
      Left = 184
      Top = 8
      Width = 137
      Height = 24
      TabOrder = 0
    end
  end
  object pnlOutput: TPanel
    Left = 8
    Top = 112
    Width = 465
    Height = 114
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 16
      Top = 16
      Width = 425
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object bmbReset: TBitBtn
    Left = 208
    Top = 232
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 352
    Top = 232
    Width = 121
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object btnDayNumber: TButton
    Left = 112
    Top = 72
    Width = 129
    Height = 33
    Caption = '&Display information'
    TabOrder = 4
    OnClick = btnDayNumberClick
  end
end
