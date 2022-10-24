object MainForm: TMainForm
  Left = 328
  Top = 164
  Caption = 'Main'
  ClientHeight = 328
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    479
    328)
  PixelsPerInch = 96
  TextHeight = 13
  object ExitButton: TButton
    Left = 384
    Top = 288
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Exit'
    TabOrder = 0
    OnClick = ExitButtonClick
  end
  object ShowFormButton: TButton
    Left = 272
    Top = 256
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show'
    TabOrder = 1
    OnClick = ShowFormButtonClick
  end
  object ShowModalFormButton: TButton
    Left = 160
    Top = 256
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show Modal'
    TabOrder = 2
    OnClick = ShowModalFormButtonClick
  end
  object ShowFormButton1: TButton
    Left = 272
    Top = 288
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show 2'
    TabOrder = 3
    OnClick = ShowFormButton1Click
  end
  object ShowModalFormButton1: TButton
    Left = 160
    Top = 288
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show Modal 2'
    TabOrder = 4
    OnClick = ShowModalFormButton1Click
  end
end
