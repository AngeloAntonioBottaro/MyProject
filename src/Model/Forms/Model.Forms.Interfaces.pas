unit Model.Forms.Interfaces;

interface

type
  iModelFormsMain = interface
   ['{8F7D0267-861A-411B-9AE3-822BFEBC384C}']
   function LoadConfiguration: iModelFormsMain;

   function MenuCadastroCliente: Boolean;
   function MenuCadastroProduto: Boolean;
  end;

  iModelForms = interface
   ['{CAC681AF-FF41-4EEC-866B-756323C96FC0}']
   function Main: iModelFormsMain;
  end;

implementation

end.
