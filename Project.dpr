program Project;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
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
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller.Factory in 'src\Controller\Controller.Factory.pas',
  Controller.Forms.Splash in 'src\Controller\Forms\Controller.Forms.Splash.pas',
  Model.Behaviors in '..\Bibliotecas\Behaviors\Model.Behaviors.pas',
  Controller.Forms.Factory in 'src\Controller\Forms\Controller.Forms.Factory.pas',
  Controller.Forms.Interfaces in 'src\Controller\Forms\Controller.Forms.Interfaces.pas',
  Controller.Forms.Main in 'src\Controller\Forms\Controller.Forms.Main.pas',
  Utils.Versao in 'src\Utils\Utils.Versao.pas',
  Utils.Variables in 'src\Utils\Utils.Variables.pas',
  Utils.Constants in 'src\Utils\Utils.Constants.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Model.Factory in 'src\Model\Model.Factory.pas',
  Model.Forms.Interfaces in 'src\Model\Forms\Model.Forms.Interfaces.pas',
  Model.Forms.Factory in 'src\Model\Forms\Model.Forms.Factory.pas',
  Model.Forms.Main in 'src\Model\Forms\Model.Forms.Main.pas',
  Controller.Forms.Login in 'src\Controller\Forms\Controller.Forms.Login.pas',
  Model.Forms.Login in 'src\Model\Forms\Model.Forms.Login.pas';

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
