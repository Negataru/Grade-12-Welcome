object frmOpenSafe: TfrmOpenSafe
  Left = 192
  Top = 125
  Width = 478
  Height = 286
  Caption = 'Test codes to open safe'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object edtCode1: TLabeledEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 24
    EditLabel.Width = 44
    EditLabel.Height = 16
    EditLabel.Caption = 'Code 1'
    TabOrder = 0
  end
  object edtCode2: TLabeledEdit
    Left = 40
    Top = 112
    Width = 121
    Height = 24
    EditLabel.Width = 44
    EditLabel.Height = 16
    EditLabel.Caption = 'Code 2'
    TabOrder = 1
  end
  object edtCode3: TLabeledEdit
    Left = 40
    Top = 200
    Width = 121
    Height = 24
    EditLabel.Width = 44
    EditLabel.Height = 16
    EditLabel.Caption = 'Code 3'
    TabOrder = 2
  end
  object btnTestCodes: TButton
    Left = 224
    Top = 32
    Width = 89
    Height = 33
    Caption = 'Test codes'
    TabOrder = 3
    OnClick = btnTestCodesClick
  end
  object pnlResult: TPanel
    Left = 224
    Top = 104
    Width = 185
    Height = 41
    TabOrder = 4
  end
  object XPManifest1: TXPManifest
    Left = 752
    Top = 88
  end
end
