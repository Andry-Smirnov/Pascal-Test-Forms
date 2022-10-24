object NewForm: TNewForm
  Left = 823
  Top = 185
  BorderStyle = bsSingle
  Caption = 'New'
  ClientHeight = 210
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object CloseButton: TButton
    Left = 200
    Top = 168
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = CloseButtonClick
  end
end
