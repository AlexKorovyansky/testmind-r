object Form3: TForm3
  Left = 416
  Top = 464
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1062#1074#1077#1090
  ClientHeight = 131
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 136
    Top = 24
    Width = 169
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1073#1072#1079#1086#1074#1099#1081' '#1094#1074#1077#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 72
    Width = 169
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1092#1086#1085#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object Animate1: TAnimate
    Left = 16
    Top = 24
    Width = 100
    Height = 77
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    StopFrame = 110
  end
  object cd: TColorDialog
    Color = clWhite
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 288
    Top = 104
  end
end
