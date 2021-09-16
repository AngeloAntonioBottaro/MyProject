unit Controller.Forms.Login;

interface

uses
  Controller.Forms.Interfaces,
  Model.Interfaces,
  Model.Forms.Interfaces;

type
  TControllerFormsLogin = class(TInterfacedObject, iControllerLogin)
  private
    FLogged: Boolean;
    FModel: iModel;
  protected
    constructor Create;
    function LoginIn: iControllerLogin;
    function IsLogged: Boolean;
    function This: iModelFormsLogin;
  public
    class function New: iControllerLogin;
  end;

implementation

uses
  Model.Factory, Utils.MyLibrary, System.SysUtils;

{ TControllerFormsLogin }

class function TControllerFormsLogin.New: iControllerLogin;
begin
   Result := Self.Create;
end;

function TControllerFormsLogin.This: iModelFormsLogin;
begin
   Result := FModel.Forms.Login;
end;

constructor TControllerFormsLogin.Create;
begin
   if(not Assigned(FModel))then
      FModel := TModelFactory.New;

   FLogged := False;
end;

function TControllerFormsLogin.IsLogged: Boolean;
begin
   Result := FLogged;
end;

function TControllerFormsLogin.LoginIn: iControllerLogin;
begin
   Result := Self;

   if(Utils.MyLibrary.UnlockSpecialComands)then
   begin
      FModel.Forms.Login.UsuarioLogin('Adm');
      FModel.Forms.Login.UsuarioSenha('Adm');
   end;

   if(FModel.Forms.Login.UsuarioLogin = EmptyStr)then
      raise Exception.Create('Usuário não pode ser vazio');

   if(FModel.Forms.Login.UsuarioSenha = EmptyStr)then
      raise Exception.Create('Senha não pode ser vazio');

   FModel.Forms.Login.Logged(True);
end;

end.
