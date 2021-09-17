unit Controller.Factory;

interface

uses
  Controller.Interfaces,
  Model.Entities.Interfaces,
  Model.Forms.Interfaces;

type
  TControllerFactory = class(TInterfacedObject, iController)
  private
    FEntities: iModelEntities;
    FForms: iModelForms;
  protected
    function Forms: iModelForms;
    function Entities: iModelEntities;
  public
    class function New: iController;
  end;

implementation

{ TController }

uses
  Model.Entities.Factory,
  Model.Forms.Factory;

function TControllerFactory.Forms: iModelForms;
begin
   if(not Assigned(FForms))then
      FForms := TModelFormsFactory.New;

   Result := FForms;
end;

class function TControllerFactory.New: iController;
begin
   Result := Self.Create;
end;

function TControllerFactory.Entities: iModelEntities;
begin
   if(not Assigned(FEntities))then
      FEntities := TModelEntitiesFactory.New;

   Result := FEntities;
end;

end.
