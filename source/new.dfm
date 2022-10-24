object NewForm: TNewForm
  Left = 823
  Top = 185
  BorderStyle = bsSingle
  Caption = 'New'
  ClientHeight = 240
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnDeactivate = FormDeactivate
  DesignSize = (
    320
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseButton: TButton
    Left = 229
    Top = 200
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = CloseButtonClick
  end
  object ShowFormButton: TButton
    Left = 125
    Top = 200
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show 2'
    TabOrder = 1
    OnClick = ShowFormButtonClick
  end
  object ShowModalFormButton: TButton
    Left = 24
    Top = 200
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show Modal 2'
    TabOrder = 2
    OnClick = ShowModalFormButtonClick
  end
end
