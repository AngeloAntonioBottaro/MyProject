program Project;

uses
  Vcl.Forms,
  System.SysUtils,
  View.Main in 'src\View\View.Main.pas' {ViewMain},
  View.Splash in 'src\View\View.Splash.pas' {ViewSplash},
  View.Base in 'src\View\View.Base.pas' {ViewBase},
  View.Login in 'src\View\View.Login.pas' {ViewLogin},
  Utils.MyLibrary in '..\Bibliotecas\Utils\Utils.MyLibrary.pas',
  Msg.Controller in '..\Bibliotecas\Msg\src\Msg.Controller.pas',
  Msg.View in '..\Bibliotecas\Msg\src\Msg.View.pas' {FrmMensagem},
  SearchScreen.Controller in '..\Bibliotecas\SearchScreen\src\SearchScreen.Controller.pas',
  SearchScreen.View in '..\Bibliotecas\SearchScreen\src\SearchScreen.View.pas' {FrmBuscaComponentesTela},
  Vcl.Themes,
  Vcl.Styles,
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller in 'src\Controller\Controller.pas',
  Controller.Splash in 'src\Controller\Controller.Splash.pas';

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.Title := 'Projeto - Angelo Antonio Bottaro';

  ViewSplash := TViewSplash.Create(nil);
  try
    ViewSplash.ShowModal;
    ViewSplash.Update;

    repeat
      Application.ProcessMessages;
    until ViewSplash.CloseQuery;
  finally
     FreeAndNil(ViewSplash);
  end;

  Application.Run;
end.
