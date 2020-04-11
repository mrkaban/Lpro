unit installed;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, LazUTF8,
  Registry, LCLType, lazutf8classes, LCLIntF, LazUtils, StdCtrls, ExtCtrls,
  DBGrids, lconvencoding, Windows, Messages, ShellApi, sqlite3conn, sqldb, db;

type

  { TfInstalled }

  TfInstalled = class(TForm)
    bRegedit: TButton;
    bExplorer: TButton;
    bDeinstrall: TButton;
    DataSource4: TDataSource;
    DBGrid1: TDBGrid;
    leInstallDate: TLabeledEdit;
    leFullPathKey: TLabeledEdit;
    leRazrab: TLabeledEdit;
    leKatalog: TLabeledEdit;
    leVersionProg: TLabeledEdit;
    leDisplayName: TLabeledEdit;
    leKeyName: TLabeledEdit;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    rVetkaReestra: TRadioGroup;
    Splitter1: TSplitter;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery4: TSQLQuery;
    SQLTransaction4: TSQLTransaction;
    procedure bExplorerClick(Sender: TObject);
    procedure bRegeditClick(Sender: TObject);
    procedure bDeinstrallClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JumpToKey(Key: string);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
    procedure rVetkaReestraSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    MyRegistry: TRegistry;
    UninstallKey: String;
  end;

var
  fInstalled: TfInstalled;

implementation

{$R *.lfm}

{ TfInstalled }

procedure TfInstalled.FormCreate(Sender: TObject);
var
     MyList: TStringListUTF8;     // для хранения названий ключей реестра
     i : Integer;
     Str: string;
   NameKey: string;
   FullKey: String;
   bitnost: String;
 begin
  bitnost:=GetEnvironmentVariableUTF8('ProgramFiles(x86)');
  if bitnost <> '' then
  begin
   MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  end
     else
     begin
     MyRegistry:=TRegistry.Create;
     rVetkaReestra.Enabled:=False;
     end;

  if rVetkaReestra.ItemIndex = 0 then
    FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
  else if rVetkaReestra.ItemIndex = 1 then
  FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';

    ListBox1.Items.Clear;
    MyList:=TStringListUTF8.Create;
 //MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
  with MyRegistry do
        begin
        RootKey:=HKEY_LOCAL_MACHINE;
        OpenKeyReadOnly(FullKey);
        GetKeyNames(MyList);
        CloseKey;
        for i:=0 to MyList.Count-1 do
           begin
           RootKey:=HKEY_LOCAL_MACHINE;
           OpenKeyReadOnly(FullKey+
           MyList[i]);
           Str:=ReadString('DisplayName');
           if Str<>'' then
           NameKey:=MyList.Strings[i];
           ListBox1.Items.Add(CP1251ToUTF8(NameKey));
           CloseKey;
           end;
          end;
         MyList.Free;
     //     MyRegistry.CloseKey;
// MyRegistry.Free;
end;

procedure TfInstalled.JumpToKey(Key: string);
var
   i, n: Integer;
   hWin: HWND;
   ExecInfo: ShellExecuteInfoA;
//   x3264: String;      в данный момент закрыл
 begin
   hWin := FindWindowA(PChar('RegEdit_RegEdit'), nil);
   if hWin = 0 then
   {if Regedit doesn't run then we launch it}
   begin
     FillChar(ExecInfo, 60, #0);
     with ExecInfo do
     begin
       cbSize := 60;
       fMask  := SEE_MASK_NOCLOSEPROCESS;
       lpVerb := PChar('open');
       lpFile := PChar('regedit.exe');
       nShow  := 1;
     end;
     ShellExecuteExA(@ExecInfo);
     WaitForInputIdle(ExecInfo.hProcess, 200);
     hWin := FindWindowA(PChar('RegEdit_RegEdit'), nil);
   end;
   ShowWindow(hWin, SW_SHOWNORMAL);
 {   //
     if rVetkaReestra.ItemIndex = 0 then
    x3264:= 'SysTreeView32'
  else if rVetkaReestra.ItemIndex = 1 then
  x3264:= 'SysTreeView64';
   //                      }
   hWin := FindWindowExA(hWin, 0, PChar('SysTreeView32'), nil);
   SetForegroundWindow(hWin);
   i := 30;
   repeat
     SendMessageA(hWin, WM_KEYDOWN, VK_LEFT, 0);
     Dec(i);
   until i = 0;
   Sleep(500);
   SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
   Sleep(500);
   i := 1;
   n := Length(Key);
   repeat
     if Key[i] = '\' then
     begin
       SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
       Sleep(500);
     end
     else
       SendMessageA(hWin, WM_CHAR, Integer(Key[i]), 0);
     i := i + 1;
   until i = n;
end;

procedure TfInstalled.ListBox1SelectionChange(Sender: TObject; User: boolean);
var
  i: Integer; //счетчик
  FullKey: String;
  FiltrNameProg: String;
  s: String;
       p1: Integer;
     p2: Integer;
     p3:String;
begin
 if rVetkaReestra.ItemIndex = 0 then
 begin
    MyRegistry:=TRegistry.Create;
    FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
    end
  else if rVetkaReestra.ItemIndex = 1 then
  begin
    MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';
  end;


  // MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  for i:= 0 to ListBox1.Count -1 do
    if ListBox1.Selected[i] then
    begin
      leKeyName.Text:=ListBox1.Items.Strings[i];
   //   leFullPathKey.Text:=FullKey + leKeyName.Text + '\';
 //   end
 // else begin
 //  Exit
  end;
  leFullPathKey.Text:=FullKey + leKeyName.Text + '\';

  {
  MyRegistry:=TRegistry.Create;
 MyRegistry.RootKey:=HKEY_LOCAL_MACHINE;  //  lKeyName.Caption
 If MyRegistry.OpenKey(PChar(FullKey + leKeyName.Text + '\'), False) Then
   Begin
    leDisplayName.Text:=CP1251ToUTF8(MyRegistry.ReadString('DisplayName'));
    leVersionProg.Text:=CP1251ToUTF8(MyRegistry.ReadString('DisplayVersion'));
    leKatalog.Text:=CP1251ToUTF8(MyRegistry.ReadString('InstallLocation'));
    leRazrab.Text:=CP1251ToUTF8(MyRegistry.ReadString('Publisher'));
    UninstallKey:=CP1251ToUTF8(MyRegistry.ReadString('UninstallString'));
   End;
 // MyRegistry.CloseKey;
 //MyRegistry.Free;
 }
 //начало другого реестра
    MyRegistry.RootKey:=HKEY_LOCAL_MACHINE;
    MyRegistry.OpenKeyReadOnly(PChar(FullKey + leKeyName.Text + '\'));
    leDisplayName.Text:=CP1251ToUTF8(MyRegistry.ReadString('DisplayName'));
    leVersionProg.Text:=CP1251ToUTF8(MyRegistry.ReadString('DisplayVersion'));
    leKatalog.Text:=CP1251ToUTF8(MyRegistry.ReadString('InstallLocation'));
    leRazrab.Text:=CP1251ToUTF8(MyRegistry.ReadString('Publisher'));
    UninstallKey:=CP1251ToUTF8(MyRegistry.ReadString('UninstallString'));
    leInstallDate.Text:=CP1251ToUTF8(MyRegistry.ReadString('InstallDate'));
 //конец другого реестра


 // Теперь начинается поиск в базе

    if leDisplayName.Text = '' then
   begin
    FiltrNameProg:=leKeyName.Text;
   end
    else begin
    FiltrNameProg:=leDisplayName.Text;
    end;
    //Showmessage(FiltrNameProg);
    UTF8Delete(FiltrNameProg, UTF8Pos('"', FiltrNameProg), 1);
    UTF8Delete(FiltrNameProg, UTF8Pos('-2_is1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('_is1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('_x64', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' CC', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' CS', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' cc', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' cs', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' CC 2015', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' CC 2016', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' CC 2017', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015.1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015.2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015.3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015.4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015.5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016.1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016.2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016.3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016.4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016.5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017.1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017.2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017.3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017.4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017.5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2015', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2016', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2017', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2007', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2008', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2009', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2010', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2011', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2012', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2013', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 2014', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (v9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 0.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 1.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 2.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 3.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 4.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 5.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 6.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 7.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 8.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v 9.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v.9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' v. 9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(', версия', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (версия', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Версия', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(', version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' версия', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' Версия', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' Version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' Ver.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' ver.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Version', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (x64', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' x64', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (x86', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' x86', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('-x64', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' - 64 bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (32-разрядная', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (32-Bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (32-bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (32 bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (64-разрядная', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (64-Bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (64-bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (64 bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 64-bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 32-bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 64 bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 32 bit', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (V9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V.9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 0', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 1', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 3', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 5', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 7', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' V. 9', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('_64b', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' 64b', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' Trial', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' trial', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' demo', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' Demo', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Trial', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (trial', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (demo', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Demo', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' with update', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' with Update', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' With Update', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' With update', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (build', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (Build', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (0.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (1.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (2.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (3.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (4.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (5.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (6.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (7.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (8.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' (9.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -0.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -1.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -2.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -3.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -4.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -5.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -6.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -7.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -8.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' -9.', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' XE8', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' XE2', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' XE4', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos(' XE6', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('™', FiltrNameProg), UTF8Length(FiltrNameProg));
    UTF8Delete(FiltrNameProg, UTF8Pos('-64', FiltrNameProg), UTF8Length(FiltrNameProg));
    // 11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=' ' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrNameProg, UTF8Pos(p3, FiltrNameProg), UTF8Length(FiltrNameProg));
    end;
    end;
    //11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrNameProg, UTF8Pos(p3, FiltrNameProg), UTF8Length(FiltrNameProg));
    end;
    end;
    //-11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrNameProg, UTF8Pos(p3, FiltrNameProg), UTF8Length(FiltrNameProg));
    end;
    end;
     // -11.
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.';
    UTF8Delete(FiltrNameProg, UTF8Pos(p3, FiltrNameProg), UTF8Length(FiltrNameProg));
    end;
    end;
     // (11.
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='(' + IntToStr(p1) + '.';
    UTF8Delete(FiltrNameProg, UTF8Pos(p3, FiltrNameProg), UTF8Length(FiltrNameProg));
    end;
    end;

 //   s := 'SELECT name, type, license FROM program WHERE (name LIKE "%%%' + FiltrNameProg + '%%")';
      s := 'SELECT name, type, license FROM program WHERE (name LIKE "' + FiltrNameProg + '%%")';

  // всё, в s хранится запрос, его и используй для получения данных из БД
  //Showmessage(s);

SQLQuery4.Close;
SQLQuery4.Active:=false;
SQLQuery4.SQL.Clear;
SQLQuery4.SQL.Add(s);
SQLQuery4.Active:=true;
SQLQuery4.Open;

//заполняем заголовки колонок и меняем ширину колонок

DBGrid1.Columns[0].Title.Caption:='Название';
DBGrid1.Columns[1].Title.Caption:='Тип ПО';
DBGrid1.Columns[2].Title.Caption:='Лицензия';
DBGrid1.Columns[0].Width:= 180;
DBGrid1.Columns[1].Width:= 120;
DBGrid1.Columns[2].Width:= 100;


end;

procedure TfInstalled.rVetkaReestraSelectionChanged(Sender: TObject);
 var
     MyList3: TStringListUTF8;     // для хранения названий ключей реестра
     i : Integer;
     Str: string;
   NameKey: string;
   FullKey: String;
   bitnost: String;
 begin
     if rVetkaReestra.ItemIndex = 0 then
     begin
     //   MyRegistry:=TRegistry.Create;
        FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
        end
      else if rVetkaReestra.ItemIndex = 1 then
      begin
     //   MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
      FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';
      end;

      //начало нового варианта

        bitnost:=GetEnvironmentVariableUTF8('ProgramFiles(x86)');
  if bitnost <> '' then
  begin
   MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  end
     else
     begin
     MyRegistry:=TRegistry.Create;
     end;

    ListBox1.Items.Clear;
    MyList3:=TStringListUTF8.Create;
 //MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
  with MyRegistry do
        begin
        RootKey:=HKEY_LOCAL_MACHINE;
        OpenKeyReadOnly(FullKey);
        GetKeyNames(MyList3);
        CloseKey;
        for i:=0 to MyList3.Count-1 do
           begin
           RootKey:=HKEY_LOCAL_MACHINE;
           OpenKeyReadOnly(FullKey+
           MyList3[i]);
           Str:=ReadString('DisplayName');
           if Str<>'' then
           NameKey:=MyList3.Strings[i];
           ListBox1.Items.Add(CP1251ToUTF8(NameKey));
           CloseKey;
           end;
          end;
         MyList3.Free;

      //конец нового варианта
{  старый вариант получения списка
ListBox1.Items.Clear;
    MyList:=TStringListUTF8.Create;
// MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
  with MyRegistry do
        begin
        RootKey:=HKEY_LOCAL_MACHINE;
        OpenKeyReadOnly(FullKey);
        GetKeyNames(MyList);
        CloseKey;
        for i:=0 to MyList.Count-1 do
           begin
           RootKey:=HKEY_LOCAL_MACHINE;
           OpenKeyReadOnly(FullKey+
           MyList[i]);
           Str:=ReadString('DisplayName');
           if Str<>'' then
           NameKey:=MyList.Strings[i];
           ListBox1.Items.Add(CP1251ToUTF8(NameKey));
           CloseKey;
           end;
          end;
         MyList.Free;
 //         MyRegistry.CloseKey;
// MyRegistry.Free;
 }
end;

procedure TfInstalled.bDeinstrallClick(Sender: TObject);
begin
 if UninstallKey = '' then
begin
 Application.MessageBox('Не найден путь к деинсталлятору! Возможно, не выбран ключ реестра. В противном случае, не удалось подгрузить эти данные из реестра.',
    'Не найден путь к деинсталлятору', MB_ICONERROR + MB_OK);
 Exit;
end;
if ShellExecute(0,nil, PChar(UninstallKey),nil,nil,1) = 0 then;
end;

procedure TfInstalled.bRegeditClick(Sender: TObject);
var
FullKey: String;
begin
   if leKeyName.Text = '' then
   begin
    Application.MessageBox('Сначала необходимо выбрать ключ на панели в левой части и нажать кнопку "Открыть".',
    'Не открыт ключ', MB_ICONERROR + MB_OK);
    Exit;
   end;

   if rVetkaReestra.ItemIndex = 0 then
     begin
        MyRegistry:=TRegistry.Create;
        FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
        end
      else if rVetkaReestra.ItemIndex = 1 then
      begin
        MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
      FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';
      end;

//  MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
 with MyRegistry do
          begin

  RootKey:=HKEY_LOCAL_MACHINE;
  JumpToKey(UTF8ToWinCP('HKEY_LOCAL_MACHINE\' + FullKey + leKeyName.Text + '\'));

  end;
end;

procedure TfInstalled.bExplorerClick(Sender: TObject);
begin
    if leKatalog.Text = '' then
   begin
    Application.MessageBox('Каталог не указан!!! Возможно, не выбран ключ реестра. В противном случае, не удалось подгрузить каталог программы из реестра.',
    'Каталог не указан!!!', MB_ICONERROR + MB_OK);
    Exit;
   end;
 if ShellExecute(0,nil, PChar('Explorer.exe'),PChar(leKatalog.Text),nil,1) = 0 then;
end;

end.

