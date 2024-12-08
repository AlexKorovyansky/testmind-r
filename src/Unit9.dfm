object Form9: TForm9
  Left = 351
  Top = 336
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 168
  ClientWidth = 433
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
  object l_winer: TLabel
    Left = 8
    Top = 8
    Width = 292
    Height = 28
    Caption = #1055#1086#1073#1077#1076#1072' '#1080#1075#1088#1086#1082#1072'(alex) '#1085#1072' 5 '#1093#1086#1076#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object l_time: TLabel
    Left = 8
    Top = 40
    Width = 122
    Height = 28
    Caption = #1042#1088#1077#1084#1103' '#1080#1075#1088#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object l_chet: TLabel
    Left = 8
    Top = 80
    Width = 132
    Height = 28
    Caption = #1057#1095#1105#1090' '#1074' '#1089#1077#1088#1080#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object time1: TLabel
    Left = 144
    Top = 32
    Width = 96
    Height = 44
    Caption = '0:00:10'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chet: TLabel
    Left = 152
    Top = 72
    Width = 40
    Height = 44
    Caption = '3:2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l_next: TButton
    Left = 240
    Top = 128
    Width = 129
    Height = 33
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = l_nextClick
  end
  object Button2: TButton
    Left = 88
    Top = 127
    Width = 137
    Height = 33
    Caption = #1063#1080#1089#1083#1086' TestMind'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
end
