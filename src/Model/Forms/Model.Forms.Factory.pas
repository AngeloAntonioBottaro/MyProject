unit Model.Forms.Factory;

interface

uses Model.Forms.Interfaces;

type
  TModelFormsFactory = class(TInterfacedObject, iModelForms)
  private
    FMain: iModelMain;
    FSplash: iModelFormsSplash;
  protected
    function Main: iModelMain;
    function Splash: iModelFormsSplash;
  public
    class function New: iModelForms;
  end;

implementation

{ TModelFormsFactory }

uses
  Model.Forms.Splash,
  Model.Forms.Main;

function TModelFormsFactory.Main: iModelMain;
begin
   if(not Assigned(FMain))then
      FMain := TModelFormsMain.New;

   Result := FMain;
end;

class function TModelFormsFactory.New: iModelForms;
begin
   Result := Self.Create;
end;

function TModelFormsFactory.Splash: iModelFormsSplash;
begin
   if(not Assigned(FSplash))then
      FSplash := TModelFormsSplash.New;

   Result := FSplash;
end;

end.
