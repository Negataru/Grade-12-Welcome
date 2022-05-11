object frmWaiter: TfrmWaiter
  Left = 192
  Top = 124
  Width = 573
  Height = 329
  Caption = 'Waiter Payment'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lblName: TLabel
    Left = 32
    Top = 16
    Width = 40
    Height = 16
    Caption = 'Name:'
  end
  object lblHours: TLabel
    Left = 32
    Top = 64
    Width = 86
    Height = 16
    Caption = 'Hours worked:'
  end
  object lblRate: TLabel
    Left = 32
    Top = 112
    Width = 81
    Height = 16
    Caption = 'Rate per hour'
  end
  object edtName: TEdit
    Left = 32
    Top = 32
    Width = 137
    Height = 24
    TabOrder = 0
  end
  object edtHours: TEdit
    Left = 32
    Top = 80
    Width = 137
    Height = 24
    TabOrder = 1
  end
  object edtRate: TEdit
    Left = 32
    Top = 128
    Width = 137
    Height = 24
    TabOrder = 2
  end
  object btnInfo: TButton
    Left = 32
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Display &Personal Info'
    TabOrder = 3
    OnClick = btnInfoClick
  end
  object bmbNext: TBitBtn
    Left = 32
    Top = 224
    Width = 137
    Height = 25
    Caption = '&Next waiter'
    TabOrder = 4
    OnClick = bmbNextClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 32
    Top = 256
    Width = 137
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
  object btnAllInfo: TButton
    Left = 32
    Top = 192
    Width = 137
    Height = 25
    Caption = 'Display &All Info'
    TabOrder = 6
    OnClick = btnAllInfoClick
  end
  object pnlWage: TPanel
    Left = 184
    Top = 192
    Width = 353
    Height = 49
    TabOrder = 7
  end
end
