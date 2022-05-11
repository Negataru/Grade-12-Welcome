object frmDaysPayment: TfrmDaysPayment
  Left = 468
  Top = 142
  Width = 594
  Height = 377
  Caption = 'Payment System'
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
    Height = 113
    TabOrder = 0
    object lblDate: TLabel
      Left = 24
      Top = 48
      Width = 157
      Height = 16
      Caption = 'Date of query (dd/mm/yy): '
    end
    object lblName: TLabel
      Left = 24
      Top = 16
      Width = 118
      Height = 16
      Caption = 'Name of employee:'
    end
    object lblPayment: TLabel
      Left = 24
      Top = 80
      Width = 105
      Height = 16
      Caption = 'Payment per day:'
    end
    object edtDate: TEdit
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
    object edtPayment: TEdit
      Left = 184
      Top = 72
      Width = 169
      Height = 24
      TabOrder = 2
    end
  end
  object pnlOutput: TPanel
    Left = 16
    Top = 184
    Width = 545
    Height = 113
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 16
      Top = 16
      Width = 513
      Height = 81
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
    Left = 64
    Top = 304
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 200
    Top = 304
    Width = 121
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object btnCalculate: TButton
    Left = 136
    Top = 144
    Width = 121
    Height = 33
    Caption = 'Calculate &Amount'
    TabOrder = 4
    OnClick = btnCalculateClick
  end
end
