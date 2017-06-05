object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 562
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 419
    Top = 117
    Width = 21
    Height = 13
    Caption = 'Cow'
  end
  object Label2: TLabel
    Left = 103
    Top = 117
    Width = 16
    Height = 13
    Caption = 'Bull'
  end
  object Label3: TLabel
    Left = 103
    Top = 29
    Width = 27
    Height = 13
    Caption = 'Saisie'
  end
  object Label4: TLabel
    Left = 432
    Top = 21
    Width = 42
    Height = 13
    Caption = 'Essai/Vie'
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 97
    Height = 561
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    OnChange = Memo1Change
  end
  object Esaisie: TEdit
    Left = 103
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Ebull: TEdit
    Left = 103
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Ecow: TEdit
    Left = 419
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Bcheck: TButton
    Left = 256
    Top = 88
    Width = 75
    Height = 25
    Caption = 'CHECK'
    TabOrder = 4
    OnClick = BcheckClick
  end
  object Braz: TButton
    Left = 120
    Top = 272
    Width = 75
    Height = 25
    Caption = 'R.A.Z'
    TabOrder = 5
    OnClick = BrazClick
  end
  object Bquit: TButton
    Left = 432
    Top = 272
    Width = 75
    Height = 25
    Caption = 'QUITTER'
    TabOrder = 6
    OnClick = BquitClick
  end
  object mot: TEdit
    Left = 103
    Top = 2
    Width = 121
    Height = 21
    TabOrder = 7
    OnChange = motChange
  end
  object casevie: TEdit
    Left = 423
    Top = 48
    Width = 51
    Height = 21
    TabOrder = 8
  end
end
