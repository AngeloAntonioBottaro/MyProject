unit Model.Forms.Interfaces;

interface

type
  iModelFormsMain = interface
   ['{8F7D0267-861A-411B-9AE3-822BFEBC384C}']
   function MenuCadastroCliente(aValue: Boolean): iModelFormsMain; overload;
   function MenuCadastroCliente: Boolean; overload;
   function MenuCadastroProduto(aValue: Boolean): iModelFormsMain; overload;
   function MenuCadastroProduto: Boolean; overload;
  end;

  iModelFormsLogin = interface
   ['{E28505B7-546C-421A-93F5-8D82BD825D33}']
   function UsuarioId(aValue: Integer): iModelFormsLogin; overload;
   function UsuarioId(aValue: string): iModelFormsLogin; overload;
   function UsuarioId: Integer; overload;
   function UsuarioNome(aValue: string): iModelFormsLogin; overload;
   function UsuarioNome: string; overload;
   function UsuarioLogin(aValue: string): iModelFormsLogin; overload;
   function UsuarioLogin: string; overload;
   function UsuarioSenha(aValue: string): iModelFormsLogin; overload;
   function UsuarioSenha: string; overload;
   function Logged(aValue: Boolean): iModelFormsLogin; overload;
   function Logged: Boolean; overload;
  end;

  iModelForms = interface
   ['{CAC681AF-FF41-4EEC-866B-756323C96FC0}']
   function Login: iModelFormsLogin;
   function Main: iModelFormsMain;
  end;

implementation

end.
