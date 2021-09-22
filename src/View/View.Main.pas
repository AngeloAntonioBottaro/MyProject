unit View.Main;

interface

uses
  View.Base,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ComCtrls, Vcl.StdCtrls,
  Controller.Factory;

type
  TViewMain = class(TViewBase)
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrosClientes1: TMenuItem;
    CadastrosProdutos1: TMenuItem;
    StatusBar: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
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

uses Utils.MyLibrary, View.Login, Utils.Versao, Utils.Variables;

procedure TViewMain.FormCreate(Sender: TObject);
begin
   Utils.MyLibrary.ConfForm(Self, tpMaximizadoMinimizar);
   Self.Caption := Application.Title + TUtilsVersao.CompleteVersion;
end;

procedure TViewMain.FormShow(Sender: TObject);
var
 vLogginIn: Boolean;
begin
   if(ViewLogin = nil)then Application.CreateForm(TViewLogin, ViewLogin);
   try
     vLogginIn := ViewLogin.ShowModal = mrOk;
   finally
     FreeAndNil(ViewLogin);
   end;

   if(not vLogginIn)then Self.SystemTerminate;

   Self.LoadForm;
end;

procedure TViewMain.LoadForm;
var
  vController: iControllerFactory;
begin
   vController := TControllerFactory.New;

   //STATUS BAR
   StatusBar.Panels[0].Text := 'Usuário: ' + Utils.Variables.V_UsuarioNome;
   StatusBar.Panels[1].Text := 'Status 02';
   StatusBar.Panels[2].Text := 'Status 03';

   {vController
    .Forms
     .Main
      .LoadParameters;

   //MENUS
   CadastrosClientes1.Visible := vController.Forms.Main.This.PermissoesUsuario.CadastroCliente;
   CadastrosProdutos1.Visible := vController.Forms.Main.This.PermissoesUsuario.CadastroProduto; }
end;

procedure TViewMain.SystemTerminate;
begin
   Application.Terminate;
end;

end.
