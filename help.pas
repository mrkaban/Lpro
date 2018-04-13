unit help;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml, Ipfilebroker, Iphttpbroker, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfHelp }

  TfHelp = class(TForm)
    IpFileDataProvider1: TIpFileDataProvider;
    IpHtmlPanel1: TIpHtmlPanel;
    RGrazdeli: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure RGrazdeliSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fHelp: TfHelp;

implementation

{$R *.lfm}

{ TfHelp }

procedure TfHelp.FormCreate(Sender: TObject);
begin
  IpHtmlPanel1.OpenURL('help/Vozmozhnosti.html');
end;

procedure TfHelp.RGrazdeliSelectionChanged(Sender: TObject);
begin
  case RGrazdeli.ItemIndex of
        0 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Vozmozhnosti.html'));
        1 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Naznachenie.html'));
        2 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Type-lic-PO.html'));
        3 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/avtopoisk.html'));
        4 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Ruch-poisk.html'));
        5 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Install-PO.html'));
        6 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Poisk-v-baze.html'));
        7 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Zamena.html'));
        8 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Settings.html'));
        9 : IpHtmlPanel1.OpenURL(expandLocalHtmlFileName('help/Vozmozh-Oshibki.html'));
      end;
end;

end.

