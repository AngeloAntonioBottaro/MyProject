unit Model.DAO.PermissoesUsuario;

interface

uses
  Model.DAO.Interfaces,
  Model.Entities.Interfaces;

type
  TModelDAOPermissoesUsuario = class(TInterfacedObject, iModelDAOPermissoesUsuario)
  private
    FThis: iModelEntitiesPermissoesUsuario;
  protected
    function This: iModelEntitiesPermissoesUsuario;
  public
    class function New: iModelDAOPermissoesUsuario;
  end;

implementation

{ TModelDAOPermissoesUsuario }

uses
   Model.Entities.PermissoesUsuario;

class function TModelDAOPermissoesUsuario.New: iModelDAOPermissoesUsuario;
begin
   Result := Self.Create;
end;

function TModelDAOPermissoesUsuario.This: iModelEntitiesPermissoesUsuario;
begin
   if(not Assigned(FThis))then
      FThis := TModelEntitiesPermissoesUsuario.New;

   Result := FThis;
end;

end.
