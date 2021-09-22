unit Model.Entities.Interfaces;

interface

type
  iModelEntitiesUsuario = interface
   ['{EB85E29B-4A6C-4724-8552-0C873A6FDD1A}']
   function UsuarioId(aValue: Integer): iModelEntitiesUsuario; overload;
   function UsuarioId(aValue: string): iModelEntitiesUsuario; overload;
   function UsuarioId: Integer; overload;
   function UsuarioNome(aValue: string): iModelEntitiesUsuario; overload;
   function UsuarioNome: string; overload;
   function UsuarioLogin(aValue: string): iModelEntitiesUsuario; overload;
   function UsuarioLogin: string; overload;
   function UsuarioSenha(aValue: string): iModelEntitiesUsuario; overload;
   function UsuarioSenha: string; overload;
  end;

  iModelEntitiesPermissoesUsuario = interface
   ['{5C5F1C46-AB9F-438D-87E5-628E6D8E9124}']
   function CadastroCliente(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
   function CadastroCliente: Boolean; overload;
   function CadastroProduto(aValue: Boolean): iModelEntitiesPermissoesUsuario; overload;
   function CadastroProduto: Boolean; overload;
  end;

  iModelEntitiesFactory = interface
   ['{EAD5D4B7-2A72-4ECF-87CC-88E40CB943BC}']
   function Usuario: iModelEntitiesUsuario;
   function PermissoesUsuario: iModelEntitiesPermissoesUsuario;
  end;

implementation

end.
