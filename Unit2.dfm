object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1084#1072#1089#1089#1080#1074
  ClientHeight = 332
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 153
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1089#1089#1080#1074#1072
  end
  object Edit1: TEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 40
    Top = 144
    Width = 177
    Height = 41
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1084#1072#1089#1089#1080#1074
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 216
    Width = 177
    Height = 41
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1085#1086#1074#1099#1081' '#1084#1072#1089#1089#1080#1074
    TabOrder = 2
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 276
    Top = 8
    Width = 293
    Height = 297
    ColCount = 3
    RowCount = 10
    TabOrder = 3
    ColWidths = (
      64
      109
      116)
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source='#1041#1072#1079#1072 +
      ' '#1076#1072#1085#1085#1099#1093'11.accdb;Mode=ReadWrite;Extended Properties="";Persist Se' +
      'curity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registr' +
      'y Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=6' +
      ';Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk' +
      ' Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Databa' +
      'se Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:' +
      'Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fa' +
      'lse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP' +
      '=False;Jet OLEDB:Support Complex Data=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 32
    Top = 280
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1080#1089#1093#1086#1076#1085#1099#1081'_'#1080'_'#1085#1086#1074#1099#1081'_'#1084#1072#1089#1089#1080#1074
    Left = 80
    Top = 264
    object ADOTable1ИндексыЭлементовИсходногоМассива: TIntegerField
      FieldName = #1048#1085#1076#1077#1082#1089#1099#1069#1083#1077#1084#1077#1085#1090#1086#1074#1048#1089#1093#1086#1076#1085#1086#1075#1086#1052#1072#1089#1089#1080#1074#1072
    end
    object ADOTable1ЭлементыИсходногоМассива: TFloatField
      FieldName = #1069#1083#1077#1084#1077#1085#1090#1099#1048#1089#1093#1086#1076#1085#1086#1075#1086#1052#1072#1089#1089#1080#1074#1072
    end
    object ADOTable1ИндексыЭлентовНовогоМассива: TIntegerField
      FieldName = #1048#1085#1076#1077#1082#1089#1099#1069#1083#1077#1085#1090#1086#1074#1053#1086#1074#1086#1075#1086#1052#1072#1089#1089#1080#1074#1072
    end
    object ADOTable1ЭлементыНовогоМассива: TFloatField
      FieldName = #1069#1083#1077#1084#1077#1085#1090#1099#1053#1086#1074#1086#1075#1086#1052#1072#1089#1089#1080#1074#1072
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 128
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 184
    Top = 264
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 232
    Top = 288
  end
end
