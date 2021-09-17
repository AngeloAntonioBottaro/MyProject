unit Model.Forms.Main;

interface

uses
  Model.Forms.Interfaces,
  Model.Entities.Interfaces;

type
  TModelFormsMain = class(TInterfacedObject, iModelMain)
  private
    FEntities: iModelEntities;
  protected
    constructor Create;
    function LoadParameters: iModelMain;
  public
    class function New: iModelMain;
  end;

implementation

{ TModelFormsMain }

uses
   Model.Entities.Factory;

class function TModelFormsMain.New: iModelMain;
begin
   Result := Self.Create;
end;

constructor TModelFormsMain.Create;
begin
   if(not Assigned(FEntities))then
      FEntities := TModelEntitiesFactory.New;
end;

function TModelFormsMain.LoadParameters: iModelMain;
begin
   Result := Self;

   FEntities.PermissoesUsuario.CadastroCliente(True);
   FEntities.PermissoesUsuario.CadastroCliente(True);
end;

end.
