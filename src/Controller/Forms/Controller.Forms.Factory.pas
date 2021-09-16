unit Controller.Forms.Factory;

interface

uses Controller.Forms.Interfaces,
     Controller.Forms.Splash,
     Controller.Forms.Main,
     Controller.Forms.Login;

type
  TControllerFormsFactory = class(TInterfacedObject, iControllerForms)
  private
    FSplash: iControllerSplash;
    FMain: iControllerMain;
    FLogin: iControllerLogin;
  protected
    function Login: iControllerLogin;
    function Main: iControllerMain;
    function Splash: iControllerSplash;
  public
    class function New: iControllerForms;
  end;

implementation

{ TControllerForms }

function TControllerFormsFactory.Login: iControllerLogin;
begin
   if(not Assigned(FLogin))then
      FLogin := TControllerFormsLogin.New;

   Result := FLogin;
end;

function TControllerFormsFactory.Main: iControllerMain;
begin
   if(not Assigned(FMain))then
      FMain := TControllerFormsMain.New;

   Result := FMain;
end;

class function TControllerFormsFactory.New: iControllerForms;
begin
   Result := Self.Create;
end;

function TControllerFormsFactory.Splash: iControllerSplash;
begin
   if(not Assigned(FSplash))then
      FSplash := TControllerFormsSplash.New;

   Result := FSplash;
end;

end.
