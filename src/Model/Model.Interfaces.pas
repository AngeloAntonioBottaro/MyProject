unit Model.Interfaces;

interface

uses
   Model.Forms.Interfaces;

type
  iModel = interface
    ['{779A8A6C-CB96-467D-A83E-906DEC2BB178}']
    function Forms: iModelForms;
  end;

implementation

end.
