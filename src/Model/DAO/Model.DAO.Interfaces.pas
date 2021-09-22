unit Model.DAO.Interfaces;

interface

uses
  Model.Entities.Interfaces;

type
  iModelDAOUsuario = interface
   ['{573DD850-4C2A-4829-AF57-B76FC2857BC8}']
   function This: iModelEntitiesUsuario;
  end;

  iModelDAOPermissoesUsuario = interface
   ['{6B8E3B4E-7A2D-40E9-A095-327DFF5596A3}']
   function This: iModelEntitiesPermissoesUsuario;
  end;

  iModelDAOFactory = interface
   ['{672E0205-2E02-4686-82AC-0DFBF4391741}']
   function Usuario: iModelDAOUsuario;
   function PermissoesUsuario: iModelDAOPermissoesUsuario;
  end;

implementation

end.
