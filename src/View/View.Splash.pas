unit View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg,
  Controller.Factory;

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
    procedure FormCreate(Sender: TObject);
  private
    FController: iControllerFactory;
    procedure LoadProtocols;
    procedure ConfComponents;
    procedure WriteMessages(pMessage: String);
    procedure SystemTerminate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewSplash: TViewSplash;

implementation

{$R *.dfm}

uses View.Main;

procedure TViewSplash.FormCreate(Sender: TObject);
begin
   FController := TControllerFactory.New;
end;

procedure TViewSplash.FormShow(Sender: TObject);
begin
   Self.Repaint;
   Self.Visible := True;
   Self.ConfComponents;
end;

procedure TViewSplash.ConfComponents;
begin
   lbDireitosAutorais.Caption       := 'Todos os direitos reservados a AABSoftware';
   lbDireitosAutorais.Top           := Self.Top + 15;
   lbDireitosAutorais.Width         := Self.Width;
   lbDireitosAutorais.Left          := 0;
   lbDireitosAutorais.Color         := clWhite;
   lbDireitosAutorais.Font.Color    := clWhite;
   lbDireitosAutorais.Font.Name     := 'Tahoma';
   lbDireitosAutorais.Font.Style    := [fsBold];
   lbDireitosAutorais.StyleElements := lbDireitosAutorais.StyleElements - [seClient];

   lbInformacoes.Caption       := EmptyStr;
   lbInformacoes.Top           := Self.Height - 30;
   lbInformacoes.Width         := Self.Width;
   lbInformacoes.Left          := 0;
   lbInformacoes.Color         := clWhite;
   lbInformacoes.Font.Color    := clWhite;
   lbInformacoes.Font.Name     := 'Tahoma';
   lbInformacoes.Font.Style    := [fsBold];
   lbInformacoes.StyleElements := lbInformacoes.StyleElements - [seClient];

   TimerShow.Enabled := True;
end;

procedure TViewSplash.TimerShowTimer(Sender: TObject);
begin
   TimerShow.Enabled := False;

   Self.LoadProtocols;
end;

procedure TViewSplash.LoadProtocols;
begin
   FController
    .Forms
     .Splash
      .DisplayInformation(WriteMessages)
      .LoadProtocols;

   if(not FController.Forms.Splash.LoadingComplete)then
      Self.SystemTerminate;

   Self.Close;
end;

procedure TViewSplash.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := not TimerShow.Enabled;
end;

procedure TViewSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.CreateForm(TViewMain, ViewMain);
   Self.Visible := False;
   Self.Hide;
   Self.Refresh;
end;

procedure TViewSplash.SystemTerminate;
begin
   Application.Terminate;
end;

procedure TViewSplash.WriteMessages(pMessage: String);
begin
   lbInformacoes.Caption := pMessage;
   Application.ProcessMessages;
   Sleep(1000);
end;

end.
