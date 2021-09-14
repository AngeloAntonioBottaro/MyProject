unit Controller.Interfaces;

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

  iController = interface
    ['{1CC99F8B-A547-49B0-A908-37A82888364C}']
    function Splash: iControllerSplash;
    function Login: iController;
    function Main: iController;
  end;

implementation

end.
