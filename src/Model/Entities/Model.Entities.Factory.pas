unit Model.Entities.Factory;

interface

uses Model.Entities.Interfaces;

type
  TModelEntitiesFactory = class(TInterfacedObject, iModelEntities)
  private
    FPermissoesUsuario: iModelEntitiesPermissoesUsuario;
  protected
    function PermissoesUsuario: iModelEntitiesPermissoesUsuario;
  public
    class function New: iModelEntities;
  end;

implementation

{ TModelEntitiesFactory }

uses Model.Entities.PermissoesUsuario;

class function TModelEntitiesFactory.New: iModelEntities;
begin
   Result := Self.Create;
end;

function TModelEntitiesFactory.PermissoesUsuario: iModelEntitiesPermissoesUsuario;
begin
   if(not Assigned(FPermissoesUsuario))then
      FPermissoesUsuario := TModelEntitiesPermissoesUsuario.New;

   Result := FPermissoesUsuario;
end;

end.
