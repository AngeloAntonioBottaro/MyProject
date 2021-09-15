unit Model.Forms.Factory;

interface

uses
  Model.Forms.Interfaces;

type
  TModelFormsFactory = class(TInterfacedObject, iModelForms)
  private
    FMain: iModelFormsMain;
  protected
    function Main: iModelFormsMain;
  public
    class function New: iModelForms;
  end;

implementation

{ TModelFormsFactory }

uses
  Model.Forms.Main;

class function TModelFormsFactory.New: iModelForms;
begin
   Result := Self.Create;
end;

function TModelFormsFactory.Main: iModelFormsMain;
begin
   if(not Assigned(FMain))then
      FMain := TModelFormsMain.New;

   Result := FMain;
end;

end.
