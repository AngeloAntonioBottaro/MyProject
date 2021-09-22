unit Model.Forms.Factory;

interface

uses Model.Forms.Interfaces;

type
  TModelFormsFactory = class(TInterfacedObject, iModelFormsFactory)
  private
    FSplash: iModelFormsSplash;
  protected
    function Splash: iModelFormsSplash;
  public
    class function New: iModelFormsFactory;
  end;

implementation

{ TModelFormsFactory }

uses
  Model.Forms.Splash;

class function TModelFormsFactory.New: iModelFormsFactory;
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
