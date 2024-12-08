object Form7: TForm7
  Left = 355
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1086#1090#1080#1074#1085#1080#1082#1077
  ClientHeight = 234
  ClientWidth = 500
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
  object Label1: TLabel
    Left = 128
    Top = 8
    Width = 91
    Height = 46
    Caption = 'ALEX'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 56
    Width = 197
    Height = 25
    Caption = #1050#1083#1072#1089#1089' '#1080#1075#1088#1086#1082#1072' - '#1079#1074#1077#1079#1076#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 88
    Width = 167
    Height = 22
    Caption = #1042#1099#1080#1075#1088#1072#1085#1086' '#1084#1072#1090#1095#1077#1081' - 34'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 128
    Top = 112
    Width = 185
    Height = 22
    Caption = #1055#1088#1086#1080#1075#1088#1072#1085#1085#1086' '#1084#1072#1090#1095#1077#1081' - 10'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 136
    Width = 151
    Height = 22
    Caption = #1057#1099#1075#1088#1072#1085#1086' '#1074' '#1085#1080#1095#1100#1102'- 2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 376
    Top = 80
    Width = 49
    Height = 46
    Caption = '0%'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Sylfaen'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 113
    Height = 234
    Align = alLeft
    ParentBackground = False
    ParentColor = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object fhoto_panel: TPanel
      Left = 8
      Top = 64
      Width = 89
      Height = 113
      Caption = #1053#1077#1090' '#1060#1086#1090#1086
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      Visible = False
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 178
        Height = 115
        Proportional = True
        Visible = False
      end
    end
  end
  object shans: TProgressBar
    Left = 128
    Top = 216
    Width = 353
    Height = 12
    Position = 1
    TabOrder = 1
  end
end
