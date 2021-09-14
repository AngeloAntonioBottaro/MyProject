unit Controller.Forms;

interface

uses Controller.Interfaces, Controller.Splash;

type
   TControllerForms = class(TInterfacedObject, iControllerForms)
   private
     FSplash: iControllerSplash;
   protected
     function Splash: iControllerSplash;
   public
     class function New: iControllerForms;
   end;

implementation

{ TControllerForms }

class function TControllerForms.New: iControllerForms;
begin
   Result := Self.Create;
end;

function TControllerForms.Splash: iControllerSplash;
begin
   if(not Assigned(FSplash))then
      FSplash := TControllerSplash.New;

   Result := FSplash;
end;

end.
