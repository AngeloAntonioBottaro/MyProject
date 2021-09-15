unit View.Main;

interface

uses
  View.Base,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Controller.Interfaces;

type
  TViewMain = class(TViewBase)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrosClientes1: TMenuItem;
    CadastrosProdutos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FController: icontroller;

    procedure SystemTerminate;
    procedure LoadForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewMain: TViewMain;

implementation

{$R *.dfm}

uses Controller.Factory, Utils.MyLibrary, View.Login, Utils.Versao;

procedure TViewMain.FormCreate(Sender: TObject);
begin
   Utils.MyLibrary.ConfForm(Self, tpMaximizadoMinimizar);
   Self.Caption := Application.Title + TUtilsVersao.CompleteVersion;

   FController := TControllerFactory.New;
end;

procedure TViewMain.FormShow(Sender: TObject);
var
  vLogado: Boolean;
begin
   if(ViewLogin = nil)then Application.CreateForm(TViewLogin, ViewLogin);
   try
     vLogado := (ViewLogin.ShowModal = mrOk);
   finally
     FreeAndNil(ViewLogin);
   end;

   if(not vLogado)then
      Self.SystemTerminate;

   Self.LoadForm;
end;

procedure TViewMain.LoadForm;
begin
   FController
    .Forms
     .Main
      .LoadMenus;

   CadastrosClientes1.Visible := FController.Forms.Main.This.MenuCadastroCliente;
   CadastrosProdutos1.Visible := FController.Forms.Main.This.MenuCadastroProduto;
end;

procedure TViewMain.SystemTerminate;
begin
   Application.Terminate;
end;

end.
