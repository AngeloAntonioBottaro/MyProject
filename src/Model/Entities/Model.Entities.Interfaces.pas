unit Model.Entities.Interfaces;

interface

type
  iModelEntitiesPermissoesUsuario = interface
   ['{5C5F1C46-AB9F-438D-87E5-628E6D8E9124}']
   function CadastroCliente(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
   function CadastroCliente: Boolean; overload;
   function CadastroProduto(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
   function CadastroProduto: Boolean; overload;
  end;

  iModelEntities = interface
   ['{EAD5D4B7-2A72-4ECF-87CC-88E40CB943BC}']
   function PermissoesUsuario: iModelEntitiesPermissoesUsuario;
  end;

implementation

end.
