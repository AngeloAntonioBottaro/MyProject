unit Controller.Forms.Interfaces;

interface

uses
  System.SysUtils,
  Model.Forms.Interfaces;

type

  iControllerSplash = interface
    ['{F56583C1-530B-48B5-914D-CDE9FC4966A1}']
    function DisplayInformation(aValue: TProc<String>): iControllerSplash;
    function LoadProtocols: iControllerSplash;
    function WriteLoadMessages(pMessage: String): iControllerSplash;
  end;

  iControllerMain = interface
   ['{49E34264-F89B-4521-B7DC-C2CFC5800BE5}']
   function LoadMenus: iControllerMain;
   function This: iModelFormsMain;
  end;

  iControllerLogin = interface
   ['{5D414764-D382-4986-AA1C-ED9264887B4B}']
   function LoginIn: iControllerLogin;
   function IsLogged: Boolean;
   function This: iModelFormsLogin;
  end;

  iControllerForms = interface
   ['{6E75B356-E2F4-4CA0-8AB3-A245ABA3A0D8}']
   function Login: iControllerLogin;
   function Main: iControllerMain;
   function Splash: iControllerSplash;
  end;

implementation

end.
