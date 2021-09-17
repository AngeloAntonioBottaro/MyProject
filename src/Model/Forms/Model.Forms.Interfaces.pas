unit Model.Forms.Interfaces;

interface

uses System.SysUtils;

type
  iModelFormsSplash = interface
   ['{B36FD284-E0A3-4C21-AB5F-6334B02FD0B8}']
   function DisplayInformation(aValue: TProc<string>): iModelFormsSplash;
   function LoadProtocols: iModelFormsSplash;
   function WriteInformation(aValue: String): iModelFormsSplash;
  end;

  iModelMain = interface
   ['{89FC41EC-6D0F-4218-B00B-939885942B46}']
   function LoadParameters: iModelMain;
  end;

  iModelForms = interface
   ['{25C14922-C8CE-44EA-B8D8-3430ABD75318}']
   function Main: iModelMain;
   function Splash: iModelFormsSplash;
  end;

implementation

end.
