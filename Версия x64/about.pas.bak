unit About;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ShellApi;

type

  { TfAbout }

  TfAbout = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure Label3Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fAbout: TfAbout;

implementation

{$R *.lfm}

{ TfAbout }



procedure TfAbout.Label3Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/'),nil,0) =0 then;
end;


end.

