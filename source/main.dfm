object MainForm: TMainForm
  Left = 238
  Top = 164
  Caption = 'Main'
  ClientHeight = 459
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    559
    459)
  PixelsPerInch = 96
  TextHeight = 13
  object ShowFormButton: TButton
    Left = 356
    Top = 427
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show Form'
    TabOrder = 0
    OnClick = ShowFormButtonClick
  end
  object ExitButton: TButton
    Left = 476
    Top = 426
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Exit'
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object ShowModalFormButton: TButton
    Left = 228
    Top = 426
    Width = 115
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'ShowModal Form'
    TabOrder = 2
    OnClick = ShowModalFormButtonClick
  end
end
