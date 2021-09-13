unit View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TViewSplash = class(TForm)
    lbInformacoes: TLabel;
    TimerShow: TTimer;
    imgBack: TImage;
    lbDireitosAutorais: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TimerShowTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure LoadProtocols;
    procedure ConfComponents;
    procedure WriteLoadMessages(pMessage: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewSplash: TViewSplash;

implementation

{$R *.dfm}

uses View.Main;

procedure TViewSplash.ConfComponents;
begin
   lbDireitosAutorais.Caption := 'Todos os direitos reservados a AABSoftware';
   lbDireitosAutorais.Top     := Self.Top + 15;
   lbDireitosAutorais.Width   := Self.Width;
   lbDireitosAutorais.Left    := 0;

   lbInformacoes.Caption := EmptyStr;
   lbInformacoes.Top     := Self.Height - 30;
   lbInformacoes.Width   := Self.Width;
   lbInformacoes.Left    := 0;

   TimerShow.Enabled     := True;
end;

procedure TViewSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.CreateForm(TViewMain, ViewMain);
end;

procedure TViewSplash.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := not TimerShow.Enabled;
end;

procedure TViewSplash.FormShow(Sender: TObject);
begin
   Self.Repaint;
   Self.Visible := True;
   Self.ConfComponents;
end;

procedure TViewSplash.LoadProtocols;
var
  I: Integer;
begin
   for I := 1 to 10 do
   begin
      Self.WriteLoadMessages('Carregando protocolo ' + I.ToString);
      Sleep(1000);
   end;

   Self.WriteLoadMessages('Sistema carregado');
   Self.Close;
end;

procedure TViewSplash.TimerShowTimer(Sender: TObject);
begin
   TimerShow.Enabled := False;

   Self.LoadProtocols;
end;

procedure TViewSplash.WriteLoadMessages(pMessage: String);
begin
   lbInformacoes.Caption := pMessage;
   Application.ProcessMessages;
end;

end.
