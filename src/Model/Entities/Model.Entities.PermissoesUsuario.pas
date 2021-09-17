unit Model.Entities.PermissoesUsuario;

interface

uses Model.Entities.Interfaces;

type
  TModelEntitiesPermissoesUsuario = class(TInterfacedObject, iModelEntitiesPermissoesUsuario)
  private
    FCadastroCliente: Boolean;
    FCadastroProduto: Boolean;
  protected
    function CadastroCliente(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
    function CadastroCliente: Boolean; overload;
    function CadastroProduto(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
    function CadastroProduto: Boolean; overload;
  public
    class function New: iModelEntitiesPermissoesUsuario;
  end;

implementation

{ TModelEntitiesPermissoesUsuario }

class function TModelEntitiesPermissoesUsuario.New: iModelEntitiesPermissoesUsuario;
begin
   Result := Self.Create;
end;

function TModelEntitiesPermissoesUsuario.CadastroCliente(
  aValue: Boolean): iModelEntitiesPermissoesUsuario;
begin
   Result           := Self;
   FCadastroCliente := aValue;
end;

function TModelEntitiesPermissoesUsuario.CadastroCliente: Boolean;
begin
   Result := FCadastroCliente;
end;

function TModelEntitiesPermissoesUsuario.CadastroProduto(
  aValue: Boolean): iModelEntitiesPermissoesUsuario;
begin
   Result           := Self;
   FCadastroProduto := aValue;
end;

function TModelEntitiesPermissoesUsuario.CadastroProduto: Boolean;
begin
   Result := FCadastroProduto;
end;


end.
