object frmBankAccount: TfrmBankAccount
  Left = 300
  Top = 164
  Width = 418
  Height = 502
  Caption = 'Bank Account'
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
  object pnlDisplay: TPanel
    Left = 16
    Top = 8
    Width = 377
    Height = 449
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblAccNumber: TLabel
      Left = 40
      Top = 24
      Width = 102
      Height = 16
      Caption = 'Account Number:'
    end
    object btnCreateAccount: TButton
      Left = 112
      Top = 72
      Width = 145
      Height = 33
      Caption = 'C&reate an Account'
      TabOrder = 1
      OnClick = btnCreateAccountClick
    end
    object bmbReset: TBitBtn
      Left = 16
      Top = 360
      Width = 345
      Height = 33
      Caption = '&Reset'
      TabOrder = 2
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 16
      Top = 400
      Width = 345
      Height = 33
      TabOrder = 3
      Kind = bkClose
    end
    object gpbTransactions: TGroupBox
      Left = 16
      Top = 120
      Width = 345
      Height = 105
      Caption = 'Transactions'
      TabOrder = 4
      Visible = False
      object lblAmount: TLabel
        Left = 16
        Top = 24
        Width = 99
        Height = 16
        Caption = 'Enter an amount:'
      end
      object edtAmount: TEdit
        Left = 16
        Top = 48
        Width = 185
        Height = 24
        TabOrder = 0
      end
      object btnDeposit: TButton
        Left = 224
        Top = 16
        Width = 105
        Height = 33
        Caption = '&Deposit'
        TabOrder = 1
        OnClick = btnDepositClick
      end
      object btnWithdraw: TButton
        Left = 224
        Top = 56
        Width = 105
        Height = 33
        Caption = '&Withdraw'
        TabOrder = 2
        OnClick = btnWithdrawClick
      end
    end
    object gpbView: TGroupBox
      Left = 16
      Top = 232
      Width = 345
      Height = 121
      Caption = 'View information'
      TabOrder = 5
      Visible = False
      object btnAll: TButton
        Left = 224
        Top = 72
        Width = 105
        Height = 33
        Caption = 'View &All'
        TabOrder = 0
        OnClick = btnAllClick
      end
      object btnBalance: TButton
        Left = 224
        Top = 24
        Width = 105
        Height = 33
        Caption = 'View &Balance'
        TabOrder = 1
        OnClick = btnBalanceClick
      end
      object redOutput: TRichEdit
        Left = 16
        Top = 24
        Width = 193
        Height = 89
        TabOrder = 2
      end
    end
    object edtAccNumber: TEdit
      Left = 160
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 0
    end
  end
end
