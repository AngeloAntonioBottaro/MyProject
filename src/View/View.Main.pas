unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TViewMain = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
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
      Self.Close;
end;

end.
