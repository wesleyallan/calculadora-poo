object CalculatorForm: TCalculatorForm
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 107
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object EdtVal1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EdtVal2: TEdit
    Left = 170
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object EdtResult: TEdit
    Left = 312
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object BtSoma: TButton
    Left = 40
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Soma'
    TabOrder = 3
    OnClick = BtSomaClick
  end
  object BtSubt: TButton
    Left = 136
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Subtra'#231#227'o'
    TabOrder = 4
    OnClick = BtSubtClick
  end
  object BtMult: TButton
    Left = 232
    Top = 64
    Width = 90
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    TabOrder = 5
    OnClick = BtMultClick
  end
  object BtDiv: TButton
    Left = 336
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Divis'#227'o'
    TabOrder = 6
    OnClick = BtDivClick
  end
end
