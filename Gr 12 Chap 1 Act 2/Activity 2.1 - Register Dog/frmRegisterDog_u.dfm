object frmDogShow: TfrmDogShow
  Left = 383
  Top = 181
  Width = 377
  Height = 395
  Caption = 'The Dog Show'
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
    Width = 345
    Height = 345
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblName: TLabel
      Left = 32
      Top = 24
      Width = 102
      Height = 16
      Caption = 'Name of the dog:'
    end
    object lblAge: TLabel
      Left = 32
      Top = 64
      Width = 90
      Height = 16
      Caption = 'Age of the dog:'
    end
    object lblWeight: TLabel
      Left = 32
      Top = 104
      Width = 113
      Height = 16
      Caption = 'Weight in kilogram:'
    end
    object edtName: TEdit
      Left = 168
      Top = 16
      Width = 145
      Height = 24
      TabOrder = 0
    end
    object edtWeight: TEdit
      Left = 168
      Top = 96
      Width = 49
      Height = 24
      TabOrder = 1
    end
    object btnRegister: TButton
      Left = 112
      Top = 136
      Width = 113
      Height = 33
      Caption = '&Register'
      TabOrder = 2
      OnClick = btnRegisterClick
    end
    object redOutput: TRichEdit
      Left = 32
      Top = 184
      Width = 281
      Height = 105
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object bmbReset: TBitBtn
      Left = 56
      Top = 304
      Width = 75
      Height = 25
      Caption = '&Reset'
      TabOrder = 4
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 208
      Top = 304
      Width = 75
      Height = 25
      TabOrder = 5
      Kind = bkClose
    end
    object sedAge: TSpinEdit
      Left = 168
      Top = 56
      Width = 49
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
    end
  end
end
