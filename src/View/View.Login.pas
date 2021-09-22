unit View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, View.Base,
  Controller.Factory;

type
  TViewLogin = class(TViewBase)
    edtUsuarioLogin: TLabeledEdit;
    edtUsuarioSenha: TLabeledEdit;
    btnConectar: TButton;
    btnCancelar: TButton;
    Image1: TImage;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnCancelarClick(Sender: TObject);
begin
   Self.Close;
   ModalResult := mrCancel;
end;

procedure TViewLogin.btnConectarClick(Sender: TObject);
var
 vController: iControllerFactory;
begin
   vController := TControllerFactory.New;


   //if(FController.Forms.Login.LoggedIn)then
   //begin
      Self.Close;
      ModalResult := mrOk;
   //end;
end;

end.
