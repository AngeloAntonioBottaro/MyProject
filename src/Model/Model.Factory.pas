unit Model.Factory;

interface

uses Model.Interfaces,
     Model.Forms.Interfaces;

type
  TModelFactory = class(TInterfacedObject, iModel)
  private
    FForms: iModelForms;
  protected
    function Forms: iModelForms;
  public
    class function New: iModel;
  end;

implementation


{ TModelFactory }

uses
  Model.Forms.Factory;

class function TModelFactory.New: iModel;
begin
   Result := Self.Create;
end;

function TModelFactory.Forms: iModelForms;
begin
   if(not Assigned(FForms))then
      FForms := TModelFormsFactory.New;

   Result := FForms
end;

end.
