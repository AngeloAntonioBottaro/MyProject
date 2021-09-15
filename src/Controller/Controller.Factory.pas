unit Controller.Factory;

interface

uses
  Controller.Interfaces,
  Controller.Forms.Interfaces;

type
  TControllerFactory = class(TInterfacedObject, iController)
  private
    FForms: iControllerForms;
  protected
    function Forms: iControllerForms;
  public
    class function New: iController;
  end;

implementation

{ TController }

uses Controller.Forms.Factory;

class function TControllerFactory.New: iController;
begin
   Result := Self.Create;
end;

function TControllerFactory.Forms: iControllerForms;
begin
   if(not Assigned(FForms))then
      FForms := TControllerFormsFactory.New;

   Result := FForms;
end;

end.
