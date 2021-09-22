unit Controller.Factory;

interface

uses
  Controller.Interfaces,
  Model.Entities.Interfaces,
  Model.Forms.Interfaces;

type
  iControllerFactory = Controller.Interfaces.iControllerFactory;

  TControllerFactory = class(TInterfacedObject, iControllerFactory)
  private
    FEntities: iModelEntitiesFactory;
    FForms: iModelFormsFactory;
  protected
    function Entities: iModelEntitiesFactory;
    function Forms: iModelFormsFactory;
  public
    class function New: iControllerFactory;
  end;

implementation

{ TController }

uses
  Model.Entities.Factory,
  Model.Forms.Factory;

class function TControllerFactory.New: iControllerFactory;
begin
   Result := Self.Create;
end;

function TControllerFactory.Entities: iModelEntitiesFactory;
begin
   if(not Assigned(FEntities))then
      FEntities := TModelEntitiesFactory.New;

   Result := FEntities;
end;

function TControllerFactory.Forms: iModelFormsFactory;
begin
   if(not Assigned(FForms))then
      FForms := TModelFormsFactory.New;

   Result := FForms;
end;


end.
