unit Controller.Forms.Splash;

interface

uses
  System.SysUtils,
  Controller.Forms.Interfaces;

type
  TControllerFormsSplash = class(TInterfacedObject, iControllerSplash)
  private
    FDisplayInformation: TProc<String>;
    constructor Create(pDisplayInformation: TProc<String>); overload;
  protected
    function DisplayInformation(aValue: TProc<String>): iControllerSplash;
    function LoadProtocols: iControllerSplash;
    function WriteLoadMessages(pMessage: String): iControllerSplash;
  public
    class function New: iControllerSplash; overload;
    class function New(pDisplayInformation: TProc<String>): iControllerSplash; overload;
  end;

implementation

{ TControllerSplash }

class function TControllerFormsSplash.New: iControllerSplash;
begin
   Result := Self.Create;
end;

class function TControllerFormsSplash.New(pDisplayInformation: TProc<String>): iControllerSplash;
begin
   Result := Self.Create(pDisplayInformation);
end;

function TControllerFormsSplash.DisplayInformation(aValue: TProc<String>): iControllerSplash;
begin
   Result              := Self;
   FDisplayInformation := aValue;
end;

constructor TControllerFormsSplash.Create(pDisplayInformation: TProc<String>);
begin
   Self.DisplayInformation(pDisplayInformation);
end;

function TControllerFormsSplash.LoadProtocols: iControllerSplash;
var
  I: Integer;
begin
   Result := Self;

   for I := 1 to 5 do
      Self.WriteLoadMessages('Carregando protocolo ' + I.ToString);

   Self.WriteLoadMessages('Sistema carregado');
end;

function TControllerFormsSplash.WriteLoadMessages(
  pMessage: String): iControllerSplash;
begin
   Result := Self;

   if(Assigned(FDisplayInformation))then
      FDisplayInformation(pMessage);
end;

end.
