unit Model.Forms.Main;

interface

uses Model.Forms.Interfaces;

type
  TModelFormsMain = class(TInterfacedObject, iModelFormsMain)
  private
    FMenuCadastroCliente: Boolean;
    FMenuCadastroProduto: Boolean;
  protected
    function MenuCadastroCliente(aValue: Boolean): iModelFormsMain; overload;
    function MenuCadastroCliente: Boolean; overload;
    function MenuCadastroProduto(aValue: Boolean): iModelFormsMain; overload;
    function MenuCadastroProduto: Boolean; overload;
  public
    class function New: iModelFormsMain;
  end;

implementation

{ TModelFormsMain }

class function TModelFormsMain.New: iModelFormsMain;
begin
   Result := Self.Create;
end;

function TModelFormsMain.MenuCadastroProduto(
  aValue: Boolean): iModelFormsMain;
begin
   Result               := Self;
   FMenuCadastroProduto := aValue;
end;

function TModelFormsMain.MenuCadastroCliente: Boolean;
begin
   Result := FMenuCadastroCliente;
end;

function TModelFormsMain.MenuCadastroCliente(
  aValue: Boolean): iModelFormsMain;
begin
   Result               := Self;
   FMenuCadastroCliente := aValue;
end;

function TModelFormsMain.MenuCadastroProduto: Boolean;
begin
   Result := FMenuCadastroProduto;
end;

end.
