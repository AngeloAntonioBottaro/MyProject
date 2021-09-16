unit Model.Forms.Factory;

interface

uses
  Model.Forms.Interfaces;

type
  TModelFormsFactory = class(TInterfacedObject, iModelForms)
  private
    FMain: iModelFormsMain;
    FLogin: iModelFormsLogin;
  protected
    function Login: iModelFormsLogin;
    function Main: iModelFormsMain;
  public
    class function New: iModelForms;
  end;

implementation

{ TModelFormsFactory }

uses
  Model.Forms.Main,
  Model.Forms.Login;

class function TModelFormsFactory.New: iModelForms;
begin
   Result := Self.Create;
end;

function TModelFormsFactory.Login: iModelFormsLogin;
begin
   if(not Assigned(FLogin))then
      FLogin := TModelFormsLogin.New;

   Result := FLogin;
end;

function TModelFormsFactory.Main: iModelFormsMain;
begin
   if(not Assigned(FMain))then
      FMain := TModelFormsMain.New;

   Result := FMain;
end;

end.
