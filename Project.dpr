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
  Model.Behaviors in '..\Bibliotecas\Behaviors\Model.Behaviors.pas',
  Utils.Versao in 'src\Utils\Utils.Versao.pas',
  Utils.Variables in 'src\Utils\Utils.Variables.pas',
  Utils.Constants in 'src\Utils\Utils.Constants.pas',
  Model.Entities.Interfaces in 'src\Model\Entities\Model.Entities.Interfaces.pas',
  Model.Entities.Factory in 'src\Model\Entities\Model.Entities.Factory.pas',
  Model.Entities.PermissoesUsuario in 'src\Model\Entities\Model.Entities.PermissoesUsuario.pas',
  Model.Forms.Interfaces in 'src\Model\Forms\Model.Forms.Interfaces.pas',
  Model.Forms.Factory in 'src\Model\Forms\Model.Forms.Factory.pas',
  Model.Forms.Splash in 'src\Model\Forms\Model.Forms.Splash.pas',
  Model.Forms.Main in 'src\Model\Forms\Model.Forms.Main.pas';

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
