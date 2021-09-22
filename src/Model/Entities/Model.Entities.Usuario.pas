unit Model.Entities.Usuario;

interface

uses
  System.Sysutils,
  Model.Entities.Interfaces;

type
  TModelEntitiesUsuario = class(TInterfacedObject, iModelEntitiesUsuario)
  private
    FUsuarioId: Integer;
    FUsuarioNome: string;
    FUsuarioLogin: string;
    FUsuarioSenha: string;
  protected
    function UsuarioId(aValue: Integer): iModelEntitiesUsuario; overload;
    function UsuarioId(aValue: string): iModelEntitiesUsuario; overload;
    function UsuarioId: Integer; overload;
    function UsuarioNome(aValue: string): iModelEntitiesUsuario; overload;
    function UsuarioNome: string; overload;
    function UsuarioLogin(aValue: string): iModelEntitiesUsuario; overload;
    function UsuarioLogin: string; overload;
    function UsuarioSenha(aValue: string): iModelEntitiesUsuario; overload;
    function UsuarioSenha: string; overload;
  public
    class function New: iModelEntitiesUsuario;
  end;

implementation

{ TModelEntitiesUsuario }

class function TModelEntitiesUsuario.New: iModelEntitiesUsuario;
begin
   Result := Self.Create;
end;

function TModelEntitiesUsuario.UsuarioId: Integer;
begin
   Result := FUsuarioId;
end;

function TModelEntitiesUsuario.UsuarioId(
  aValue: Integer): iModelEntitiesUsuario;
begin
   Result     := Self;
   FUsuarioId := aValue;
end;

function TModelEntitiesUsuario.UsuarioId(
  aValue: string): iModelEntitiesUsuario;
begin
   Result := Self;
   UsuarioId(StrToInt(Trim(aValue)));
end;

function TModelEntitiesUsuario.UsuarioLogin: string;
begin
   Result := FUsuarioLogin;
end;

function TModelEntitiesUsuario.UsuarioLogin(
  aValue: string): iModelEntitiesUsuario;
begin
   Result        := Self;
   FUsuarioLogin := Trim(aValue);
end;

function TModelEntitiesUsuario.UsuarioNome: string;
begin
   Result := FUsuarioNome;
end;

function TModelEntitiesUsuario.UsuarioNome(
  aValue: string): iModelEntitiesUsuario;
begin
   Result       := Self;
   FUsuarioNome := Trim(aValue);
end;

function TModelEntitiesUsuario.UsuarioSenha(
  aValue: string): iModelEntitiesUsuario;
begin
   Result        := Self;
   FUsuarioSenha := Trim(aValue);
end;

function TModelEntitiesUsuario.UsuarioSenha: string;
begin
   Result := FUsuarioSenha;
end;

end.
