unit Model.Forms.Interfaces;

interface

uses
  System.SysUtils,
  Model.Entities.Interfaces;

type
  iModelFormsSplash = interface
   ['{B36FD284-E0A3-4C21-AB5F-6334B02FD0B8}']
   function DisplayInformation(aValue: TProc<string>): iModelFormsSplash;
   function LoadProtocols: iModelFormsSplash;
   function LoadingComplete: Boolean;
   function WriteInformation(aValue: String): iModelFormsSplash;
  end;

  iModelFormsFactory = interface
   ['{25C14922-C8CE-44EA-B8D8-3430ABD75318}']
   function Splash: iModelFormsSplash;
  end;

implementation

end.
