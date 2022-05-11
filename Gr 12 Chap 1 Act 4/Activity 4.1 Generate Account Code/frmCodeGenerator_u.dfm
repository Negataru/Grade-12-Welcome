object frmCodeGenerator: TfrmCodeGenerator
  Left = 192
  Top = 124
  Width = 439
  Height = 325
  Caption = 'Account Code Generator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDisplay: TPanel
    Left = 8
    Top = 8
    Width = 409
    Height = 273
    TabOrder = 0
    object lblSurname: TLabel
      Left = 24
      Top = 24
      Width = 57
      Height = 16
      Caption = 'Surname:'
    end
    object lblDOB: TLabel
      Left = 24
      Top = 64
      Width = 157
      Height = 16
      Caption = 'Date of Birth(yyyy/mm/dd):'
    end
    object lblAccCode: TLabel
      Left = 24
      Top = 168
      Width = 119
      Height = 20
      Caption = 'Account Code:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtSurname: TEdit
      Left = 112
      Top = 16
      Width = 241
      Height = 24
      TabOrder = 0
    end
    object bmbCreate: TBitBtn
      Left = 200
      Top = 104
      Width = 153
      Height = 41
      Caption = 'Create C&ode'
      TabOrder = 1
      OnClick = bmbCreateClick
      Kind = bkOK
    end
    object bmbReset: TBitBtn
      Left = 56
      Top = 224
      Width = 113
      Height = 33
      Caption = '&Reset'
      TabOrder = 2
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 216
      Top = 224
      Width = 113
      Height = 33
      TabOrder = 3
      Kind = bkClose
    end
    object edtDOB: TEdit
      Left = 200
      Top = 56
      Width = 153
      Height = 24
      TabOrder = 4
    end
  end
end
