unit Model.Forms.Splash;

interface

uses
  System.SysUtils,
  Model.Forms.Interfaces;

type
  TModelFormsSplash = class(TInterfacedObject, iModelFormsSplash)
  private
     FDisplayInformation: TProc<string>;
     FLoadingComplete: Boolean;
  protected
    constructor Create;
    function DisplayInformation(aValue: TProc<string>): iModelFormsSplash;
    function LoadingComplete: Boolean;
    function LoadProtocols: iModelFormsSplash;
    function WriteInformation(aValue: String): iModelFormsSplash;
  public
    class function New: iModelFormsSplash;
  end;

implementation

{ TModelFormsSplash }

constructor TModelFormsSplash.Create;
begin
   FLoadingComplete := False;
end;

function TModelFormsSplash.DisplayInformation(
  aValue: TProc<string>): iModelFormsSplash;
begin
   Result              := Self;
   FDisplayInformation := aValue;
end;

function TModelFormsSplash.LoadingComplete: Boolean;
begin
   Result := FLoadingComplete;
end;

function TModelFormsSplash.LoadProtocols: iModelFormsSplash;
var
  I: Integer;
begin
   Result := Self;

   try
     for I := 0 to 3 do
        Self.WriteInformation('Estabelecendo parâmetros do protocolo ' + I.ToString);

     FLoadingComplete := True;
   except on E: Exception do
    begin
      Self.WriteInformation('Falha no processamento dos protocolos');
      Exit;
    end;
   end;
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
