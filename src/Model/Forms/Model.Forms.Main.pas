unit Model.Forms.Main;

interface

uses Model.Forms.Interfaces;

type
  TModelFormsMain = class(TInterfacedObject, iModelFormsMain)
  private
    FMenuCadastroCliente: Boolean;
    FMenuCadastroProduto: Boolean;
  protected
    function LoadConfiguration: iModelFormsMain;
    function MenuCadastroCliente: Boolean;
    function MenuCadastroProduto: Boolean;
  public
    class function New: iModelFormsMain;
  end;

implementation

{ TModelFormsMain }

class function TModelFormsMain.New: iModelFormsMain;
begin
   Result := Self.Create;
end;

function TModelFormsMain.LoadConfiguration: iModelFormsMain;
begin
   Result := Self;

   FMenuCadastroCliente := True;
   FMenuCadastroProduto := False;
end;

function TModelFormsMain.MenuCadastroCliente: Boolean;
begin
   Result := FMenuCadastroCliente;
end;

function TModelFormsMain.MenuCadastroProduto: Boolean;
begin
   Result := FMenuCadastroProduto;
end;

end.
