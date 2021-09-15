object ViewMain: TViewMain
  Tag = 20
  Left = 0
  Top = 0
  Caption = 'ViewMain'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 24
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object CadastrosClientes1: TMenuItem
        Caption = 'Clientes'
      end
      object CadastrosProdutos1: TMenuItem
        Caption = 'Produtos'
      end
    end
  end
end
