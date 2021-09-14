unit Model.Forms.Interfaces;

interface

uses
  System.SysUtils;

type

  iControllerSplash = interface
    ['{F56583C1-530B-48B5-914D-CDE9FC4966A1}']
    function DisplayInformation(aValue: TProc<String>): iControllerSplash;
    function LoadProtocols: iControllerSplash;
    function WriteLoadMessages(pMessage: String): iControllerSplash;
  end;

  iControllerForms = interface
   ['{6E75B356-E2F4-4CA0-8AB3-A245ABA3A0D8}']
    function Splash: iControllerSplash;
  end;

implementation

end.
