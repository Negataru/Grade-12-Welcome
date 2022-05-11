object frmLearnerMarks: TfrmLearnerMarks
  Left = 633
  Top = 214
  Width = 345
  Height = 395
  Caption = 'Learner Marks'
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
    Width = 313
    Height = 345
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblName: TLabel
      Left = 24
      Top = 24
      Width = 40
      Height = 16
      Caption = 'Name:'
    end
    object lblYearMark: TLabel
      Left = 24
      Top = 64
      Width = 65
      Height = 16
      Caption = 'Year mark:'
    end
    object lblExamMark: TLabel
      Left = 24
      Top = 104
      Width = 70
      Height = 16
      Caption = 'Exam mark:'
    end
    object edtName: TEdit
      Left = 104
      Top = 16
      Width = 177
      Height = 24
      TabOrder = 0
    end
    object btnProcess: TButton
      Left = 168
      Top = 56
      Width = 113
      Height = 65
      Caption = '&Process data'
      TabOrder = 1
      OnClick = btnProcessClick
    end
    object redOutput: TRichEdit
      Left = 24
      Top = 136
      Width = 257
      Height = 145
      TabOrder = 2
    end
    object bmbReset: TBitBtn
      Left = 32
      Top = 304
      Width = 81
      Height = 25
      Caption = '&Reset'
      TabOrder = 3
      OnClick = bmbResetClick
      Kind = bkRetry
    end
    object bmbClose: TBitBtn
      Left = 192
      Top = 304
      Width = 81
      Height = 25
      TabOrder = 4
      Kind = bkClose
    end
    object sedYearMark: TSpinEdit
      Left = 104
      Top = 56
      Width = 49
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object sedExamMark: TSpinEdit
      Left = 104
      Top = 96
      Width = 49
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
    end
  end
end
