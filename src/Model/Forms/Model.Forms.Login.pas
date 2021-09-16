unit Model.Forms.Login;

interface

uses Model.Forms.Interfaces, System.SysUtils;

type
  TModelFormsLogin = class(TInterfacedObject, iModelFormsLogin)
  private
    FUsuarioId: Integer;
    FUsuarioNome: String;
    FUsuarioLogin: String;
    FUsuarioSenha: String;
    FLogged: Boolean;
  protected
    function UsuarioId(aValue: Integer): iModelFormsLogin; overload;
    function UsuarioId(aValue: string): iModelFormsLogin; overload;
    function UsuarioId: Integer; overload;
    function UsuarioNome(aValue: string): iModelFormsLogin; overload;
    function UsuarioNome: string; overload;
    function UsuarioLogin(aValue: string): iModelFormsLogin; overload;
    function UsuarioLogin: string; overload;
    function UsuarioSenha(aValue: string): iModelFormsLogin; overload;
    function UsuarioSenha: string; overload;
    function Logged(aValue: Boolean): iModelFormsLogin; overload;
    function Logged: Boolean; overload;
  public
    class function New: iModelFormsLogin;
  end;

implementation

{ TModelFormsLogin }

function TModelFormsLogin.Logged(aValue: Boolean): iModelFormsLogin;
begin
   Result  := Self;
   FLogged := aValue;
end;

class function TModelFormsLogin.New: iModelFormsLogin;
begin
   Result := Self.Create;
end;

function TModelFormsLogin.Logged: Boolean;
begin
   Result := FLogged;
end;

function TModelFormsLogin.UsuarioId(aValue: Integer): iModelFormsLogin;
begin
   Result     := Self;
   FUsuarioId := aValue;
end;

function TModelFormsLogin.UsuarioId: Integer;
begin
   Result := FUsuarioId;
end;

function TModelFormsLogin.UsuarioId(aValue: string): iModelFormsLogin;
begin
   Result     := Self;
   FUsuarioId := StrToInt(Trim(aValue));
end;

function TModelFormsLogin.UsuarioLogin(aValue: string): iModelFormsLogin;
begin
   Result        := Self;
   FUsuarioLogin := Trim(aValue);
end;

function TModelFormsLogin.UsuarioLogin: string;
begin
   Result := FUsuarioLogin;
end;

function TModelFormsLogin.UsuarioNome(aValue: string): iModelFormsLogin;
begin
   Result       := Self;
   FUsuarioNome := Trim(aValue);
end;

function TModelFormsLogin.UsuarioNome: string;
begin
   Result := FUsuarioNome;
end;

function TModelFormsLogin.UsuarioSenha: string;
begin
   Result := FUsuarioSenha;
end;

function TModelFormsLogin.UsuarioSenha(aValue: string): iModelFormsLogin;
begin
   Result        := Self;
   FUsuarioSenha := Trim(aValue);
end;

end.
