unit Controller.Forms.Main;

interface

uses
  Controller.Forms.Interfaces,
  Model.Interfaces,
  Model.Forms.Interfaces;

type
  TControllerFormsMain = class(TInterfacedObject, iControllerMain)
  private
    FModel: iModel;
  protected
    Constructor Create;
    function LoadMenus: iControllerMain;
    function This: iModelFormsMain;
  public
    class function New: iControllerMain; overload;
  end;

implementation

uses
  Model.Factory;

{ TControllerMain }

class function TControllerFormsMain.New: iControllerMain;
begin
   Result := Self.Create;
end;

function TControllerFormsMain.This: iModelFormsMain;
begin
   Result := FModel.Forms.Main;
end;

constructor TControllerFormsMain.Create;
begin
   if(not Assigned(FModel))then
      FModel := TModelFactory.New;
end;

function TControllerFormsMain.LoadMenus: iControllerMain;
begin
   Result := Self;

   FModel.Forms.Main.MenuCadastroCliente(True);
   FModel.Forms.Main.MenuCadastroProduto(True);
end;


end.
