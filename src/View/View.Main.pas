unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TViewMain = class(TForm)
    MainMenu1: TMainMenu;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure SystemTerminate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewMain: TViewMain;

implementation

{$R *.dfm}

uses Utils.MyLibrary, View.Login;

procedure TViewMain.FormCreate(Sender: TObject);
var
  vContinue: Boolean;
begin
   Utils.MyLibrary.ConfForm(Self);

   if(ViewLogin = nil)then Application.CreateForm(TViewLogin, ViewLogin);
   try
     vContinue := (ViewLogin.ShowModal <> mrCancel);
   finally
     FreeAndNil(ViewLogin);
   end;

   if(not vContinue)then
      Self.SystemTerminate;
end;

procedure TViewMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Utils.MyLibrary.DefaultKeyDown(Self, Key, Shift);
end;

procedure TViewMain.SystemTerminate;
begin
   Application.Terminate;
end;

end.
