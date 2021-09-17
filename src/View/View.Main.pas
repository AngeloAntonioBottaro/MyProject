unit View.Main;

interface

uses
  View.Base,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TViewMain = class(TViewBase)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrosClientes1: TMenuItem;
    CadastrosProdutos1: TMenuItem;
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

uses Utils.MyLibrary, View.Login, Utils.Versao;

procedure TViewMain.FormCreate(Sender: TObject);
begin
   Utils.MyLibrary.ConfForm(Self, tpMaximizadoMinimizar);
   Self.Caption := Application.Title + TUtilsVersao.CompleteVersion;
end;

procedure TViewMain.FormShow(Sender: TObject);
begin
   if(ViewLogin = nil)then Application.CreateForm(TViewLogin, ViewLogin);
   try
     ViewLogin.ShowModal;
   finally
     FreeAndNil(ViewLogin);
   end;

   //if(not FController.Forms.Login.IsLogged)then Self.SystemTerminate;

   Self.LoadForm;
end;

procedure TViewMain.LoadForm;
begin
   FController
    .Forms
     .Main
      .LoadParameters;

   //MENUS
   CadastrosClientes1.Visible := FController.Entities.PermissoesUsuario.CadastroCliente;
   CadastrosProdutos1.Visible := FController.Entities.PermissoesUsuario.CadastroProduto;
end;

procedure TViewMain.SystemTerminate;
begin
   Application.Terminate;
end;

end.
