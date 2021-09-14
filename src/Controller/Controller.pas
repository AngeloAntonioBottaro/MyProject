unit Controller;

interface

uses
  Controller.Interfaces;

type
  TController = class(TInterfacedObject, iController)
  private
    FSplash: iControllerSplash;
  protected
    function Splash: iControllerSplash;
    function Login: iController;
    function Main: iController;
  public
    class function New: iController;
  end;

implementation

{ TController }

uses
  Controller.Splash;

class function TController.New: iController;
begin
   Result := Self.Create;
end;

function TController.Login: iController;
begin
   Result := Self;
end;

function TController.Main: iController;
begin
   Result := Self;
end;

function TController.Splash: iControllerSplash;
begin
   FSplash := TControllerSplash.New;
   Result  := FSplash;
end;

end.
