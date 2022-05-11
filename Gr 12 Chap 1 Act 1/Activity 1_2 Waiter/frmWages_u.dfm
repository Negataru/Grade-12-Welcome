object frmWaiter: TfrmWaiter
  Left = 192
  Top = 124
  Width = 437
  Height = 293
  Caption = 'Waiter Payment'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblName: TLabel
    Left = 32
    Top = 16
    Width = 150
    Height = 16
    Caption = 'Name:'
  end
  object lblHours: TLabel
    Left = 32
    Top = 68
    Width = 150
    Height = 16
    Caption = 'Hours worked:'
  end
  object lbkRate: TLabel
    Left = 32
    Top = 120
    Width = 150
    Height = 16
    Caption = 'Rate per hour'
  end
  object edtName: TEdit
    Left = 32
    Top = 42
    Width = 150
    Height = 24
    TabOrder = 0
  end
  object edtHours: TEdit
    Left = 32
    Top = 94
    Width = 150
    Height = 24
    TabOrder = 1
  end
  object edtRate: TEdit
    Left = 32
    Top = 146
    Width = 150
    Height = 24
    TabOrder = 2
  end
  object btnCalc: TButton
    Left = 224
    Top = 41
    Width = 150
    Height = 25
    Caption = 'Calulate &wage'
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object pnlWage: TPanel
    Left = 32
    Top = 184
    Width = 337
    Height = 41
    TabOrder = 4
  end
  object bmbNext: TBitBtn
    Left = 224
    Top = 93
    Width = 150
    Height = 25
    Caption = '&Next waiter'
    TabOrder = 5
    OnClick = bmbNextClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 224
    Top = 145
    Width = 150
    Height = 25
    TabOrder = 6
    Kind = bkClose
  end
end
