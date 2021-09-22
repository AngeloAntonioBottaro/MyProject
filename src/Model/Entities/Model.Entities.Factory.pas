unit Model.Entities.Factory;

interface

uses Model.Entities.Interfaces;

type
  TModelEntitiesFactory = class(TInterfacedObject, iModelEntitiesFactory)
  private
    FPermissoesUsuario: iModelEntitiesPermissoesUsuario;
    FUsuario: iModelEntitiesUsuario;
  protected
    function Usuario: iModelEntitiesUsuario;
    function PermissoesUsuario: iModelEntitiesPermissoesUsuario;
  public
    class function New: iModelEntitiesFactory;
  end;

implementation

{ TModelEntitiesFactory }

uses
  Model.Entities.PermissoesUsuario,
  Model.Entities.Usuario;

class function TModelEntitiesFactory.New: iModelEntitiesFactory;
begin
   Result := Self.Create;
end;

function TModelEntitiesFactory.PermissoesUsuario: iModelEntitiesPermissoesUsuario;
begin
   if(not Assigned(FPermissoesUsuario))then
      FPermissoesUsuario := TModelEntitiesPermissoesUsuario.New;

   Result := FPermissoesUsuario;
end;

function TModelEntitiesFactory.Usuario: iModelEntitiesUsuario;
begin
   if(not Assigned(FUsuario))then
      FUsuario := TModelEntitiesUsuario.New;

   Result := FUsuario;
end;

end.
