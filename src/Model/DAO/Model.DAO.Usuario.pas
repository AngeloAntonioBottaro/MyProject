unit Model.DAO.Usuario;

interface

uses
  Model.DAO.Interfaces,
  Model.Entities.Interfaces;

type
  TModelDAOUsuario = class(TInterfacedObject, iModelDAOUsuario)
  private
    FThis: iModelEntitiesUsuario;
  protected
    function This: iModelEntitiesUsuario;
  public
    class function New: iModelDAOUsuario;
  end;

implementation

{ TModelDAOUsuario }

uses
   Model.Entities.Usuario;

class function TModelDAOUsuario.New: iModelDAOUsuario;
begin
   Result := Self.Create;
end;

function TModelDAOUsuario.This: iModelEntitiesUsuario;
begin
   if(not Assigned(FThis))then
      FThis := TModelEntitiesUsuario.New;

   Result := FThis;
end;

end.
