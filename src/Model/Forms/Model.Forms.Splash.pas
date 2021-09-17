unit Model.Forms.Splash;

interface

uses
  System.SysUtils,
  Model.Forms.Interfaces;

type
  TModelFormsSplash = class(TInterfacedObject, iModelFormsSplash)
  private
     FDisplayInformation: TProc<string>;
  protected
    function DisplayInformation(aValue: TProc<string>): iModelFormsSplash;
    function LoadProtocols: iModelFormsSplash;
    function WriteInformation(aValue: String): iModelFormsSplash;
  public
    class function New: iModelFormsSplash;
  end;

implementation

{ TModelFormsSplash }

function TModelFormsSplash.DisplayInformation(
  aValue: TProc<string>): iModelFormsSplash;
begin
   Result              := Self;
   FDisplayInformation := aValue;
end;

function TModelFormsSplash.LoadProtocols: iModelFormsSplash;
var
  I: Integer;
begin
   Result := Self;

   for I := 0 to 3 do
      Self.WriteInformation('Estabelecendo parâmetros do protocolo ' + I.ToString);
end;

class function TModelFormsSplash.New: iModelFormsSplash;
begin
   Result := Self.Create;
end;

function TModelFormsSplash.WriteInformation(
  aValue: String): iModelFormsSplash;
begin
   Result := Self;

   if(Assigned(FDisplayInformation))then
      FDisplayInformation(Trim(aValue));
end;

end.
