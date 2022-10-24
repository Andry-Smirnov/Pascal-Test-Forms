object New2Form: TNew2Form
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New2'
  ClientHeight = 309
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    461
    309)
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
