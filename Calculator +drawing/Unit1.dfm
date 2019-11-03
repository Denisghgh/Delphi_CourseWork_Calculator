object Form1: TForm1
  Left = 251
  Top = 109
  Width = 1033
  Height = 504
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 128
    Width = 74
    Height = 29
    Caption = #1042#1099#1074#1086#1076
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 232
    Width = 169
    Height = 20
    Caption = #1044#1054#1055#1054#1051#1053#1048#1058#1045#1051#1068#1053#1067#1045
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 40
    Width = 4
    Height = 15
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Britannic Bold'
    Font.Style = [fsItalic]
    ParentFont = False
    OnClick = Label3Click
  end
  object DrawGraph: TImage
    Left = 512
    Top = 8
    Width = 500
    Height = 400
    OnClick = DrawGraphClick
  end
  object Label4: TLabel
    Left = 216
    Top = 80
    Width = 92
    Height = 20
    Caption = 'X: '#1054#1058'  / '#1044#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 264
    Top = 104
    Width = 33
    Height = 20
    Caption = #1064#1072#1075
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 176
    Top = 56
    Width = 129
    Height = 13
    Caption = #1050#1086#1101#1092#1092#1080#1094#1077#1085#1090' '#1056#1072#1089#1090#1103#1078#1077#1085#1080#1103
  end
  object Button1: TButton
    Left = 184
    Top = 232
    Width = 75
    Height = 25
    Caption = '1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 232
    Width = 75
    Height = 25
    Caption = '2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 344
    Top = 232
    Width = 75
    Height = 25
    Caption = '3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 272
    Width = 75
    Height = 25
    Caption = '4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 264
    Top = 272
    Width = 75
    Height = 25
    Caption = '5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 344
    Top = 272
    Width = 75
    Height = 25
    Caption = '6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 184
    Top = 312
    Width = 75
    Height = 25
    Caption = '7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 264
    Top = 312
    Width = 75
    Height = 25
    Caption = '8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 344
    Top = 312
    Width = 75
    Height = 25
    Caption = '9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 264
    Top = 344
    Width = 75
    Height = 25
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 432
    Top = 312
    Width = 75
    Height = 57
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 424
    Top = 272
    Width = 75
    Height = 25
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 424
    Top = 232
    Width = 75
    Height = 25
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 184
    Top = 192
    Width = 75
    Height = 25
    Caption = 'C'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 264
    Top = 192
    Width = 75
    Height = 25
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 344
    Top = 192
    Width = 75
    Height = 25
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 424
    Top = 192
    Width = 75
    Height = 25
    Caption = '<---'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 344
    Top = 344
    Width = 75
    Height = 25
    Caption = '.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 104
    Top = 256
    Width = 75
    Height = 25
    Caption = '!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 24
    Top = 256
    Width = 75
    Height = 25
    Caption = '^ '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = Button20Click
  end
  object Button22: TButton
    Left = 24
    Top = 192
    Width = 75
    Height = 25
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 104
    Top = 192
    Width = 75
    Height = 25
    Caption = ')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = Button23Click
  end
  object Button21: TButton
    Left = 24
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Sin('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = Button21Click
  end
  object Button24: TButton
    Left = 104
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cos('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = Button24Click
  end
  object A: TEdit
    Left = 184
    Top = 160
    Width = 313
    Height = 28
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
    OnKeyPress = AKeyPress
  end
  object Button26: TButton
    Left = 104
    Top = 320
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = Button26Click
  end
  object Button27: TButton
    Left = 312
    Top = 16
    Width = 75
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 26
    OnClick = Button27Click
  end
  object Button28: TButton
    Left = 408
    Top = 16
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 27
    OnClick = Button28Click
  end
  object Button29: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button29'
    TabOrder = 28
    OnClick = Button29Click
  end
  object Edit1: TEdit
    Left = 312
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 29
    Text = '-300'
  end
  object Edit2: TEdit
    Left = 312
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 30
    Text = '5'
  end
  object Edit3: TEdit
    Left = 400
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 31
    Text = '300'
  end
  object Edit4: TEdit
    Left = 312
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 32
    Text = '30'
  end
  object Button30: TButton
    Left = 40
    Top = 8
    Width = 75
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 33
    OnClick = Button30Click
  end
  object Button31: TButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 34
    OnClick = Button31Click
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 8
  end
end
