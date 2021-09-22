unit Model.DAO.Factory;

interface

uses
  Model.DAO.Interfaces;

type
  TModelDAOFactory = class(TInterfacedObject, iModelDAOFactory)
  private
    FUsuario: iModelDAOUsuario;
    FPermissoesUsuario: iModelDAOPermissoesUsuario;
  protected
    function Usuario: iModelDAOUsuario;
    function PermissoesUsuario: iModelDAOPermissoesUsuario;
  public
    class function New: iModelDAOFactory;
  end;

implementation

uses
  Model.DAO.Usuario,
  Model.DAO.PermissoesUsuario;

{ TModelDAOFactory }

class function TModelDAOFactory.New: iModelDAOFactory;
begin
   Result:= Self.Create;
end;

function TModelDAOFactory.PermissoesUsuario: iModelDAOPermissoesUsuario;
begin
   if(not Assigned(FPermissoesUsuario))then
     FPermissoesUsuario := TModelDAOPermissoesUsuario.New;

   Result := FPermissoesUsuario
end;

function TModelDAOFactory.Usuario: iModelDAOUsuario;
begin
   if(not Assigned(FUsuario))then
     FUsuario := TModelDAOUsuario.New;

   Result := FUsuario
end;

end.
