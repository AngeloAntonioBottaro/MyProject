unit Controller.Splash;

interface

uses
  Vcl.Controls,
  Vcl.StdCtrls,
  Controller.Interfaces;

type
  TControllerSplash = class(TInterfacedObject, iControllerSplash)
  private
    FLabelInformacoes: TLabel;
    constructor Create(pLabel: TLabel); overload;
  protected
    function SetLabel(pLabel: TLabel): iControllerSplash;
    function LoadProtocols: iControllerSplash;
    function WriteLoadMessages(pMessage: String): iControllerSplash;
  public
    class function New: iControllerSplash; overload;
    class function New(pLabel: TLabel): iControllerSplash; overload;
  end;

implementation

{ TControllerSplash }

uses
  System.SysUtils;

class function TControllerSplash.New: iControllerSplash;
begin
   Result := Self.Create;
end;

class function TControllerSplash.New(pLabel: TLabel): iControllerSplash;
begin
   Result := Self.Create(pLabel);
end;

function TControllerSplash.SetLabel(pLabel: TLabel): iControllerSplash;
begin
   Result := Self;
   FLabelInformacoes := pLabel;
end;

constructor TControllerSplash.Create(pLabel: TLabel);
begin
   Self.SetLabel(pLabel);
end;

function TControllerSplash.LoadProtocols: iControllerSplash;
var
  I: Integer;
begin
   Result := Self;

   for I := 1 to 5 do
      Self.WriteLoadMessages('Carregando protocolo ' + I.ToString);

   Self.WriteLoadMessages('Sistema carregado');
end;

function TControllerSplash.WriteLoadMessages(
  pMessage: String): iControllerSplash;
begin
   Result := Self;

   if(Assigned(FLabelInformacoes))then
   begin
      FLabelInformacoes.Caption := pMessage;
      FLabelInformacoes.Refresh;
      FLabelInformacoes.Repaint;
   end;
end;

end.
