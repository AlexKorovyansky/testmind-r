object Form2: TForm2
  Left = 243
  Top = 253
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 267
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 128
    Height = 16
    Caption = #1042#1099#1073#1080#1088#1080#1090#1077' '#1090#1080#1087' '#1080#1075#1088#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 72
    Height = 16
    Caption = 'Auto-'#1086#1090#1074#1077#1090':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 160
    Top = 184
    Width = 289
    Height = 39
    Caption = 
      'Auto-'#1086#1090#1074#1077#1090' '#1074#1082#1083#1102#1095#1072#1090#1100' '#1085#1077' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086', '#1087#1088#1080' '#1077#1075#1086' '#1074#1082#1083#1102#1095#1077#1085#1080#1080#13#10#1082#1086#1084#1087#1100#1102#1090#1077#1088 +
      ' '#1073#1091#1076#1077#1090' '#1089#1072#1084' '#1086#1090#1074#1077#1095#1072#1090#1100' '#1085#1072' '#1089#1074#1086#1080' '#1093#1086#1076#1099', '#1087#1086#1101#1090#1086#1084#1091#13#10#1087#1077#1088#1077#1076' '#1080#1075#1088#1086#1081' '#1074#1099' '#1073#1091#1076#1077#1090#1077 +
      ' '#1086#1073#1103#1079#1072#1085#1099' '#1074#1074#1077#1089#1090#1080' '#1089#1074#1086#1105' '#1095#1080#1089#1083#1086
  end
  object r2: TRadioButton
    Left = 264
    Top = 40
    Width = 129
    Height = 17
    Caption = #1041#1099#1089#1090#1088#1072#1103' '#1080#1075#1088#1072
    TabOrder = 0
    OnClick = r2Click
  end
  object r1: TRadioButton
    Left = 32
    Top = 40
    Width = 89
    Height = 17
    Caption = #1050#1072#1084#1087#1072#1085#1080#1103
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = r1Click
  end
  object Button1: TButton
    Left = 360
    Top = 232
    Width = 89
    Height = 25
    Caption = #1048#1075#1088#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 232
    Width = 89
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 64
    Width = 209
    Height = 105
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 4
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 86
      Height = 13
      Caption = #1044#1083#1080#1085#1072' '#1082#1072#1084#1087#1072#1085#1080#1080
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 66
      Height = 13
      Caption = #1044#1083#1080#1085#1072' '#1089#1077#1088#1080#1080
    end
    object bk: TComboBox
      Left = 120
      Top = 13
      Width = 57
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '2'
      Items.Strings = (
        '2'
        '3'
        '4'
        '5')
    end
    object bs: TComboBox
      Left = 120
      Top = 54
      Width = 57
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object Panel2: TPanel
    Left = 256
    Top = 64
    Width = 201
    Height = 81
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 5
    Visible = False
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 50
      Height = 13
      Caption = #1042#1072#1096' '#1088#1072#1085#1075':'
    end
    object r5: TRadioButton
      Left = 24
      Top = 24
      Width = 97
      Height = 25
      Caption = #1058#1072#1083#1072#1085#1090
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object r6: TRadioButton
      Left = 24
      Top = 45
      Width = 97
      Height = 25
      Caption = #1047#1074#1077#1079#1076#1072
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 200
    Width = 129
    Height = 49
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 6
    object r4: TRadioButton
      Left = 16
      Top = 24
      Width = 89
      Height = 17
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100
      TabOrder = 0
    end
    object r3: TRadioButton
      Left = 16
      Top = 8
      Width = 97
      Height = 17
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
end
