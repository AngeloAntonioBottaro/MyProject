unit Controller.Interfaces;

interface

uses
  Model.Entities.Interfaces,
  Model.Forms.Interfaces;

type
  iControllerFactory = interface
    ['{1CC99F8B-A547-49B0-A908-37A82888364C}']
    function Entities: iModelEntitiesFactory;
    function Forms: iModelFormsFactory;
  end;

implementation


end.
