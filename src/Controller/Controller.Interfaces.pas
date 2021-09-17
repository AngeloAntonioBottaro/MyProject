unit Controller.Interfaces;

interface

uses
  Model.Entities.Interfaces,
  Model.Forms.Interfaces;

type
  iController = interface
    ['{1CC99F8B-A547-49B0-A908-37A82888364C}']
    function Forms: iModelForms;
    function Entities: iModelEntities;
  end;

implementation


end.
