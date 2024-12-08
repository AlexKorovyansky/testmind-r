object Form1: TForm1
  Left = 202
  Top = 104
  HorzScrollBar.Visible = False
  VertScrollBar.ButtonSize = 20
  VertScrollBar.Increment = 50
  VertScrollBar.Margin = 20
  VertScrollBar.Size = 20
  VertScrollBar.ThumbSize = 29
  VertScrollBar.Visible = False
  AlphaBlendValue = 240
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TestMind 5.0.'
  ClientHeight = 566
  ClientWidth = 831
  Color = 16763541
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 161
    Align = alTop
    BevelInner = bvRaised
    ParentBackground = False
    ParentColor = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object m1: TLabel
      Left = 632
      Top = 32
      Width = 114
      Height = 20
      Caption = 'Music in game'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object m2: TLabel
      Left = 632
      Top = 96
      Width = 114
      Height = 13
      Caption = #1055#1088#1086#1080#1075#1088#1099#1074#1072#1077#1090#1089#1103' Track:'
    end
    object mname: TLabel
      Left = 632
      Top = 112
      Width = 3
      Height = 13
    end
    object speak: TLabel
      Left = 16
      Top = 56
      Width = 307
      Height = 20
      Caption = #1053#1072#1095#1085#1080#1090#1077' '#1085#1086#1074#1091#1102' '#1080#1075#1088#1091' '#1085#1072#1078#1072#1074' '#1082#1083#1072#1074#1080#1096#1091' F2...'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object h1: TLabel
      Left = 16
      Top = 32
      Width = 105
      Height = 20
      Caption = 'Help in game'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object hour: TLabel
      Left = 360
      Top = 24
      Width = 10
      Height = 39
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 712
      Top = 64
      Width = 33
      Height = 25
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 632
      Top = 64
      Width = 33
      Height = 25
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 672
      Top = 64
      Width = 33
      Height = 25
      Caption = '||'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object bloknot: TButton
      Left = 16
      Top = 104
      Width = 137
      Height = 41
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1073#1083#1086#1082#1085#1086#1090
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bloknotClick
    end
    object info: TButton
      Left = 160
      Top = 104
      Width = 137
      Height = 41
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = infoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 414
    Height = 405
    Align = alLeft
    BevelInner = bvRaised
    ParentBackground = False
    ParentColor = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object stat_u: TLabel
      Left = 120
      Top = 128
      Width = 6
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 176
      Top = 8
      Width = 4
      Height = 20
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object U_hod: TEdit
      Left = 144
      Top = 56
      Width = 100
      Height = 54
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnKeyPress = U_hodKeyPress
    end
  end
  object Panel3: TPanel
    Left = 414
    Top = 161
    Width = 417
    Height = 405
    Align = alClient
    Alignment = taLeftJustify
    BevelInner = bvRaised
    ParentBackground = False
    ParentColor = True
    TabOrder = 2
    object t_hod: TLabel
      Left = 88
      Top = 64
      Width = 12
      Height = 46
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lb: TLabel
      Left = 232
      Top = 64
      Width = 24
      Height = 46
      Caption = #1073
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lk: TLabel
      Left = 304
      Top = 64
      Width = 21
      Height = 46
      Caption = #1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object stat_t: TLabel
      Left = 120
      Top = 128
      Width = 6
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 208
      Top = 8
      Width = 4
      Height = 20
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object byk: TEdit
      Left = 192
      Top = 56
      Width = 32
      Height = 54
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnKeyPress = bykKeyPress
    end
    object kor: TEdit
      Left = 264
      Top = 56
      Width = 32
      Height = 54
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnKeyPress = korKeyPress
    end
    object progress: TProgressBar
      Left = 128
      Top = 376
      Width = 233
      Height = 17
      Max = 2
      TabOrder = 2
      Visible = False
    end
  end
  object mp1: TMediaPlayer
    Left = 752
    Top = 64
    Width = 29
    Height = 25
    VisibleButtons = [btPlay]
    Visible = False
    TabOrder = 3
  end
  object start: TButton
    Left = 344
    Top = 328
    Width = 137
    Height = 49
    Caption = #1053#1072#1095#1072#1090#1100' '#1080#1075#1088#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = startClick
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    object N1: TMenuItem
      Caption = #1048#1075#1088#1072
      object N2: TMenuItem
        Caption = #1053#1086#1074#1072#1103
        ShortCut = 113
        OnClick = N2Click
      end
      object N10: TMenuItem
        Caption = #1051#1091#1095#1096#1080#1077' '#1080#1075#1088#1086#1082#1080' '
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1055#1088#1072#1074#1080#1083#1072
        ShortCut = 114
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
        OnClick = N12Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N5: TMenuItem
        Caption = ' '#1047#1074#1091#1082'      '
        object N7: TMenuItem
          Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '
          ShortCut = 16449
          OnClick = N7Click
        end
        object N8: TMenuItem
          Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100'   '#1057
          ShortCut = 16474
          OnClick = N8Click
        end
      end
      object N6: TMenuItem
        Caption = ' '#1062#1074#1077#1090'    '
        OnClick = N6Click
      end
    end
    object N9: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N9Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 480
    Top = 16
  end
end
