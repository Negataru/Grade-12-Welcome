object frmEmployee: TfrmEmployee
  Left = 205
  Top = 130
  Width = 440
  Height = 393
  Caption = 'Selling Properties'
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
    object lblCostPrice: TLabel
      Left = 24
      Top = 48
      Width = 67
      Height = 16
      Caption = 'Cost Price: '
    end
    object lblName: TLabel
      Left = 24
      Top = 16
      Width = 95
      Height = 16
      Caption = 'Name of Owner:'
    end
    object lblPerc: TLabel
      Left = 24
      Top = 80
      Width = 141
      Height = 16
      Caption = 'Percentage commision:'
    end
    object edtCostPrice: TEdit
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
    object edtPercComm: TEdit
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
    Width = 369
    Height = 129
    TabOrder = 1
    object redOutput: TRichEdit
      Left = 16
      Top = 8
      Width = 337
      Height = 113
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
    Left = 56
    Top = 320
    Width = 121
    Height = 25
    Caption = '&Reset '
    TabOrder = 2
    OnClick = bmbResetClick
    Kind = bkRetry
  end
  object bmbClose: TBitBtn
    Left = 200
    Top = 320
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
    Caption = '&Process Data'
    TabOrder = 4
    OnClick = btnCalculateClick
  end
end
