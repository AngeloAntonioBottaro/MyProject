unit Model.Forms.Factory;

interface

uses Model.Forms.Interfaces, Model.Forms.Splash;

type
   TControllerFormsFactory = class(TInterfacedObject, iControllerForms)
   private
     FSplash: iControllerSplash;
   protected
     function Splash: iControllerSplash;
   public
     class function New: iControllerForms;
   end;

implementation

{ TControllerForms }

class function TControllerFormsFactory.New: iControllerForms;
begin
   Result := Self.Create;
end;

function TControllerFormsFactory.Splash: iControllerSplash;
begin
   if(not Assigned(FSplash))then
      FSplash := TControllerSplash.New;

   Result := FSplash;
end;

end.
