unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus, Grids,
  StdCtrls, About, PoiskVBaze, help, Settings,
  PodborZameni, sqlite3conn, sqldb, db, LCLType, winpeimagereader, elfreader, machoreader,
  LCLIntF, Clipbrd, DBGrids, DbCtrls, ExtCtrls, ComCtrls, LazHelpHTML, LazUTF8,
  lconvencoding, Registry, ComObj, Windows, StrUtils, ActiveX,
  IdHTTP, lazutf8classes, HelpIntfs, LResources, LCLProc, Types, FileCtrl,
  LazFileUtils, LazUtils, RichMemo, Messages, ShellApi, Variants, ProsmotrReestra;

type

  { TfMian }
  TfMian = class(TForm)
    bDeinstrall: TButton;
    bExplorer: TButton;
    bRegedit: TButton;
    bRuchPoisk: TButton;
    bSearch: TButton;
    bUkazKatalog: TButton;
    bOpenKatPodrob: TButton;
    bInstViewZam: TButton;
    bInstpoSokrtiZapros: TButton;
    bViewZamPodrob: TButton;
    cbZamenaPodrob: TComboBox;
    ComboBox1: TComboBox;
    cbInstallZam: TComboBox;
    DataSource1: TDataSource;
    DataSourceAllVar: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGridAllVar: TDBGrid;
    FD: TFontDialog;
    IdHTTP1: TIdHTTP;
    ImageList1: TImageList;
    leIDPodrob: TLabeledEdit;
    lAvtoPodrobZamena: TLabel;
    lZamena: TLabel;
    leStoimostPodrob: TLabeledEdit;
    leLicensePodrob: TLabeledEdit;
    leTypePoPodrob: TLabeledEdit;
    leInstallDatePodrob: TLabeledEdit;
    leRazrabPodrob: TLabeledEdit;
    leVersionPodrob: TLabeledEdit;
    leKatalogPodrob: TLabeledEdit;
    leKluchPodrob: TLabeledEdit;
    leIshName: TLabeledEdit;
    leNamePodrob: TLabeledEdit;
    lProgress: TLabel;
    leDisplayName: TLabeledEdit;
    leFullPathKey: TLabeledEdit;
    leInstallDate: TLabeledEdit;
    leKatalog: TLabeledEdit;
    leKatalogSearch: TLabeledEdit;
    leKeyName: TLabeledEdit;
    leRazrab: TLabeledEdit;
    leVersionProg: TLabeledEdit;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    mBeginSerch: TMenuItem;
    mAbout: TMenuItem;
    mCopy: TMenuItem;
    Memo1: TMemo;
    mPeredatLibreOffice: TMenuItem;
    mSettings: TMenuItem;
    mHelp: TMenuItem;
    mSupport: TMenuItem;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    PanelInstalled: TPanel;
    pPeredatExcel: TMenuItem;
    pExportHTML: TMenuItem;
    pExportCSV: TMenuItem;
    pExport: TMenuItem;
    mUpdateCheck: TMenuItem;
    mPodborZameni: TMenuItem;
    mPoiskVBaze: TMenuItem;
    mExportHTML: TMenuItem;
    mPeredatExcel: TMenuItem;
    pOchistka: TMenuItem;
    mExport: TMenuItem;
    mOchistit: TMenuItem;
    pCopy: TMenuItem;
    mWebStranica: TMenuItem;
    ProgressBar1: TProgressBar;
    pSortByZamena: TMenuItem;
    pSortByName: TMenuItem;
    pSortByType: TMenuItem;
    pSortByLic: TMenuItem;
    pSortByStoimost: TMenuItem;
    pShrift: TMenuItem;
    pBeginSearch: TMenuItem;
    pVidMenu: TMenuItem;
    pSearchMenu: TMenuItem;
    mSort04: TMenuItem;
    mSort03: TMenuItem;
    mSort01: TMenuItem;
    mSort02: TMenuItem;
    mSort00: TMenuItem;
    mShrift: TMenuItem;
    mVid: TMenuItem;
    mSpravka: TMenuItem;
    mSearch: TMenuItem;
    mExit: TMenuItem;
    mFile: TMenuItem;
    PopupMenu1: TPopupMenu;
    RichMemo1: TRichMemo;
    rVetkaReestra: TRadioGroup;
    SD3: TSaveDialog;
    SD2: TSaveDialog;
    SD: TSaveDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQueryAllVar: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    AvtoPoiskPage: TTabSheet;
    RuchPoiskPage: TTabSheet;
    SQLTransaction3: TSQLTransaction;
    InstallPoPage: TTabSheet;
    SQLTransaction4: TSQLTransaction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    tsLicenseSogl: TTabSheet;
    tsVseVarianti: TTabSheet;
    tsPodrobnosti: TTabSheet;
    ToolBar1: TToolBar;
    panExit: TToolButton;
    panExportCSV: TToolButton;
    panExportHTML: TToolButton;
    panPeredatExcel: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    panBeginSerch: TToolButton;
    panOchistit: TToolButton;
    panPoiskVBaze: TToolButton;
    panPodborZameni: TToolButton;
    ToolButton3: TToolButton;
    panSort00: TToolButton;
    panSort01: TToolButton;
    panSort02: TToolButton;
    panSort03: TToolButton;
    panSort04: TToolButton;
    ToolButton4: TToolButton;
    panAbout: TToolButton;
    panUpdateCheck: TToolButton;
    panHelp: TToolButton;
    procedure AvtoPoiskPageContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure bDeinstrallClick(Sender: TObject);
    procedure bExplorerClick(Sender: TObject);
    procedure bInstpoSokrtiZaprosClick(Sender: TObject);
    procedure bInstViewZamClick(Sender: TObject);
    procedure bOpenKatPodrobClick(Sender: TObject);
    procedure bRegeditClick(Sender: TObject);
    procedure bRuchPoiskClick(Sender: TObject);
    procedure bUkazKatalogClick(Sender: TObject);
    procedure bViewZamPodrobClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure leKatalogSearchChange(Sender: TObject);
    procedure leKluchPodrobChange(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
    procedure mAboutClick(Sender: TObject);
    procedure mBeginSerchClick(Sender: TObject);
    procedure mPeredatLibreOfficeClick(Sender: TObject);
    procedure mSettingsClick(Sender: TObject);
    procedure mExitClick(Sender: TObject);
    procedure mExportClick(Sender: TObject);
    procedure mExportHTMLClick(Sender: TObject);
    procedure mHelpClick(Sender: TObject);
    procedure mOchistitClick(Sender: TObject);
    procedure mPeredatExcelClick(Sender: TObject);
    procedure mPodborZameniClick(Sender: TObject);
    procedure mPoiskVBazeClick(Sender: TObject);
    procedure mShriftClick(Sender: TObject);
    procedure mSort00Click(Sender: TObject);
    procedure mSort01Click(Sender: TObject);
    procedure mSort02Click(Sender: TObject);
    procedure mSort03Click(Sender: TObject);
    procedure mSort04Click(Sender: TObject);
    procedure mSupportClick(Sender: TObject);
    procedure mUpdateCheckClick(Sender: TObject);
    procedure mWebStranicaClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure pCopyClick(Sender: TObject);
    procedure rVetkaReestraSelectionChanged(Sender: TObject);
    procedure JumpToKey(Key: string);
  private
    { private declarations }
  public
    MyFiltrList: TStringListUTF8;    //хранит список названий установленных программ
    path : TSelectDirectoryDialog; //  для ручного поиска
      put:string;                  //  для ручного поиска
          MyRegistry2: TRegistry;
    UninstallKey: String;
    MyList3: TStringListUTF8;     // для хранения названий ключей реестра Installed
    nilAvtoSearch : Byte;
    putLicSog:string;
    { public declarations }
  end;

var
  fMian: TfMian;
  MyList: TStringList;
implementation

{$R *.lfm}

{ TfMian }

procedure TfMian.mExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfMian.mExportClick(Sender: TObject);

 //экспорт в csv
const
  Delim = CHR(9);
var
  S: String;
  I: Integer;
  Stream: TFileStream;
    filename : String;
begin
  // если открыт авто поиск
  if PageControl1.ActivePageindex=0 then
  begin
  SD.FileName:=filename;
  if SD.Execute then
   begin
    filename:=SD.FileName;
    Stream := TFileStream.Create(filename, fmCreate);
    S := '';
    for I := 0 to DBGrid1.Columns.Count - 1 do
     if DBGrid1.Columns[I].Visible=true then S := S + TColumn(DBGrid1.Columns[I]).Title.Caption + Delim;
     S := UTF8ToCP1251(S + CHR(13));
     Stream.Write(PChar(S)^, Length(S));
     while not DBGrid1.DataSource.DataSet.Eof do
      begin
       S := '';
       for I := 0 to DBGrid1.Columns.Count - 1 do
        if DBGrid1.Columns[I].Visible=true then S := S + TColumn(DBGrid1.Columns[I]).Field.AsString + Delim;

       S := UTF8ToCP1251(S + CHR(13));
       Stream.Write(PChar(S)^, Length(S));
       DBGrid1.DataSource.DataSet.Next();
      end;
   Stream.Free();
//   if FileExists(filename) then OpenDocument(filename);    //открытие документа после сохранения
  end;
  end;
   // если открыт ручной поиск
  if PageControl1.ActivePageindex=1 then
  begin
  SD.FileName:=filename;
  if SD.Execute then
   begin
    filename:=SD.FileName;
    Stream := TFileStream.Create(filename, fmCreate);
    S := '';
    for I := 0 to DBGrid2.Columns.Count - 1 do
     if DBGrid2.Columns[I].Visible=true then S := S + TColumn(DBGrid2.Columns[I]).Title.Caption + Delim;
     S := UTF8ToCP1251(S + CHR(13));
     Stream.Write(PChar(S)^, Length(S));
     while not DBGrid2.DataSource.DataSet.Eof do
      begin
       S := '';
       for I := 0 to DBGrid2.Columns.Count - 1 do
        if DBGrid2.Columns[I].Visible=true then S := S + TColumn(DBGrid2.Columns[I]).Field.AsString + Delim;

       S := UTF8ToCP1251(S + CHR(13));
       Stream.Write(PChar(S)^, Length(S));
       DBGrid2.DataSource.DataSet.Next();
      end;
   Stream.Free();
//   if FileExists(filename) then OpenDocument(filename);    //открытие документа после сохранения
  end;
  end;


end;

  Function Repa(s:string):string;       // для экспорта в штмл
var
  nl:Word; // было Integer
  cStr:string;
  begin
    CStr:=s;
  for nl:= 1 to length(cStr) do if cStr[nl] = '.' then cStr[nl]:= ',';
  Repa:=CStr;
  end;



procedure TfMian.mExportHTMLClick(Sender: TObject);
var

 t:TStringList;
    i:Integer;
    s:string;
    filename : String;
    //Для имени пк
    i1: DWORD;
    p1: PChar;
    Nst7:Word;
    Nst1:Word;
    Nst2:Word;
    Nst3:Word;
    Nst4:Word;
    Nst5:Word;
    Nst6:Word;
  begin
  i1:=255;
GetMem(p1, i1);
GetComputerName(p1, i1);


   //подгружаем настройки для определения заголовков колонок
    SQLQuery4.Close;
    SQLQuery4.Active:=false;
    SQLQuery4.SQL.Clear;
    s := 'select * from setting';
    SQLQuery4.SQL.Add(s);
    SQLQuery4.Active:=true;

   { SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Text:='select * from setting';
    SQLQuery1.Open;
    SQLQuery1.First;    }


  // если открыт авто поиск
    if PageControl1.ActivePageindex=0 then
      begin
SD2.FileName:=filename;
if SD2.Execute then
 begin
 filename:=SD2.FileName;
t:=TStringList.Create;
DBGrid1.DataSource.DataSet.first;
t.add('<html>');
t.add('<head>');
t.add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
t.add('</head>');
t.add('<h1 align=center>Lpro - Проверка лицензий установленных программ</h1>');
t.add('<h2 align=center>Имя компьютера: ' + p1 + '</h2>');
t.add('<html>');
t.add('<table border=1 align=center>');
//    подружаю из базы 1 или 0 для колонок

Nst7:=SQLQuery4.FieldByName('AvtoSt7').AsInteger;
Nst2:=SQLQuery4.FieldByName('AvtoSt2').AsInteger;
Nst3:=SQLQuery4.FieldByName('AvtoSt3').AsInteger;
Nst4:=SQLQuery4.FieldByName('AvtoSt4').AsInteger;
Nst5:=SQLQuery4.FieldByName('AvtoSt5').AsInteger;
Nst6:=SQLQuery4.FieldByName('AvtoSt6').AsInteger;

//
 t.add('<tr>');
 if Nst7 = 1 then
t.add('<td> Исходное название');
 if Nst2 = 1 then
t.add('<td> Название в БД');
 if Nst3 = 1 then
t.add('<td> Тип ПО');
 if Nst4 = 1 then
t.add('<td> Лицензия');
 if Nst5 = 1 then
t.add('<td> Стоимость');
 if Nst6 = 1 then
t.add('<td> Замена');
t.add('</tr>');
//
t.add('<tr>');
for i:=6 to DBGrid1.DataSource.DataSet.Fields.Count-1 do
t.add('<td>'+DBGrid1.DataSource.DataSet.fields[i].fieldname);
t.add('</tr>');
while not DBGrid1.DataSource.DataSet.eof do
begin
s:='<tr>';
for i:=0 to DBGrid1.DataSource.DataSet.Fields.Count-1 do
 s:=s+'<td>'+DBGrid1.DataSource.DataSet.fields[i].AsString;
s:=s+'</tr>';
t.add(SysToUTF8(s));     //   UTF8ToCP1251
DBGrid1.DataSource.DataSet.next;
end;
t.add('</table>');
t.add('<p align=center>Официальный сайт: <a href="http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/">КонтинентСвободы.рф</a></p>');
t.add('</html>');
t.savetofile(filename);
end;
DBGrid1.DataSource.DataSet.first;

      end;

    // если открыт ручной поиск
   if PageControl1.ActivePageindex=1 then
      begin
SD2.FileName:=filename;
if SD2.Execute then
 begin
 filename:=SD2.FileName;
t:=TStringList.Create;
DBGrid2.DataSource.DataSet.first;
t.add('<html>');
t.add('<head>');
t.add('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
t.add('</head>');
t.add('<h1 align=center>Lpro - Проверка лицензий установленных программ</h1>');
t.add('<h2 align=center>Имя компьютера: ' + p1 + '</h2>');
t.add('<html>');
t.add('<table border=1 align=center>');
//
Nst7:=SQLQuery4.FieldByName('RuchSt7').AsInteger;
Nst2:=SQLQuery4.FieldByName('RuchSt2').AsInteger;
Nst1:=SQLQuery4.FieldByName('RuchSt1').AsInteger;
Nst3:=SQLQuery4.FieldByName('RuchSt3').AsInteger;
Nst4:=SQLQuery4.FieldByName('RuchSt4').AsInteger;
Nst5:=SQLQuery4.FieldByName('RuchSt5').AsInteger;
Nst6:=SQLQuery4.FieldByName('RuchSt6').AsInteger;

 t.add('<tr>');
 if Nst7 = 1 then
t.add('<td> Путь');
 if Nst2 = 1 then
t.add('<td> Название');
 if Nst1 = 1 then
 t.add('<td> Исходный запрос');
 if Nst3 = 1 then
t.add('<td> Тип ПО');
 if Nst4 = 1 then
t.add('<td> Лицензия');
 if Nst5 = 1 then
t.add('<td> Стоимость');
 if Nst6 = 1 then
t.add('<td> Замена');
t.add('</tr>');
//
t.add('<tr>');
for i:=7 to DBGrid2.DataSource.DataSet.Fields.Count-1 do
t.add('<td>'+DBGrid2.DataSource.DataSet.fields[i].fieldname);
t.add('</tr>');
while not DBGrid2.DataSource.DataSet.eof do
begin
s:='<tr>';
for i:=0 to DBGrid2.DataSource.DataSet.Fields.Count-1 do
 s:=s+'<td>'+DBGrid2.DataSource.DataSet.fields[i].AsString;
s:=s+'</tr>';
t.add(SysToUTF8(s));     //   UTF8ToCP1251
DBGrid2.DataSource.DataSet.next;
end;
t.add('</table>');
t.add('<p align=center>Официальный сайт: <a href="http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/">КонтинентСвободы.рф</a></p>');
t.add('</html>');
t.savetofile(filename);
end;
DBGrid2.DataSource.DataSet.first;
      FreeMem(p1);
      end;

end;

procedure TfMian.mHelpClick(Sender: TObject);
begin
  //WinExec('hh.exe Lpro.chm',SW_SHOW);
  fHelp.Show;
end;

procedure TfMian.mOchistitClick(Sender: TObject);
begin
bOpenKatPodrob.Enabled:=False;
cbZamenaPodrob.Enabled:=False;
bViewZamPodrob.Enabled:=False;
lProgress.Caption:='';
ProgressBar1.Position:=0;
DBGrid1.DataSource.DataSet.DisableControls;          //очистка  dbgrid кнопка очистка
 try
 DBGrid1.DataSource.DataSet.First;
 while not DBGrid1.DataSource.DataSet.Eof
 do DBGrid1.DataSource.DataSet.Delete;
 finally
 DBGrid1.DataSource.DataSet.EnableControls;
end;
  bSearch.Visible:=True;
  nilAvtoSearch:=0;
end;

procedure TfMian.mPeredatLibreOfficeClick(Sender: TObject); //экспорт в Libre
Var
  i, j: Word;

  OO, Desktop: Variant;
  Doc, Sheet: Variant;
  Cell: Variant;
  s: string;
  ds : TDataSet;
  Zagolovki: array of array of string;
  //для подгрузки из настроек включенных колонок
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
begin
    OO := CreateOleObject('com.sun.star.ServiceManager');
  Desktop := OO.createInstance('com.sun.star.frame.Desktop');
  Doc := Desktop.LoadComponentFromURL('private:factory/scalc', '_blank', 0, VarArrayCreate([0, -1], varVariant));
  Sheet := Doc.getSheets.GetByIndex(0);
  Sheet.Name := 'Lpro';

    // получаем настройки из таблицы
    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;


  // если открыт авто поиск
    if PageControl1.ActivePageindex=0 then
      begin
    // получаю включенные колонки
    Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
    Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
    Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;
    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;
     // начало определения позиций

       if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

    // конец определения позиций

      //теперь заполняем заголовки Zagolovki
        SetLength(Zagolovki, 1, 7);

        if Nst7 = 1 then
        begin
        Zagolovki[0][Nst7Pos + 1] := 'Исходное название';
        Cell := Sheet.getCellByPosition(Nst7Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst7Pos + 1])));
        end;
        if Nst2 = 1 then
        begin
        Zagolovki[0][Nst2Pos + 1] := 'Название в БД';
        Cell := Sheet.getCellByPosition(Nst2Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst2Pos + 1])));
        end;
        if Nst3 = 1 then
        begin
        Zagolovki[0][Nst3Pos + 1] := 'Тип ПО';
        Cell := Sheet.getCellByPosition(Nst3Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst3Pos + 1])));
        end;
        if Nst4 = 1 then
        begin
        Zagolovki[0][Nst4Pos + 1] := 'Лицензия';
        Cell := Sheet.getCellByPosition(Nst4Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst4Pos + 1])));
        end;
        if Nst5 = 1 then
        begin
        Zagolovki[0][Nst5Pos + 1] := 'Стоимость';
        Cell := Sheet.getCellByPosition(Nst5Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst5Pos + 1])));
        end;
        if Nst6 = 1 then
        begin
        Zagolovki[0][Nst6Pos + 1] := 'Замена';
        Cell := Sheet.getCellByPosition(Nst6Pos + 1, 0);
        Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst6Pos + 1])));
        end;

     //   Zagolovki[0][0] := 'Исходное название';
     //   Cell := Sheet.getCellByPosition(0, 0);
     //   Cell.SetString(WideString(UTF8Decode(Zagolovki[0][0])));
        //конец заполнения заголовков

   ds := DBGrid1.DataSource.DataSet;
        ds.First;
        j := 1; // с какой строки начинать вставлять в CALC
        while not ds.EOF do
        begin
          for i := 1 to ds.FieldCount do
          begin
            Cell := Sheet.getCellByPosition(i, j);
            if i = 0 then
             Cell.SetString(WideString(UTF8Decode(ds.Fields.Fields[i].AsString)));
            if i > 0 then
            Cell.SetString(WideString(UTF8Decode(ds.Fields.Fields[i - 1].AsString)));
          end;
          ds.Next;
          inc(j);
        end;

      end;

    // если открыт ручной поиск
    if PageControl1.ActivePageindex=1 then
      begin

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

   //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));

             SetLength(Zagolovki, 1, 8);
              if Nst7 = 1 then
              begin
                Zagolovki[0][Nst7Pos + 1] := 'Путь';
                Cell := Sheet.getCellByPosition(Nst7Pos + 1, 0);
                Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst7Pos + 1])));
              end;
              if Nst2 = 1 then
              begin
              Zagolovki[0][Nst2Pos + 1] := 'Название';
              Cell := Sheet.getCellByPosition(Nst2Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst2Pos + 1])));
              end;

              if Nst1 = 1 then
              begin
              Zagolovki[0][Nst1Pos + 1] := 'Исходный запрос';
              Cell := Sheet.getCellByPosition(Nst1Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst1Pos + 1])));
              end;

              if Nst3 = 1 then
              begin
              Zagolovki[0][Nst3Pos + 1] := 'Тип ПО';
              Cell := Sheet.getCellByPosition(Nst3Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst3Pos + 1])));
              end;
              if Nst4 = 1 then
              begin
              Zagolovki[0][Nst4Pos + 1] := 'Лицензия';
              Cell := Sheet.getCellByPosition(Nst4Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst4Pos + 1])));
              end;
              if Nst5 = 1 then
              begin
              Zagolovki[0][Nst5Pos + 1] := 'Стоимость';
              Cell := Sheet.getCellByPosition(Nst5Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst5Pos + 1])));
              end;
              if Nst6 = 1 then
              begin
              Zagolovki[0][Nst6Pos + 1] := 'Замена';
              Cell := Sheet.getCellByPosition(Nst6Pos + 1, 0);
              Cell.SetString(WideString(UTF8Decode(Zagolovki[0][Nst6Pos + 1])));
              end;

            //  Zagolovki[0][0] := 'Путь';
            //  Cell := Sheet.getCellByPosition(0, 0);
            //  Cell.SetString(WideString(UTF8Decode(Zagolovki[0][0])));


              ds := DBGrid2.DataSource.DataSet;
              ds.First; j := 1; // с какой строки начинать вставлять в CALC
              while not ds.EOF do
              begin
                for i := 1 to ds.FieldCount do
                begin
                  Cell := Sheet.getCellByPosition(i, j);
                  if i = 0 then
                   Cell.SetString(WideString(UTF8Decode(ds.Fields.Fields[i].AsString)));
                  if i > 0 then
                  Cell.SetString(WideString(UTF8Decode(ds.Fields.Fields[i - 1].AsString)));
                end;
                ds.Next; inc(j);
              end;

      end;




end;

procedure TfMian.mPeredatExcelClick(Sender: TObject);
var
     i,j,index: Integer;
      ExcelApp,sheet: Variant;
      ClassID: TCLSID;
    Rez : HRESULT;
                              //экспорт в эксель
begin

// если открыт авто поиск
    if PageControl1.ActivePageindex=0 then
      begin


Rez := CLSIDFromProgID(PWideChar(WideString('Excel.Application')), ClassID);
if Rez <> S_OK then begin
  MessageDlg('EXCEL не установлен. Поддерживается передача только в EXCEL.',mtERROR,[mbok],0);
  Exit;
  end;
ExcelApp := CreateOleObject('Excel.Application');
ExcelApp.Visible := False;
ExcelApp.WorkBooks.Add(-4167);
ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Export';
sheet:=ExcelApp.WorkBooks[1].WorkSheets['Export'];
index:=1; //Загоняем с первой строки
DBGrid1.DataSource.DataSet.First;
for i:=1 to DBGrid1.DataSource.DataSet.RecordCount do
begin
for j:=1 to DBGrid1.DataSource.DataSet.FieldCount do
sheet.cells[index,j]:=DBGrid1.DataSource.DataSet.fields[j-1].AsWideString;
inc(index);
DBGrid1.DataSource.DataSet.Next;
end;
ExcelApp.Visible := true;

      end;

    // если открыт ручной поиск
    if PageControl1.ActivePageindex=1 then
      begin
Rez := CLSIDFromProgID(PWideChar(WideString('Excel.Application')), ClassID);
if Rez <> S_OK then begin
  MessageDlg('EXCEL не установлен. Поддерживается передача только в EXCEL.',mtERROR,[mbok],0);
  Exit;
  end;
ExcelApp := CreateOleObject('Excel.Application');
ExcelApp.Visible := False;
ExcelApp.WorkBooks.Add(-4167);
ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Export';
sheet:=ExcelApp.WorkBooks[1].WorkSheets['Export'];
index:=1; //Загоняем с первой строки
DBGrid2.DataSource.DataSet.First;
for i:=1 to DBGrid2.DataSource.DataSet.RecordCount do
begin
for j:=1 to DBGrid2.DataSource.DataSet.FieldCount do
sheet.cells[index,j]:=DBGrid2.DataSource.DataSet.fields[j-1].AsWideString;
inc(index);
DBGrid2.DataSource.DataSet.Next;
end;
ExcelApp.Visible := true;

      end;

end;

procedure TfMian.mPodborZameniClick(Sender: TObject);
begin
  fPodborZameni.ShowModal;
end;

procedure TfMian.mPoiskVBazeClick(Sender: TObject);
begin
    fPoiskVBaze.ShowModal;
end;


procedure TfMian.mShriftClick(Sender: TObject);
begin
    //сначала диалогу присваиваем шрифт:
  FD.Font:= DBGrid1.Font;
  //если диалог прошел успешно, меняем шрифт:
  if FD.Execute then DBGrid1.Font:= FD.Font;
end;


procedure TfMian.mWebStranicaClick(Sender: TObject);
begin
  OpenURL('http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/lpro-%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0-%D0%BB%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D0%B9-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC.html');
end;

procedure TfMian.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePageindex=1 then
 begin
     mBeginSerch.Enabled := False;
     mOchistit.Enabled := False;
     panBeginSerch.Enabled := False;
     panOchistit.Enabled := False;
     panSort00.Enabled := True;
     panSort01.Enabled := True;
     panSort02.Enabled := True;
     panSort03.Enabled := True;
     panSort04.Enabled := True;
     mSort00.Enabled := True;
     mSort01.Enabled := True;
     mSort02.Enabled := True;
     mSort03.Enabled := True;
     mSort04.Enabled := True;
     mExport.Enabled := True;
     mExportHTML.Enabled := True;
     mPeredatExcel.Enabled := True;
     panExportCSV.Enabled := True;
     panExportHTML.Enabled := True;
     panPeredatExcel.Enabled := True;
 end;
if PageControl1.ActivePageindex=2 then
 begin
     mBeginSerch.Enabled := False;
     mOchistit.Enabled := False;
     panBeginSerch.Enabled := False;
     panOchistit.Enabled := False;
     panSort00.Enabled := False;
     panSort01.Enabled := False;
     panSort02.Enabled := False;
     panSort03.Enabled := False;
     panSort04.Enabled := False;
     mSort00.Enabled := False;
     mSort01.Enabled := False;
     mSort02.Enabled := False;
     mSort03.Enabled := False;
     mSort04.Enabled := False;
     mExport.Enabled := False;
     mExportHTML.Enabled := False;
     mPeredatExcel.Enabled := False;
     panExportCSV.Enabled := False;
     panExportHTML.Enabled := False;
     panPeredatExcel.Enabled := False;
 end;
if PageControl1.ActivePageindex=0 then
 begin
     mBeginSerch.Enabled := True;
     mOchistit.Enabled := True;
     panBeginSerch.Enabled := True;
     panOchistit.Enabled := True;
     panSort00.Enabled := True;
     panSort01.Enabled := True;
     panSort02.Enabled := True;
     panSort03.Enabled := True;
     panSort04.Enabled := True;
     mSort00.Enabled := True;
     mSort01.Enabled := True;
     mSort02.Enabled := True;
     mSort03.Enabled := True;
     mSort04.Enabled := True;
     mExport.Enabled := True;
     mExportHTML.Enabled := True;
     mPeredatExcel.Enabled := True;
     panExportCSV.Enabled := True;
     panExportHTML.Enabled := True;
     panPeredatExcel.Enabled := True;
 end;
end;



procedure TfMian.pCopyClick(Sender: TObject);
//var
//     bm: TBookMark;
  //     pch, pch1: PChar;
  //     s, s2: string;
  //     i, j: integer;                   //   Копирование выделения
 Const
  //Tab character                       // НАВЕРНОЕ СТОИТ УБРАТЬ, не требуется
  Delim = CHR(9);
var                                    //    отключил пункт в меню  !!!!!!!!!!!
  i: Integer;
  x: Integer;
  S: String;
  Y: String;

  begin

  //Copy Fieldnames First
  Y := '';
  for x := 0 to DBGrid1.Columns.Count - 1 do
  Y := Y + (format('%s',[DBGrid1.columns[x].title.caption]))+ Delim;
  Memo1.Lines.Add(Y);

  //Copy Field contents
  if DBGrid1.SelectedRows.Count > 0 then
  begin
    with DBGrid1.DataSource.DataSet do
    begin
      for i := 0 to DBGrid1.SelectedRows.Count-1 do
      begin
          //Bookmark sets the position of the selection
          S := '';
          GotoBookmark(Tbookmark(DBGrid1.SelectedRows[i]));
          for x := 0 to DBGrid1.Columns.Count - 1 do
          Begin
          S := S + (format('%s',[DbGrid1.columns[x].field.asString]))+ Delim;
          end;
          Memo1.Lines.Add(S);
        end;
      end;
    end;
  //Copy to a memo field, then to the clipboard
  Memo1.SelectAll;
  Memo1.CopyToClipboard;






     {*
     s := '';
       for j := 0 to DBGrid1.Columns.Count - 1 do
         s := s + DBGrid1.Columns.Items[j].Title.Caption + #9;
       s := s + #13 + #10;
       if not DBGrid1.DataSource.DataSet.active then
       begin
         ShowMessage('Нет выборки!!!');
         Exit;
       end;
       try
         DBGrid1.Visible := False; //Делаем грид невидимым, чтобы не тратилось время
         //на его перерисовку при прокрутке DataSet - просто и
         //эффективно
         bm := DBGrid1.DataSource.DataSet.GetBookmark; // для того чтобы не
         // потерять текущую запись
         DBGrid1.DataSource.DataSet.First;
         while not DBGrid1.DataSource.DataSet.EOF do
         begin
           s2 := '';
           for j := 0 to DBGrid1.Columns.Count - 1 do
           begin
             s2 := s2 + DBGrid1.Columns.Items[j].Field.AsString + #9;
           end;
           s := s + s2 + #13 + #10;
           DBGrid1.DataSource.DataSet.Next;
         end;
         //Переключаем клавиатуру "в русский режим",
         //иначе - проблемы с кодировкой
         GetMem(pch, 100);
         GetMem(pch1, 100);
         GetKeyboardLayoutName(pch);
         StrCopy(pch1, pch);
         while pch <> '00000419' do
         begin
           ActivateKeyboardLayout(HKL_NEXT, 0);
           GetKeyboardLayoutName(pch);
           if strComp(pch, pch1) = 0 then
             //Круг замкнулся - нет такого языка '00000419'
             StrCopy(pch, '00000419');
         end;

         clipboard.AsText := s; //Данные - в буфер!!!

         //Возвращаем режим клавиатуры
         while strComp(pch, pch1) <> 0 do
         begin
           ActivateKeyboardLayout(HKL_NEXT, 0);
           GetKeyboardLayoutName(pch);
         end;

         FreeMem(pch);
         FreeMem(pch1);

         DBGrid1.DataSource.DataSet.GotoBookmark(bm);
         //ShowMessage('Данные успешно скопированы в буфер обмена.');
       finally
         DBGrid1.Visible := True;
       end;
   *}
end;

procedure TfMian.JumpToKey(Key: string);
var
   i, n: Integer;
   hWin: HWND;
   ExecInfo: ShellExecuteInfoA;
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

procedure TfMian.rVetkaReestraSelectionChanged(Sender: TObject);
var
 //   MyList3: TStringListUTF8;     // для хранения названий ключей реестра
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
  MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
 end
    else
    begin
    MyRegistry2:=TRegistry.Create;
    end;

   ListBox1.Items.Clear;
   MyList3:=TStringListUTF8.Create;
//MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
 with MyRegistry2 do
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
end;

procedure TfMian.mBeginSerchClick(Sender: TObject);
var
   MyList: TStringListUTF8;     // для хранения названий ключей реестра
   MyList2: TStringListUTF8;
   MyList4: TStringListUTF8;
   MyRegistry: TRegistry;
   MassivAvtoStr: array of array of string;
     s: string;
     i :Integer;
     p1:Integer;
     p2:Integer;
     p3:String;
 FiltrStr: string;
   Str: string;
     N:Word; // было Integer    // для записи в базу списка
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     bitnost:String;
begin
lProgress.Caption:='Пожалуйста, подождите';
ProgressBar1.Position:=0;
ProgressBar1.Min := 0;
ProgressBar1.Max := 10;
Cursor:= crHourGlass;
bOpenKatPodrob.Enabled:=True;
cbZamenaPodrob.Enabled:=True;
bViewZamPodrob.Enabled:=True;
 bSearch.Visible:=False;    //скрываем кнопку начать поиск
 //  {*     // очищаем старое содержимое
        SQLQuery1.Close;                               // очиска таблицы в базе, в которую
        SQLQuery1.SQL.Text := 'delete from install';    //  записывается список программ
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;
// *}
  MyList2:=TStringListUTF8.Create;
//  MyRegistry:=TRegistry.Create;

  bitnost:=GetEnvironmentVariableUTF8('ProgramFiles(x86)');
  if bitnost <> '' then
  begin
   MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  end
     else
     begin
     MyRegistry:=TRegistry.Create;
     end;

  ProgressBar1.StepBy(1);
  MyList4:=TStringListUTF8.Create;
 MyList:=TStringListUTF8.Create;

                               //Reg.KeyExists('\Software\key')
 //if MyRegistry.KeyExists('SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall') then begin              //IsWow64
 //  showmessage('ключ существует');
  with MyRegistry do
        begin
        RootKey:=HKEY_LOCAL_MACHINE;
        OpenKeyReadOnly('Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\');
        GetKeyNames(MyList);
        CloseKey;
        for i:=0 to MyList.Count-1 do
           begin
           RootKey:=HKEY_LOCAL_MACHINE;
           OpenKeyReadOnly('Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\'+
           MyList[i]);
           Str:=ReadString('DisplayName');
           if (Str<>'') AND (UTF8Pos('Microsoft Visual C++', Str)<1) AND (UTF8Pos('Visual C++', Str)<1) then
           begin
        {   if UTF8Pos('Microsoft Visual C++', Str)=1 then
           begin
           continue;
           end;   }
       //    Memo1.Lines.Add(SysToUTF8(ReadString('DisplayName')));
           MyList2.Add(CP1251ToUTF8(ReadString('DisplayName')));
           MyList4.Add('Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\'+MyList[i]);
           end;
           CloseKey;
           end;

        RootKey:=HKEY_LOCAL_MACHINE;
        OpenKeyReadOnly('Software\Microsoft\Windows\CurrentVersion\Uninstall\');
        GetKeyNames(MyList);
        CloseKey;
        for i:=0 to MyList.Count-1 do
           begin
           RootKey:=HKEY_LOCAL_MACHINE;
           OpenKeyReadOnly('Software\Microsoft\Windows\CurrentVersion\Uninstall\'+
           MyList[i]);
           Str:=ReadString('DisplayName');
           if (Str<>'') AND (UTF8Pos('Microsoft Visual C++', Str)<1) AND (UTF8Pos('Visual C++', Str)<1) then
           begin
         {  if UTF8Pos('Microsoft Visual C++', Str)=1 then
           begin
           continue;
           end; }
       //    Memo1.Lines.Add(SysToUTF8(ReadString('DisplayName')));
           MyList2.Add(CP1251ToUTF8(ReadString('DisplayName')));
           MyList4.Add('Software\Microsoft\Windows\CurrentVersion\Uninstall\'+MyList[i]);
           end;
           CloseKey;
           end;
          end;
  ProgressBar1.StepBy(1);
 //  end

   //   {*
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('insert into install(text)');     //    Запись полученного списка прог в базу
  SQLQuery1.SQL.Add('Values (:pText)');
  for N := 0 to MyList2.Count - 1 do
  begin
    SQLQuery1.ParamByName('pText').AsString := MyList2[N];
    SQLQuery1.ExecSQL;
  end;
  SQLTransaction1.CommitRetaining;
  ProgressBar1.StepBy(1);
   //новый вариант
  SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Text:='select text from install';
SQLQuery1.Open;
SQLQuery1.First;
MyList2.clear;                   // пытался из базы получать список прог
while not SQLQuery1.Eof do
begin
  MyList2.Add(SQLQuery1.FieldByName('text').AsString);
  SQLQuery1.Next;
end;
SQLQuery1.Close;
ProgressBar1.StepBy(1);

//Пытаюсь фильтровать названия программ от версий
MyFiltrList:=TStringListUTF8.Create;
for N := 0 to MyList2.Count - 1 do
  begin
    FiltrStr:=MyList2[N];
    UTF8Delete(FiltrStr, UTF8Pos(' CC', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' CS', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' cc', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' cs', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' CC 2015', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' CC 2016', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' CC 2017', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2015.1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2015.2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2015.3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2015.4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2015.5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016.1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016.2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016.3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016.4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016.5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017.1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017.2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017.3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017.4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017.5', FiltrStr), UTF8Length(FiltrStr));
    if (UTF8Pos('Microsoft Visual Studio', FiltrStr)=0) then
    begin
    UTF8Delete(FiltrStr, UTF8Pos(' 2015', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2016', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2017', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2007', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2008', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2009', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2010', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2011', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2012', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2013', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2014', FiltrStr), UTF8Length(FiltrStr));
    end;

    if (UTF8Pos('Microsoft Visual Studio', FiltrStr)>=1) then
    begin
    UTF8Delete(FiltrStr, UTF8Pos(' 2015', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2016', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2017', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2007', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2008', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2009', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2010', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2011', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2012', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2013', FiltrStr), 5);
    UTF8Delete(FiltrStr, UTF8Pos(' 2014', FiltrStr), 5);
    end;

    UTF8Delete(FiltrStr, UTF8Pos(' (2015', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2016', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2017', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2007', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2008', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2009', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2010', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2011', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2012', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2013', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2014', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (v9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 0.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 1.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 2.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 3.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 4.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 5.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 6.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 7.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 8.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v 9.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v.9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' v. 9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(', версия', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (версия', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Версия', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(', version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' версия', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' Версия', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' Version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' Ver.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' ver.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Version', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (x64', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' x64', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (x86', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' x86', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('-x64', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' - 64 bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (32-разрядная', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (32-Bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (32-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (32 bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (64-разрядная', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (64-Bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (64-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (64 bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 64-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 32-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('64-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('32-bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 64 bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 32 bit', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (V9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V.9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 0', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 1', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 3', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 7', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' V. 9', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('_64b', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 64b', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' Trial', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' trial', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' demo', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' Demo', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Trial', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (trial', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (demo', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Demo', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' with update', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' with Update', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' With Update', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' With update', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (build', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Build', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (0.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (1.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (2.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (3.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (4.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (5.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (6.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (7.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (8.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (9.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (10.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -0.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -1.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -2.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -3.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -4.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -5.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -6.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -7.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -8.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' -9.', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' XE8', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' XE2', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' XE4', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' XE6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('™', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('-64', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' X5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' X6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' x5', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' x6', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (remove', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' (Remove', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' [rev', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' - English', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 0-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 1-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 2-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 3-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 4-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 5-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 6-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 7-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 8-', FiltrStr), UTF8Length(FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos(' 9-', FiltrStr), UTF8Length(FiltrStr));
    if N=1 then ProgressBar1.StepBy(1);
    // 11.11
    if UTF8Pos('.', FiltrStr)<>0 then
    begin
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=' ' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStr, UTF8Pos(p3, FiltrStr), UTF8Length(FiltrStr));
    end;
    end;
    end;
    //11.11
    if UTF8Pos('.', FiltrStr)<>0 then
    begin
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStr, UTF8Pos(p3, FiltrStr), UTF8Length(FiltrStr));
    end;
    end;
    end;
    //-11.11
    if UTF8Pos('.', FiltrStr)<>0 then
    begin
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStr, UTF8Pos(p3, FiltrStr), UTF8Length(FiltrStr));
    end;
    end;
    end;
     // -11.
     if UTF8Pos('.', FiltrStr)<>0 then
    begin
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.';
    UTF8Delete(FiltrStr, UTF8Pos(p3, FiltrStr), UTF8Length(FiltrStr));
    end;
    end;
    end;
     // (11.
    if UTF8Pos('.', FiltrStr)<>0 then
    begin
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='(' + IntToStr(p1) + '.';
    UTF8Delete(FiltrStr, UTF8Pos(p3, FiltrStr), UTF8Length(FiltrStr));
    end;
    end;
    end;
  {  if UTF8Pos('Microsoft Visual C++', FiltrStr)=1 then
    begin
    showmessage(FiltrStr);
    //FiltrStr:='Delete';
    end
    else
    begin
    MyFiltrList.Add(FiltrStr);
    end; }
     MyFiltrList.Add(FiltrStr);
  end;
ProgressBar1.StepBy(1);
//конец фильтра

         //пробую удалить кавычки
  MyFiltrList.Text  := StringReplace(MyFiltrList.Text, '"', '', [rfReplaceAll, rfIgnoreCase]);

  //showmessage('MyList2' + (IntToStr(MyList2.Count - 1)) + #13 + 'MyList3' + (IntToStr(MyList3.Count - 1)) + #13 + 'MyFiltrList' + (IntToStr(MyFiltrList.Count - 1)));

  //начало обработки массива
        SQLQuery1.Close;          // очиска таблицы в базе, в которую
        SQLQuery1.SQL.Text := 'delete from test';    //  записывается список программ
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

    SetLength(MassivAvtoStr, MyFiltrList.Count, 9);

    for N := 0 to MyList2.Count - 1 do
  begin
    MassivAvtoStr[N][1] := MyFiltrList[N];
    MassivAvtoStr[N][0] := MyList2[N];
    MassivAvtoStr[N][7] := MyList4[N];
    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'SELECT * FROM program WHERE (name LIKE "' + MyFiltrList[N] + '%%")';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    MassivAvtoStr[N][8]:= SQLQuery1.FieldByName('id').AsString;
    MassivAvtoStr[N][2]:= SQLQuery1.FieldByName('name').AsString;
    MassivAvtoStr[N][3]:= SQLQuery1.FieldByName('type').AsString;
    MassivAvtoStr[N][4]:= SQLQuery1.FieldByName('license').AsString;
    MassivAvtoStr[N][5]:= SQLQuery1.FieldByName('cena').AsString;
    MassivAvtoStr[N][6]:= SQLQuery1.FieldByName('zamena').AsString;
  end;
    //


 ProgressBar1.StepBy(1);
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  //    Запись полученного списка прог в базу
  SQLQuery1.SQL.Add('insert into test(st1, st2, st7, st3, st4, st5, st6, st8, st9)');
  SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText7, :pText3, :pText4, :pText5, :pText6, :pText8, :pText9)');
  for N := 0 to High(MassivAvtoStr) do
  begin
    SQLQuery1.ParamByName('pText').AsString := MassivAvtoStr[N][1];   //st1
    SQLQuery1.ParamByName('pText2').AsString := MassivAvtoStr[N][2];  //st2 name
    SQLQuery1.ParamByName('pText7').AsString := MassivAvtoStr[N][0];  //st7
    SQLQuery1.ParamByName('pText3').AsString := MassivAvtoStr[N][3];  //st3 type
    SQLQuery1.ParamByName('pText4').AsString := MassivAvtoStr[N][4];  //st4 license
    SQLQuery1.ParamByName('pText5').AsString := MassivAvtoStr[N][5];  //st5 cena
    SQLQuery1.ParamByName('pText6').AsString := MassivAvtoStr[N][6];  //st6 zamena
    SQLQuery1.ParamByName('pText8').AsString := MassivAvtoStr[N][7];  //st8
    SQLQuery1.ParamByName('pText9').AsString := MassivAvtoStr[N][8];  //st9
    SQLQuery1.ExecSQL;
  end;


 //пробую удалять пустые строки из таблицы тест

SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Text:='select * from setting';
SQLQuery1.Open;
SQLQuery1.First;

 N:=SQLQuery1.FieldByName('AvtoUnkProg').AsInteger;
 if N = 1 then
 begin
 s := 'delete from test where st3=''''';
 SQLQuery1.Close;
 SQLQuery1.SQL.Text := s;
 SQLQuery1.ExecSQL;
 SQLTransaction1.CommitRetaining;
 end;
 // конец удаления пустых строк

 //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('AvtoSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    // исходное название

 Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название в бд

 Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst3:=SQLQuery1.FieldByName('AvtoSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('AvtoSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('AvtoSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('AvtoSt6').AsInteger;

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 s := s + ' FROM test';
 //конец постройки запроса

 // s := '';    оригинал запроса
 // s := 'SELECT st7, st2, st3, st4, st5, st6 FROM test';
  //конец обработки массива
 ProgressBar1.StepBy(1);

  MyList.Free;
  MyList2.Free;
  MyList4.Free;
SQLQuery1.Close;
SQLQuery1.Active:=false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add(s);
SQLQuery1.Active:=true;
SQLQuery1.Open;
if nilAvtoSearch<>1 then nilAvtoSearch:=1;
ProgressBar1.StepBy(1);
            //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;
ProgressBar1.StepBy(1);
lProgress.Caption:='Готово';
MyFiltrList.free;
end;

procedure TfMian.mSettingsClick(Sender: TObject);
begin
  fSettings.ShowModal;
end;


procedure TfMian.mSort00Click(Sender: TObject);
var
  s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
begin
     //если автопоиск
     if PageControl1.ActivePageindex=0 then
      begin


    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery1.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + ' st2';

    Nst3:=SQLQuery1.FieldByName('AvtoSt3').AsInteger;
    Nst4:=SQLQuery1.FieldByName('AvtoSt4').AsInteger;
    Nst5:=SQLQuery1.FieldByName('AvtoSt5').AsInteger;
    Nst6:=SQLQuery1.FieldByName('AvtoSt6').AsInteger;

    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена

    s := s + ' FROM test order by st1';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;

      end;
     // если ручной поиск
     if PageControl1.ActivePageindex=1 then
      begin
   {  s := '';
     s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch order by st1';

     SQLQuery3.Close;
     SQLQuery3.Active:=false;
     SQLQuery3.SQL.Clear;
     SQLQuery3.SQL.Add(s);
     SQLQuery3.Active:=true;
     SQLQuery3.Open;
     //заполняем заголовки колонок и меняем ширину колонок
     DBGrid2.Columns[0].Title.Caption:='Исходное название';
     DBGrid2.Columns[1].Title.Caption:='Название в БД';
     DBGrid2.Columns[2].Title.Caption:='Тип ПО';
     DBGrid2.Columns[3].Title.Caption:='Лицензия';
     DBGrid2.Columns[4].Title.Caption:='Стоимость';
     DBGrid2.Columns[5].Title.Caption:='Замена';
     DBGrid2.Columns[0].Width:= 200;
     DBGrid2.Columns[1].Width:= 110;
     DBGrid2.Columns[2].Width:= 150;
     DBGrid2.Columns[3].Width:= 110;
     DBGrid2.Columns[4].Width:= 90;
     DBGrid2.Columns[5].Width:= 150;     }

       //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 if Nst2=0 then
    begin
    showmessage('Поле "Название" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st2 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;

      end;
end;

procedure TfMian.mSort01Click(Sender: TObject);
var
  s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
begin
     //если автопоиск
     if PageControl1.ActivePageindex=0 then
      begin
     {s := '';
     s := 'SELECT st7, st2, st3, st4, st5, st6 FROM test order by st3 DESC';

     SQLQuery1.Close;
     SQLQuery1.Active:=false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add(s);
     SQLQuery1.Active:=true;
     SQLQuery1.Open;
     //заполняем заголовки колонок и меняем ширину колонок
     DBGrid1.Columns[0].Title.Caption:='Исходное название';
     DBGrid1.Columns[1].Title.Caption:='Название в БД';
     DBGrid1.Columns[2].Title.Caption:='Тип ПО';
     DBGrid1.Columns[3].Title.Caption:='Лицензия';
     DBGrid1.Columns[4].Title.Caption:='Стоимость';
     DBGrid1.Columns[5].Title.Caption:='Замена';
     DBGrid1.Columns[0].Width:= 200;
     DBGrid1.Columns[1].Width:= 110;
     DBGrid1.Columns[2].Width:= 150;
     DBGrid1.Columns[3].Width:= 110;
     DBGrid1.Columns[4].Width:= 90;
     DBGrid1.Columns[5].Width:= 150;}

      SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

    Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
    if Nst3=0 then
    begin
    showmessage('Поле "Тип ПО" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + ' st2';

    Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
    Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;
    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;

    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена

    s := s + ' FROM test order by st3 DESC';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;
      end;

     //если ручной поиск
     if PageControl1.ActivePageindex=1 then
      begin
   {   s := '';
     s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch order by st3  DESC';

     SQLQuery3.Close;
     SQLQuery3.Active:=false;
     SQLQuery3.SQL.Clear;
     SQLQuery3.SQL.Add(s);
     SQLQuery3.Active:=true;
     SQLQuery3.Open;
     //заполняем заголовки колонок и меняем ширину колонок
     DBGrid2.Columns[0].Title.Caption:='Исходное название';
     DBGrid2.Columns[1].Title.Caption:='Название в БД';
     DBGrid2.Columns[2].Title.Caption:='Тип ПО';
     DBGrid2.Columns[3].Title.Caption:='Лицензия';
     DBGrid2.Columns[4].Title.Caption:='Стоимость';
     DBGrid2.Columns[5].Title.Caption:='Замена';
     DBGrid2.Columns[0].Width:= 200;
     DBGrid2.Columns[1].Width:= 110;
     DBGrid2.Columns[2].Width:= 150;
     DBGrid2.Columns[3].Width:= 110;
     DBGrid2.Columns[4].Width:= 90;
     DBGrid2.Columns[5].Width:= 150; }

          //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 if Nst3=0 then
    begin
    showmessage('Поле "Тип ПО" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st3 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;
      end;
end;

procedure TfMian.mSort02Click(Sender: TObject);

var
  s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
begin
     //если автопоиск
     if PageControl1.ActivePageindex=0 then
      begin
      {s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM test order by st4  DESC';

      SQLQuery1.Close;
      SQLQuery1.Active:=false;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add(s);
      SQLQuery1.Active:=true;
      SQLQuery1.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid1.Columns[0].Title.Caption:='Исходное название';
      DBGrid1.Columns[1].Title.Caption:='Название в БД';
      DBGrid1.Columns[2].Title.Caption:='Тип ПО';
      DBGrid1.Columns[3].Title.Caption:='Лицензия';
      DBGrid1.Columns[4].Title.Caption:='Стоимость';
      DBGrid1.Columns[5].Title.Caption:='Замена';
      DBGrid1.Columns[0].Width:= 200;
      DBGrid1.Columns[1].Width:= 110;
      DBGrid1.Columns[2].Width:= 150;
      DBGrid1.Columns[3].Width:= 110;
      DBGrid1.Columns[4].Width:= 90;
      DBGrid1.Columns[5].Width:= 150; }

      SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

    Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
    if Nst4=0 then
    begin
    showmessage('Поле "Лицензия" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + ' st2';

    Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
    Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;
    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;

    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена

    s := s + ' FROM test order by st4 DESC';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;
      end;
     //если ручной
     if PageControl1.ActivePageindex=1 then
      begin
   {   s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch order by st4  DESC';

      SQLQuery3.Close;
      SQLQuery3.Active:=false;
      SQLQuery3.SQL.Clear;
      SQLQuery3.SQL.Add(s);
      SQLQuery3.Active:=true;
      SQLQuery3.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid2.Columns[0].Title.Caption:='Исходное название';
      DBGrid2.Columns[1].Title.Caption:='Название в БД';
      DBGrid2.Columns[2].Title.Caption:='Тип ПО';
      DBGrid2.Columns[3].Title.Caption:='Лицензия';
      DBGrid2.Columns[4].Title.Caption:='Стоимость';
      DBGrid2.Columns[5].Title.Caption:='Замена';
      DBGrid2.Columns[0].Width:= 200;
      DBGrid2.Columns[1].Width:= 110;
      DBGrid2.Columns[2].Width:= 150;
      DBGrid2.Columns[3].Width:= 110;
      DBGrid2.Columns[4].Width:= 90;
      DBGrid2.Columns[5].Width:= 150;   }
          //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 if Nst4=0 then
    begin
    showmessage('Поле "Лицензия" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st4 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;
      end;
end;


procedure TfMian.mSort03Click(Sender: TObject);
var
  s:string;
  Nst7:Word;
  Nst2:Word;   // для загрузки из базы настроек
  Nst3:Word;   // какие нужно загружать столбцы в автопоиске
  Nst4:Word;
  Nst5:Word;
  Nst6:Word;
  Nst1:Word;
  Nst7Pos:Word; // переменные для определения позиций колонок
  Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
  Nst3Pos:Word;
  Nst4Pos:Word;
  Nst5Pos:Word;
  Nst6Pos:Word;
  Nst1Pos:Word;
begin
     //если автопоиск
     if PageControl1.ActivePageindex=0 then
      begin
     { s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM test order by st5 DESC';

      SQLQuery1.Close;
      SQLQuery1.Active:=false;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add(s);
      SQLQuery1.Active:=true;
      SQLQuery1.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid1.Columns[0].Title.Caption:='Исходное название';
      DBGrid1.Columns[1].Title.Caption:='Название в БД';
      DBGrid1.Columns[2].Title.Caption:='Тип ПО';
      DBGrid1.Columns[3].Title.Caption:='Лицензия';
      DBGrid1.Columns[4].Title.Caption:='Стоимость';
      DBGrid1.Columns[5].Title.Caption:='Замена';
      DBGrid1.Columns[0].Width:= 200;
      DBGrid1.Columns[1].Width:= 110;
      DBGrid1.Columns[2].Width:= 150;
      DBGrid1.Columns[3].Width:= 110;
      DBGrid1.Columns[4].Width:= 90;
      DBGrid1.Columns[5].Width:= 150;  }

    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

    Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;
    if Nst5=0 then
    begin
    showmessage('Поле "Стоимость" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + ' st2';

    Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
    Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;

    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена

    s := s + ' FROM test order by st5 DESC';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;
      end;
         //если ручной
     if PageControl1.ActivePageindex=1 then
      begin
   {   s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch order by st5  DESC';

      SQLQuery3.Close;
      SQLQuery3.Active:=false;
      SQLQuery3.SQL.Clear;
      SQLQuery3.SQL.Add(s);
      SQLQuery3.Active:=true;
      SQLQuery3.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid2.Columns[0].Title.Caption:='Исходное название';
      DBGrid2.Columns[1].Title.Caption:='Название в БД';
      DBGrid2.Columns[2].Title.Caption:='Тип ПО';
      DBGrid2.Columns[3].Title.Caption:='Лицензия';
      DBGrid2.Columns[4].Title.Caption:='Стоимость';
      DBGrid2.Columns[5].Title.Caption:='Замена';
      DBGrid2.Columns[0].Width:= 200;
      DBGrid2.Columns[1].Width:= 110;
      DBGrid2.Columns[2].Width:= 150;
      DBGrid2.Columns[3].Width:= 110;
      DBGrid2.Columns[4].Width:= 90;
      DBGrid2.Columns[5].Width:= 150;    }

          //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 if Nst5=0 then
    begin
    showmessage('Поле "Стоимость" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st5 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;
      end;
end;

procedure TfMian.mSort04Click(Sender: TObject);
var
  s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
begin
//если автопоиск
     if PageControl1.ActivePageindex=0 then
      begin
     { s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM test order by st6 DESC';

      SQLQuery1.Close;
      SQLQuery1.Active:=false;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add(s);
      SQLQuery1.Active:=true;
      SQLQuery1.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid1.Columns[0].Title.Caption:='Исходное название';
      DBGrid1.Columns[1].Title.Caption:='Название в БД';
      DBGrid1.Columns[2].Title.Caption:='Тип ПО';
      DBGrid1.Columns[3].Title.Caption:='Лицензия';
      DBGrid1.Columns[4].Title.Caption:='Стоимость';
      DBGrid1.Columns[5].Title.Caption:='Замена';
      DBGrid1.Columns[0].Width:= 200;
      DBGrid1.Columns[1].Width:= 110;
      DBGrid1.Columns[2].Width:= 150;
      DBGrid1.Columns[3].Width:= 110;
      DBGrid1.Columns[4].Width:= 90;
      DBGrid1.Columns[5].Width:= 150;  }

    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;
    if Nst6=0 then
    begin
    showmessage('Поле "Замена" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + 'st2';

    Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
    Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
    Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;


    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена

    s := s + ' FROM test order by st6 DESC';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;
      end;
     //если ручной
     if PageControl1.ActivePageindex=1 then
      begin
    {  s := '';
      s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch order by st6  DESC';

      SQLQuery3.Close;
      SQLQuery3.Active:=false;
      SQLQuery3.SQL.Clear;
      SQLQuery3.SQL.Add(s);
      SQLQuery3.Active:=true;
      SQLQuery3.Open;
      //заполняем заголовки колонок и меняем ширину колонок
      DBGrid2.Columns[0].Title.Caption:='Исходное название';
      DBGrid2.Columns[1].Title.Caption:='Название в БД';
      DBGrid2.Columns[2].Title.Caption:='Тип ПО';
      DBGrid2.Columns[3].Title.Caption:='Лицензия';
      DBGrid2.Columns[4].Title.Caption:='Стоимость';
      DBGrid2.Columns[5].Title.Caption:='Замена';
      DBGrid2.Columns[0].Width:= 200;
      DBGrid2.Columns[1].Width:= 110;
      DBGrid2.Columns[2].Width:= 150;
      DBGrid2.Columns[3].Width:= 110;
      DBGrid2.Columns[4].Width:= 90;
      DBGrid2.Columns[5].Width:= 150;     }

          //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst6=0 then
    begin
    showmessage('Поле "Замена" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st6 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;
      end;
end;

procedure TfMian.mSupportClick(Sender: TObject);
begin
  OpenURL('https://sourceforge.net/p/lpro/tickets/');
  end;

procedure TfMian.mUpdateCheckClick(Sender: TObject);
var
  ename:string;
begin
  ename:= Extractfilepath(paramstr(0));
  ename:=ename + '\update.exe';
  ShellExecute(0, 'open', PChar(ename), nil, nil, SW_SHOWNORMAL);
 // showmessage(ename);
  Close;
end;


procedure TfMian.FormCreate(Sender: TObject);
var
 // attr: Integer;
 // s: string;
 //      MyList3: TStringListUTF8;     // для хранения названий ключей реестра  глобальная
     i : Integer;
     Str: string;
   NameKey: string;
   FullKey: String;
   bitnost: String;
begin
  //attr := FileGetAttr('c:\Autoexec.bat');
  //if (attr and faReadOnly) <> 0 then s := s + 'Read-Only';
  FileSetAttr('Lpro.db',128);


  bitnost:=GetEnvironmentVariableUTF8('ProgramFiles(x86)');
  if bitnost <> '' then
  begin
   MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
  end
     else
     begin
     MyRegistry2:=TRegistry.Create;
     rVetkaReestra.Enabled:=False;
     end;

  if rVetkaReestra.ItemIndex = 0 then
    FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
  else if rVetkaReestra.ItemIndex = 1 then
  FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';

    ListBox1.Items.Clear;
    MyList3:=TStringListUTF8.Create;
 //MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
  with MyRegistry2 do
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
        // MyList3.Free;
     //     MyRegistry.CloseKey;
// MyRegistry.Free;

end;

procedure TfMian.leKatalogSearchChange(Sender: TObject);
begin
  put:=leKatalogSearch.Text;
end;

procedure TfMian.leKluchPodrobChange(Sender: TObject);
begin

end;


procedure TfMian.ListBox1SelectionChange(Sender: TObject; User: boolean);
var
  i: Integer; //счетчик
  FullKey: String;
  FiltrNameProg: String;
  s: String;
       p1: Integer;
     p2: Integer;
     p3:String;
     //для замен
     FiltrInstZamena:String;
     Poz2InstZam:Byte;
     Poz3InstZam:Byte;
begin
 if rVetkaReestra.ItemIndex = 0 then
 begin
    MyRegistry2:=TRegistry.Create;
    FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
    end
  else if rVetkaReestra.ItemIndex = 1 then
  begin
    MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
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
    MyRegistry2.RootKey:=HKEY_LOCAL_MACHINE;
    MyRegistry2.OpenKeyReadOnly(PChar(FullKey + leKeyName.Text + '\'));
    leDisplayName.Text:=CP1251ToUTF8(MyRegistry2.ReadString('DisplayName'));
    leVersionProg.Text:=CP1251ToUTF8(MyRegistry2.ReadString('DisplayVersion'));
    leKatalog.Text:=CP1251ToUTF8(MyRegistry2.ReadString('InstallLocation'));
    leRazrab.Text:=CP1251ToUTF8(MyRegistry2.ReadString('Publisher'));
    UninstallKey:=CP1251ToUTF8(MyRegistry2.ReadString('UninstallString'));
    leInstallDate.Text:=CP1251ToUTF8(MyRegistry2.ReadString('InstallDate'));
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
      s := 'SELECT name, type, license, zamena FROM program WHERE (name LIKE "' + FiltrNameProg + '%%")';

  // всё, в s хранится запрос, его и используй для получения данных из БД
  //Showmessage(s);

SQLQuery4.Close;
SQLQuery4.Active:=false;
SQLQuery4.SQL.Clear;
SQLQuery4.SQL.Add(s);
SQLQuery4.Active:=true;
SQLQuery4.Open;

//заполняем заголовки колонок и меняем ширину колонок

DBGrid3.Columns[0].Title.Caption:='Название';
DBGrid3.Columns[1].Title.Caption:='Тип ПО';
DBGrid3.Columns[2].Title.Caption:='Лицензия';
DBGrid3.Columns[3].Title.Caption:='Замена';
DBGrid3.Columns[0].Width:= 200;
DBGrid3.Columns[1].Width:= 140;
DBGrid3.Columns[2].Width:= 110;
DBGrid3.Columns[3].Width:= 130;

// заполняем combobox с заменами
    cbInstallZam.Clear;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    Poz2InstZam:=(UTF8Pos(',', FiltrInstZamena)) + 1;
    UTF8Delete(FiltrInstZamena, UTF8Pos(',', FiltrInstZamena), UTF8Length(FiltrInstZamena));
    cbInstallZam.Items.Add(FiltrInstZamena);
    cbInstallZam.ItemIndex:= 0;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    // UTF8Delete(FiltrStr, UTF8Pos('\', FiltrStr), UTF8Pos('\', FiltrStr));
    Poz3InstZam:=UTF8Pos(',', FiltrInstZamena);
    if (UTF8Pos(',', FiltrInstZamena)<>0) then
    begin
    UTF8Delete(FiltrInstZamena, 1, Poz2InstZam);
    UTF8Delete(FiltrInstZamena, UTF8Pos(',', FiltrInstZamena), UTF8Length(FiltrInstZamena));
    cbInstallZam.Items.Add(FiltrInstZamena);
    end;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    UTF8Delete(FiltrInstZamena, 1, Poz3InstZam);
    Poz3InstZam:=UTF8Pos(',', FiltrInstZamena) + 1;
    if (UTF8Pos(',', FiltrInstZamena)<>0) then
    begin
    UTF8Delete(FiltrInstZamena, 1, Poz3InstZam);
    cbInstallZam.Items.Add(FiltrInstZamena);
    end;
	//конец заполнения замен


end;

procedure TfMian.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   Nst3:Word;
   s:string;
begin


    // проверяем настройки столбцов
    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

 Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;

  //

   if Nst3 = 1 then
   begin

                // меняем цвет шрифта в зависимости от типа ПО
if DBGrid1.DataSource.DataSet.FieldByName('st3').AsString = 'Свободная программа' then
  begin
   DBGrid1.Canvas.Brush.Color := clGreen;
   DBGrid1.Canvas.Font.Style := [];
   DBGrid1.Canvas.Font.Color := clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

if DBGrid1.DataSource.DataSet.FieldByName('st3').AsString = 'Условно-бесплатное ПО' then
  begin
   DBGrid1.Canvas.Brush.Color := RGB(200, 68, 7);
   DBGrid1.Canvas.Font.Style := [];
   DBGrid1.Canvas.Font.Color := RGB(200, 68, 7);
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

if DBGrid1.DataSource.DataSet.FieldByName('st3').AsString = 'Платное ПО' then
  begin
   DBGrid1.Canvas.Brush.Color := RGB(255, 0, 0);
   DBGrid1.Canvas.Font.Style := [];
   DBGrid1.Canvas.Font.Color := RGB(255, 0, 0);
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
   end;
end;

procedure TfMian.DBGrid1TitleClick(Column: TColumn);
var
  s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;                // Column.FieldName - получить столбец
    stCol:string;
begin
        stCol := Column.FieldName;
    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

    s := '';
    s := 'SELECT ';

    Nst7:=SQLQuery1.FieldByName('AvtoSt7').AsInteger;
    if Nst7 = 1 then
    s := s + 'st7';    // исходное название

    Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 1) then
    s := s + ', st2';     // название в бд

    Nst2:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
    if (Nst2 = 1) and (Nst7 = 0) then
    s := s + ' st2';

    Nst3:=SQLQuery1.FieldByName('AvtoSt3').AsInteger;
    Nst4:=SQLQuery1.FieldByName('AvtoSt4').AsInteger;
    Nst5:=SQLQuery1.FieldByName('AvtoSt5').AsInteger;
    Nst6:=SQLQuery1.FieldByName('AvtoSt6').AsInteger;

    if Nst3 = 1 then
    s := s + ', st3';      // тип по

    if Nst4 = 1 then
    s := s + ', st4';       // лицензия

    if Nst5 = 1 then
    s := s + ', st5';       // стоимость

    if Nst6 = 1 then
    s := s + ', st6';       // замена          //Column.FieldName

    if stCol = 'st1' then
    s := s + ' FROM test order by st1 ';

    if stCol = 'st2' then
    s := s + ' FROM test order by st2 ';

    if stCol = 'st3' then
    s := s + ' FROM test order by st3 ';

    if stCol = 'st4' then
    s := s + ' FROM test order by st4 ';

    if stCol = 'st5' then
    s := s + ' FROM test order by st5 ';

    if stCol = 'st6' then
    s := s + ' FROM test order by st6 ';

    if stCol = 'st7' then
    s := s + ' FROM test order by st7 ';

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;
    SQLQuery1.Open;

    if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //23456
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;    //2456
  Nst4Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2356
  Nst3Pos := 1;
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;   //2346
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

  if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;   //2345
  Nst3Pos := 1;
  Nst4Pos := 2;
  Nst5Pos := 3;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7256
  Nst5Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7246
  Nst4Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7234
  Nst3Pos := 2;
  Nst4Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7235
  Nst3Pos := 2;
  Nst5Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //7236
  Nst3Pos := 2;
  Nst6Pos := 3;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
  end;

   if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //23
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //24
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //25
  end;

   if (Nst7 = 0) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 1) then
  begin
  Nst2Pos := 0;
  Nst6Pos := 1;   //26
  end;

if Nst7 = 1 then
begin
DBGrid1.Columns[Nst7Pos].Title.Caption:='Исходное название';
DBGrid1.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid1.Columns[Nst2Pos].Title.Caption:='Название в БД';
DBGrid1.Columns[Nst2Pos].Width:= 110;
end;
if Nst3 = 1 then
begin
DBGrid1.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid1.Columns[Nst3Pos].Width:= 150;
end;
if Nst4 = 1 then
begin
DBGrid1.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid1.Columns[Nst4Pos].Width:= 110;
end;
if Nst5 = 1 then
begin
DBGrid1.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid1.Columns[Nst5Pos].Width:= 90;
end;
if Nst6 = 1 then
begin
DBGrid1.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid1.Columns[Nst6Pos].Width:= 150;
end;

end;

procedure TfMian.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin                             // меняем цвет шрифта в зависимости от типа ПО
if DBGrid2.DataSource.DataSet.FieldByName('st3').AsString = 'Свободная программа' then
  begin
   DBGrid2.Canvas.Brush.Color := clGreen;
   DBGrid2.Canvas.Font.Style := [];
   DBGrid2.Canvas.Font.Color := clGreen;
   DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

if DBGrid2.DataSource.DataSet.FieldByName('st3').AsString = 'Условно-бесплатное ПО' then
  begin
   DBGrid2.Canvas.Brush.Color := RGB(200, 68, 7);
   DBGrid2.Canvas.Font.Style := [];
   DBGrid2.Canvas.Font.Color := RGB(200, 68, 7);
   DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

if DBGrid2.DataSource.DataSet.FieldByName('st3').AsString = 'Платное ПО' then
  begin
   DBGrid2.Canvas.Brush.Color := RGB(255, 0, 0);
   DBGrid2.Canvas.Font.Style := [];
   DBGrid2.Canvas.Font.Color := RGB(255, 0, 0);
   DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfMian.DBGrid2TitleClick(Column: TColumn);
var
     s:string;
     Nst7:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
     Nst1Pos:Word;
     stCol:string;
begin
stCol := Column.FieldName;
  SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 if Nst2=0 then
    begin
    showmessage('Поле "Название" отключено, поэтому данный вид сортировки недоступен.');
    exit;
    end;

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена


 if stCol = 'st1' then
    s := s + ' FROM ruch order by st1 DESC';

    if stCol = 'st2' then
    s := s + ' FROM ruch order by st2 DESC';

    if stCol = 'st3' then
    s := s + ' FROM ruch order by st3 DESC';

    if stCol = 'st4' then
    s := s + ' FROM ruch order by st4 DESC';

    if stCol = 'st5' then
    s := s + ' FROM ruch order by st5 DESC';

    if stCol = 'st6' then
    s := s + ' FROM ruch order by st6 DESC';

    if stCol = 'st7' then
    s := s + ' FROM ruch order by st7 DESC';
 //конец постройки запроса


SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;
end;

procedure TfMian.AvtoPoiskPageContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);

begin

end;

procedure TfMian.bDeinstrallClick(Sender: TObject);
begin
 if UninstallKey = '' then
begin
 Application.MessageBox('Не найден путь к деинсталлятору! Возможно, не выбран ключ реестра. В противном случае, не удалось подгрузить эти данные из реестра.',
    'Не найден путь к деинсталлятору', MB_ICONERROR + MB_OK);
 Exit;
end;
if ShellExecute(0,nil, PChar(UninstallKey),nil,nil,1) = 0 then;
end;

procedure TfMian.bExplorerClick(Sender: TObject);
begin
    if leKatalog.Text = '' then
   begin
    Application.MessageBox('Каталог не указан!!! Возможно, не выбран ключ реестра. В противном случае, не удалось подгрузить каталог программы из реестра.',
    'Каталог не указан!!!', MB_ICONERROR + MB_OK);
    Exit;
   end;
 if ShellExecute(0,nil, PChar('Explorer.exe'),PChar(leKatalog.Text),nil,1) = 0 then;
end;

procedure TfMian.bInstpoSokrtiZaprosClick(Sender: TObject);
var
  i: Integer; //счетчик
  FullKey: String;
  FiltrNameProg: String;
  s: String;
       p1: Integer;
     p2: Integer;
     p3:String;
     //для замен
     FiltrInstZamena:String;
     Poz2InstZam:Byte;
     Poz3InstZam:Byte;
begin
 if rVetkaReestra.ItemIndex = 0 then
 begin
    MyRegistry2:=TRegistry.Create;
    FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
    end
  else if rVetkaReestra.ItemIndex = 1 then
  begin
    MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
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
    MyRegistry2.RootKey:=HKEY_LOCAL_MACHINE;
    MyRegistry2.OpenKeyReadOnly(PChar(FullKey + leKeyName.Text + '\'));
    leDisplayName.Text:=CP1251ToUTF8(MyRegistry2.ReadString('DisplayName'));
    leVersionProg.Text:=CP1251ToUTF8(MyRegistry2.ReadString('DisplayVersion'));
    leKatalog.Text:=CP1251ToUTF8(MyRegistry2.ReadString('InstallLocation'));
    leRazrab.Text:=CP1251ToUTF8(MyRegistry2.ReadString('Publisher'));
    UninstallKey:=CP1251ToUTF8(MyRegistry2.ReadString('UninstallString'));
    leInstallDate.Text:=CP1251ToUTF8(MyRegistry2.ReadString('InstallDate'));
 //конец другого реестра


 // Теперь начинается поиск в базе

    if leDisplayName.Text = '' then
   begin
    FiltrNameProg:=leKeyName.Text;
   end
    else begin
    FiltrNameProg:=leDisplayName.Text;
    end;
     FiltrNameProg:= InputBox('Сократите запрос в базу', 'Подсказка:  сократите название, чтобы программу было проще найти в базе данных', FiltrNameProg);
 //   s := 'SELECT name, type, license FROM program WHERE (name LIKE "%%%' + FiltrNameProg + '%%")';
      s := 'SELECT name, type, license, zamena FROM program WHERE (name LIKE "' + FiltrNameProg + '%%")';

  // всё, в s хранится запрос, его и используй для получения данных из БД
  //Showmessage(s);

SQLQuery4.Close;
SQLQuery4.Active:=false;
SQLQuery4.SQL.Clear;
SQLQuery4.SQL.Add(s);
SQLQuery4.Active:=true;
SQLQuery4.Open;

//заполняем заголовки колонок и меняем ширину колонок

DBGrid3.Columns[0].Title.Caption:='Название';
DBGrid3.Columns[1].Title.Caption:='Тип ПО';
DBGrid3.Columns[2].Title.Caption:='Лицензия';
DBGrid3.Columns[3].Title.Caption:='Замена';
DBGrid3.Columns[0].Width:= 200;
DBGrid3.Columns[1].Width:= 140;
DBGrid3.Columns[2].Width:= 110;
DBGrid3.Columns[3].Width:= 130;

// заполняем combobox с заменами
    cbInstallZam.Clear;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    Poz2InstZam:=(UTF8Pos(',', FiltrInstZamena)) + 1;
    UTF8Delete(FiltrInstZamena, UTF8Pos(',', FiltrInstZamena), UTF8Length(FiltrInstZamena));
    cbInstallZam.Items.Add(FiltrInstZamena);
    cbInstallZam.ItemIndex:= 0;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    // UTF8Delete(FiltrStr, UTF8Pos('\', FiltrStr), UTF8Pos('\', FiltrStr));
    Poz3InstZam:=UTF8Pos(',', FiltrInstZamena);
    if (UTF8Pos(',', FiltrInstZamena)<>0) then
    begin
    UTF8Delete(FiltrInstZamena, 1, Poz2InstZam);
    UTF8Delete(FiltrInstZamena, UTF8Pos(',', FiltrInstZamena), UTF8Length(FiltrInstZamena));
    cbInstallZam.Items.Add(FiltrInstZamena);
    end;
    FiltrInstZamena:=SQLQuery4.FieldByName('zamena').AsString;
    UTF8Delete(FiltrInstZamena, 1, Poz3InstZam);
    Poz3InstZam:=UTF8Pos(',', FiltrInstZamena) + 1;
    if (UTF8Pos(',', FiltrInstZamena)<>0) then
    begin
    UTF8Delete(FiltrInstZamena, 1, Poz3InstZam);
    cbInstallZam.Items.Add(FiltrInstZamena);
    end;
	//конец заполнения замен
end;

procedure TfMian.bInstViewZamClick(Sender: TObject);
begin
 if cbInstallZam.Items.Strings[cbInstallZam.ItemIndex]='' then
  begin
   Showmessage('Замена отсутствует!');
   Exit;
  end;
  if cbInstallZam.Items.Strings[cbInstallZam.ItemIndex]='-' then
  begin
   Showmessage('Замена отсутствует!');
   Exit;
  end;
  OpenURL('http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/component/search/?searchword=' + cbInstallZam.Items.Strings[cbInstallZam.ItemIndex] + '&ordering=newest&searchphrase=all');
end;

procedure TfMian.bOpenKatPodrobClick(Sender: TObject);
begin
       if leKatalogPodrob.Text = '' then
   begin
    Application.MessageBox('Сначала нужно выбрать программу из таблицы, или запустить поиск, если таблица с результатами поиска пуста!',
    'Нужно запустить поиск!', MB_ICONERROR + MB_OK);
    Exit;
   end;
 if ShellExecute(0,nil, PChar('Explorer.exe'),PChar(leKatalogPodrob.Text),nil,1) = 0 then;
end;

procedure TfMian.bRegeditClick(Sender: TObject);
var
FullKey: String; // для изначальной функции
KluchReestra: String;
begin

 if leKeyName.Text = '' then
    begin
    Application.MessageBox('Сначала необходимо выбрать ключ на панели в левой части и нажать кнопку "Открыть".',
     'Не открыт ключ', MB_ICONERROR + MB_OK);
     Exit;
    end;

    if rVetkaReestra.ItemIndex = 0 then
      begin
         MyRegistry2:=TRegistry.Create;
         FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
         end
       else if rVetkaReestra.ItemIndex = 1 then
       begin
         MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
       FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';
       end;

        //      // очищаем старое содержимое
        SQLQuery1.Close;
        SQLQuery1.SQL.Text := 'delete from Kluch';
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

 //  MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
  with MyRegistry2 do
           begin

   RootKey:=HKEY_LOCAL_MACHINE;
   //JumpToKey(UTF8ToWinCP('HKEY_LOCAL_MACHINE\' + FullKey + leKeyName.Text + '\'));
   KluchReestra:=(UTF8ToWinCP('HKEY_LOCAL_MACHINE\' + FullKey + leKeyName.Text + '\'));
       SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    //    Запись
    SQLQuery1.SQL.Add('insert into Kluch(PutKlucha, ID)');
    SQLQuery1.SQL.Add('Values (:pText, :pText2)');
    SQLQuery1.ParamByName('pText').AsString := KluchReestra;
    SQLQuery1.ParamByName('pText2').AsInteger := 1;

    SQLQuery1.ExecSQL;
   fProsmotrReestra.ShowModal;
   end;


{\\ изначальная функция
   if leKeyName.Text = '' then
   begin
   Application.MessageBox('Сначала необходимо выбрать ключ на панели в левой части и нажать кнопку "Открыть".',
    'Не открыт ключ', MB_ICONERROR + MB_OK);
    Exit;
   end;

   if rVetkaReestra.ItemIndex = 0 then
     begin
        MyRegistry2:=TRegistry.Create;
        FullKey:= 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'
        end
      else if rVetkaReestra.ItemIndex = 1 then
      begin
        MyRegistry2:=TRegistry.Create(KEY_WOW64_64KEY);
      FullKey:= 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\';
      end;

//  MyRegistry:=TRegistry.Create(KEY_WOW64_32KEY);
 with MyRegistry2 do
          begin

  RootKey:=HKEY_LOCAL_MACHINE;
  JumpToKey(UTF8ToWinCP('HKEY_LOCAL_MACHINE\' + FullKey + leKeyName.Text + '\'));

  end;
 }
end;

procedure TfMian.bRuchPoiskClick(Sender: TObject);    // Ручной поиск - кнопка начала поиска
Var
 // Info : TSearchRec; // используется для поиска
//  nameProg : String; // в данный момент не используется
//  put:string; // в неё хотел засунуть значение из path : TSelectDirectoryDialog
  s : String; // используется для построения запроса SQL
  i : word; // используется как счетчик
  MyListRuch: TStringList; // нужно для получения значений из SQLite
  MyFiltrList2: TStringListUTF8; //фильтрация значений от версий
     N:word;
     FiltrStr:String;
     MassivRuchStr: array of array of string;
  //пробую добавить сбор названий папок
  searchResult : TSearchRec;
  // пробую сделать выбор колонок
     Nst7:Word;
     Nst1:Word;
     Nst2:Word;   // для загрузки из базы настроек
     Nst3:Word;   // какие нужно загружать столбцы в автопоиске
     Nst4:Word;
     Nst5:Word;
     Nst6:Word;
     Nst1Pos:Word;
     Nst7Pos:Word; // переменные для определения позиций колонок
     Nst2Pos:Word; // необходимо для заполнения заголовков и изменения ширины
     Nst3Pos:Word;
     Nst4Pos:Word;
     Nst5Pos:Word;
     Nst6Pos:Word;
Begin
lProgress.Caption:='Пожалуйста, подождите';
 ProgressBar1.Position:=0;
ProgressBar1.Min := 0;
ProgressBar1.Max := 5;
 // ProgressBar1.StepBy(1);
 if not(DirectoryExists(put)) then
 begin
 ShowMessage('Указанный каталог не существует! Пожалуйста, укажите существующий каталог!');
 exit;
  end;
MyListRuch:=TStringListUTF8.Create;
 ProgressBar1.Position:=1;
//начало файлового поиска
//put := path.FileName + '\';
  //No need to create the stringlist; the function does that for you
  MyListRuch := FindAllFiles(put, '*.exe', true); //find e.g. all pascal sourcefiles

  //пробую сделать сбор названий папок
  //решил закрыть, ибо ввёл доп строку в базу
{  if FindFirst(put + '*', faDirectory, searchResult) = 0 then
  begin
    repeat
      // Показываем только каталоги
      if (searchResult.attr and faDirectory) = faDirectory
      then MyListRuch.Add(put + searchResult.Name);
    until FindNext(searchResult) <> 0;

    // Должен освободить ресурсы, используемые этими успешными, поисками
    SysUtils.FindClose(searchResult);
   end;   }
  // конец поиска названий папок
 // try
 //   showmessage(Format('Found %d Pascal source files',[MyListRuch.Count]));
 // finally
  //  MyListRuch.Free;
 // end;
 //конец файлового поиска
 ProgressBar1.Position:=2;

//Пытаюсь фильтровать названия программ
MyFiltrList2:=TStringListUTF8.Create;
for N := 0 to MyListRuch.Count - 1 do
  begin
    FiltrStr:='';
 //   FiltrStr:=ExtractFileName(MyListRuch[N]); возвращает в фильтрСТР только имя файла, без расширения и пути
    FiltrStr:=MyListRuch[N];
   // showmessage(FiltrStr);
    UTF8Delete(FiltrStr, UTF8Pos(put, FiltrStr), UTF8Length(put));
    UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
    UTF8Delete(FiltrStr, 1, UTF8Pos('bin\', FiltrStr));
    //UTF8Delete(FiltrStr, UTF8Pos('\', FiltrStr), UTF8Pos('\', FiltrStr));
    UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('.exe', FiltrStr), UTF8Length(FiltrStr));
 //   showmessage(FiltrStr);
    MyFiltrList2.Add(FiltrStr);
  end;
//конец фильтра

ProgressBar1.Position:=3;


//начало обработки массива
        SQLQuery3.Close;          // очиска таблицы в базе, в которую
        SQLQuery3.SQL.Text := 'delete from ruch';    //  записывается список программ
        SQLQuery3.ExecSQL;
        SQLTransaction1.CommitRetaining;

    SetLength(MassivRuchStr, MyFiltrList2.Count, 8);

    for N := 0 to MyFiltrList2.Count - 1 do
  begin
    MassivRuchStr[N][1] := MyFiltrList2[N];
    if MyListRuch.Count > N then
    begin
    MassivRuchStr[N][0] := MyListRuch[N];
    end;
    SQLQuery3.Close;
    SQLQuery3.Active:=false;
    SQLQuery3.SQL.Clear;
   // изначальный вариант поиска по названию
   // s := 'SELECT * FROM program WHERE (name LIKE "' + MyFiltrList2[N] + '%%")';
   s := 'SELECT * FROM program WHERE (file LIKE "' + MyFiltrList2[N] + '")';

    SQLQuery3.SQL.Add(s);
    SQLQuery3.Active:=true;

   FiltrStr:='';
   FiltrStr:=SQLQuery3.FieldByName('file').AsString;
   if FiltrStr='' then
   begin
   s := 'SELECT * FROM program WHERE (name LIKE "' + MyFiltrList2[N] + '%%")';
    SQLQuery3.Close;
    SQLQuery3.Active:=false;
    SQLQuery3.SQL.Clear;
    SQLQuery3.SQL.Add(s);
    SQLQuery3.Active:=true;
   end;

  //  MassivRuchStr[N][0]:= SQLQuery1.FieldByName('id').AsString;
    MassivRuchStr[N][2]:= SQLQuery3.FieldByName('name').AsString;
    MassivRuchStr[N][3]:= SQLQuery3.FieldByName('type').AsString;
    MassivRuchStr[N][4]:= SQLQuery3.FieldByName('license').AsString;
    MassivRuchStr[N][5]:= SQLQuery3.FieldByName('cena').AsString;
    MassivRuchStr[N][6]:= SQLQuery3.FieldByName('zamena').AsString;

  end;
    //


 ProgressBar1.StepBy(1);
  SQLQuery3.Close;
  SQLQuery3.SQL.Clear;
  //    Запись полученного списка прог в базу
  SQLQuery3.SQL.Add('insert into ruch(st7, st2, st1, st3, st4, st5, st6)');
  SQLQuery3.SQL.Add('Values (:pText7, :pText2, :pText, :pText3, :pText4, :pText5, :pText6)');
  for N := 0 to High(MassivRuchStr) do
  begin
    if MassivRuchStr[N][2]='' then continue;
    if UTF8Pos('Uninstall.exe', MassivRuchStr[N][0])<>0 then continue;
    if UTF8Pos('uninstall.exe', MassivRuchStr[N][0])<>0 then continue;
    if UTF8Pos('uninst.exe', MassivRuchStr[N][0])<>0 then continue;
    SQLQuery3.ParamByName('pText7').AsString := MassivRuchStr[N][0];   //st7  Путь
    SQLQuery3.ParamByName('pText2').AsString := MassivRuchStr[N][1];  //st2  Название
    SQLQuery3.ParamByName('pText').AsString := MassivRuchStr[N][2];  //st1  Исходный запрос
    SQLQuery3.ParamByName('pText3').AsString := MassivRuchStr[N][3];  //st3  Тип ПО
    SQLQuery3.ParamByName('pText4').AsString := MassivRuchStr[N][4];  //st4  Лицензия
    SQLQuery3.ParamByName('pText5').AsString := MassivRuchStr[N][5];  //st5  Стоимость
    SQLQuery3.ParamByName('pText6').AsString := MassivRuchStr[N][6];  //st6  Замена
    SQLQuery3.ExecSQL;
  end;
 // s := '';
 // s := 'SELECT st7, st2, st3, st4, st5, st6 FROM ruch ORDER BY st2 DESC';
  //конец обработки массива

 //начало постройки запроса согласно настройкам программы

    SQLQuery1.Close;
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    s := 'select * from setting';
    SQLQuery1.SQL.Add(s);
    SQLQuery1.Active:=true;

 {SQLQuery1.SQL.Clear;
 SQLQuery1.SQL.Text:='select * from setting';
 SQLQuery1.Open;
 SQLQuery1.First; }

 s := '';
 s := 'SELECT ';

 Nst7:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if Nst7 = 1 then
 s := s + 'st7';    //   путь

 Nst2:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if (Nst2 = 1) and (Nst7 = 1) then
 s := s + ', st2';     // название

 if (Nst2 = 1) and (Nst7 = 0) then
 s := s + ' st2';

 Nst1:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 Nst3:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 Nst4:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 Nst5:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 Nst6:=SQLQuery1.FieldByName('RuchSt6').AsInteger;

 if Nst1 = 1 then
 begin
 if (Nst2 = 0) and (Nst7 = 0) and (Nst1 = 1) then
 s := s + ' st1'
 else
  s := s + ', st1';
 end;
 //if Nst1 = 1 then
 //s := s + ', st1';      // исходный запрос

 if Nst3 = 1 then
 s := s + ', st3';      // тип по

 if Nst4 = 1 then
 s := s + ', st4';       // лицензия

 if Nst5 = 1 then
 s := s + ', st5';       // стоимость

 if Nst6 = 1 then
 s := s + ', st6';       // замена

 if Nst2 = 1 then
 s := s + ' FROM ruch ORDER BY st2 DESC'
 else
 s := s + ' FROM ruch';
 //showmessage(s);
 //конец постройки запроса


MyListRuch.Free;
MyFiltrList2.Free;

ProgressBar1.Position:=4;

SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

      //заполняем заголовки колонок и меняем ширину колонок

  if (Nst7 = 1) and (Nst2 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;
  Nst1Pos := 2;   //7213456
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
  Nst6Pos := 6;
//  showmessage('Сработал вариант 7213456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 723456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 713456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712456
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712356
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712346
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 712346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712345
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
  Nst5Pos := 5;
//  showmessage('Сработал вариант 712345');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123456
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
  Nst6Pos := 5;
//  showmessage('Сработал вариант 123456');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //13456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 13456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12456');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12356');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst5 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 12346');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //12345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 12345');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //73456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 73456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72456');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72356');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 72346');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //72345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 72345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71456
  Nst4Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71456');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71356
  Nst3Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71356');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71346
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71346');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71345
  Nst3Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71256
  Nst2Pos := 2;
  Nst5Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71256');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71246
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71246');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71245
  Nst2Pos := 2;
  Nst4Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71245');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71236
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst6Pos := 4;
//  showmessage('Сработал вариант 71236');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71235
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst5Pos := 4;
//  showmessage('Сработал вариант 71235');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //71234
  Nst2Pos := 2;
  Nst3Pos := 3;
  Nst4Pos := 4;
//  showmessage('Сработал вариант 71234');
  end;

  if (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst7 = 0) then
  begin
  Nst3Pos := 0;
  Nst4Pos := 1;   //3456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 3456');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst3 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //2456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2456');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2356');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 2346');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst7 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //2345
  Nst4Pos := 2;
  Nst5Pos := 3;
 // showmessage('Сработал вариант 2345');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //7456
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7456');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7356
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7356');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7346
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7346');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //7345
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7345');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7156
  Nst5Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7156');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7146
  Nst4Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7146');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7145
  Nst4Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7145');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7126
  Nst2Pos := 2;
  Nst6Pos := 3;
//  showmessage('Сработал вариант 7126');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7125
  Nst2Pos := 2;
  Nst5Pos := 3;
//  showmessage('Сработал вариант 7125');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //7123
  Nst2Pos := 2;
  Nst3Pos := 3;
 // showmessage('Сработал вариант 7123');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //712
  Nst2Pos := 2;
 // showmessage('Сработал вариант 712');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst3 = 1) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //713
  Nst3Pos := 2;
//  showmessage('Сработал вариант 713');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst4 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //714
  Nst4Pos := 2;
//  showmessage('Сработал вариант 714');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst5 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //715
  Nst5Pos := 2;
//  showmessage('Сработал вариант 715');
  end;

  if (Nst7 = 1) and (Nst1 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //716
  Nst6Pos := 2;
//  showmessage('Сработал вариант 716');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //723
  Nst3Pos := 2;
//  showmessage('Сработал вариант 723');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //724
  Nst4Pos := 2;
//  showmessage('Сработал вариант 724');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //725
  Nst5Pos := 2;
//  showmessage('Сработал вариант 725');
  end;

  if (Nst7 = 1) and (Nst2 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst2Pos := 1;   //726
  Nst6Pos := 2;
//  showmessage('Сработал вариант 726');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //734
  Nst4Pos := 2;
//  showmessage('Сработал вариант 734');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //735
  Nst5Pos := 2;
//  showmessage('Сработал вариант 735');
  end;

  if (Nst7 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst7Pos := 0;
  Nst3Pos := 1;   //736
  Nst6Pos := 2;
//  showmessage('Сработал вариант 736');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //745
  Nst5Pos := 2;
//  showmessage('Сработал вариант 745');
  end;

  if (Nst7 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst1 = 0) then
  begin
  Nst7Pos := 0;
  Nst4Pos := 1;   //746
  Nst6Pos := 2;
//  showmessage('Сработал вариант 746');
  end;

  if (Nst7 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst1 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst7Pos := 0;
  Nst1Pos := 1;   //756
  Nst2Pos := 2;
//  showmessage('Сработал вариант 756');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst3 = 1) and (Nst7 = 0) and (Nst4 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //123
  Nst3Pos := 2;
//  showmessage('Сработал вариант 123');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst4 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst5 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //124
  Nst4Pos := 2;
//  showmessage('Сработал вариант 124');
  end;

  if (Nst1 = 1) and (Nst2 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst3 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst2Pos := 1;   //125
  Nst5Pos := 2;
//  showmessage('Сработал вариант 125');
  end;

  if (Nst1 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst3Pos := 1;   //136
  Nst6Pos := 2;
//  showmessage('Сработал вариант 136');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //145
  Nst5Pos := 2;
//  showmessage('Сработал вариант 145');
  end;

  if (Nst1 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst1Pos := 0;
  Nst4Pos := 1;   //146
  Nst6Pos := 2;
//  showmessage('Сработал вариант 146');
  end;

  if (Nst1 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst2 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst1Pos := 0;
  Nst5Pos := 1;   //156
  Nst6Pos := 2;
//  showmessage('Сработал вариант 156');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst4 = 1) and (Nst1 = 0) and (Nst5 = 0) and (Nst6 = 0) and (Nst7 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //234
  Nst4Pos := 2;
//  showmessage('Сработал вариант 234');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //235
  Nst5Pos := 2;
//  showmessage('Сработал вариант 235');
  end;

  if (Nst2 = 1) and (Nst3 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst4 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst3Pos := 1;   //236
  Nst6Pos := 2;
//  showmessage('Сработал вариант 236');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst5 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst6 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //245
  Nst5Pos := 2;
//  showmessage('Сработал вариант 245');
  end;

  if (Nst2 = 1) and (Nst4 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst5 = 0) then
  begin
  Nst2Pos := 0;
  Nst4Pos := 1;   //246
  Nst6Pos := 2;
//  showmessage('Сработал вариант 246');
  end;

  if (Nst2 = 1) and (Nst5 = 1) and (Nst6 = 1) and (Nst7 = 0) and (Nst1 = 0) and (Nst3 = 0) and (Nst4 = 0) then
  begin
  Nst2Pos := 0;
  Nst5Pos := 1;   //256
  Nst6Pos := 2;
//  showmessage('Сработал вариант 256');
  end;

 // showmessage('Nst7Pos' + IntToStr(Nst7Pos) + #13 + ' Nst2Pos' + IntToStr(Nst2Pos) + #13 + 'Nst1Pos' + IntToStr(Nst1Pos) + #13 + ' Nst3Pos' + IntToStr(Nst3Pos) + #13 + ' Nst4Pos' + IntToStr(Nst4Pos) + #13 + ' Nst5Pos' + IntToStr(Nst5Pos) + #13 + ' Nst6Pos' + IntToStr(Nst6Pos));


if Nst7 = 1 then
begin
DBGrid2.Columns[Nst7Pos].Title.Caption:='Путь';
DBGrid2.Columns[Nst7Pos].Width:= 200;
end;
if Nst2 = 1 then
begin
DBGrid2.Columns[Nst2Pos].Title.Caption:='Название';
DBGrid2.Columns[Nst2Pos].Width:= 110;
end;

if Nst1 = 1 then
begin
DBGrid2.Columns[Nst1Pos].Title.Caption:='Исходный запрос';
DBGrid2.Columns[Nst1Pos].Width:= 80;
end;

if Nst3 = 1 then
begin
DBGrid2.Columns[Nst3Pos].Title.Caption:='Тип ПО';
DBGrid2.Columns[Nst3Pos].Width:= 130;
end;
if Nst4 = 1 then
begin
DBGrid2.Columns[Nst4Pos].Title.Caption:='Лицензия';
DBGrid2.Columns[Nst4Pos].Width:= 90;
end;
if Nst5 = 1 then
begin
DBGrid2.Columns[Nst5Pos].Title.Caption:='Стоимость';
DBGrid2.Columns[Nst5Pos].Width:= 80;
end;
if Nst6 = 1 then
begin
DBGrid2.Columns[Nst6Pos].Title.Caption:='Замена';
DBGrid2.Columns[Nst6Pos].Width:= 130;
end;


             {    for i := 0 to DBGrid2.Columns.Count - 1 do
//заполняем заголовки колонок и меняем ширину колонок
DBGrid2.Columns[0].Title.Caption:='Файл';
DBGrid2.Columns[1].Title.Caption:='Название';
DBGrid2.Columns[2].Title.Caption:='Тип ПО';
DBGrid2.Columns[3].Title.Caption:='Лицензия';
DBGrid2.Columns[4].Title.Caption:='Стоимость';
DBGrid2.Columns[5].Title.Caption:='Замена';
DBGrid2.Columns[0].Width:= 270;
DBGrid2.Columns[1].Width:= 130;
DBGrid2.Columns[2].Width:= 120;
DBGrid2.Columns[3].Width:= 100;
DBGrid2.Columns[4].Width:= 70;
DBGrid2.Columns[5].Width:= 120;   }
 ProgressBar1.Position:=5;
 lProgress.Caption:='Готово';
end;

procedure TfMian.bUkazKatalogClick(Sender: TObject);
begin
  //     пытаюсь получить каталог
path := TSelectDirectoryDialog.Create(Application);
if path.Execute then leKatalogSearch.Text:= path.FileName;
//FreeAndNil(path);
//    конец получения каталога
//showmessage(path.FileName);
put := path.FileName + '\';
if path.FileName = 'C:\' then
begin
   Application.MessageBox('Пожалуйста, не указывайте для поиска весь диск!!! Для поиска укажите конкретную папку с программами.',
    'Указан весь диск', MB_ICONERROR + MB_OK);
  if path.Execute then leKatalogSearch.Text:= path.FileName;
  end;

 if path.FileName = 'D:\' then
begin
   Application.MessageBox('Пожалуйста, не указывайте для поиска весь диск!!! Для поиска укажите конкретную папку с программами.',
    'Указан весь диск', MB_ICONERROR + MB_OK);
  if path.Execute then leKatalogSearch.Text:= path.FileName;
  end;

 if path.FileName = 'F:\' then
 begin
    Application.MessageBox('Пожалуйста, не указывайте для поиска весь диск!!! Для поиска укажите конкретную папку с программами.',
     'Указан весь диск', MB_ICONERROR + MB_OK);
   if path.Execute then leKatalogSearch.Text:= path.FileName;
   end;
 if path.FileName = 'J:\' then
 begin
    Application.MessageBox('Пожалуйста, не указывайте для поиска весь диск!!! Для поиска укажите конкретную папку с программами.',
     'Указан весь диск', MB_ICONERROR + MB_OK);
   if path.Execute then leKatalogSearch.Text:= path.FileName;
   end;
end;

procedure TfMian.bViewZamPodrobClick(Sender: TObject);
var
  s:string;
  Nst6:Word;
begin
    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

    Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;
    if Nst6=0 then
    begin
    showmessage('Поле "Замена" отключено!');
    exit;
    end;

 if cbZamenaPodrob.Items.Strings[cbZamenaPodrob.ItemIndex]='' then
  begin
   Showmessage('Замена отсутствует!');
   Exit;
  end;
  if cbZamenaPodrob.Items.Strings[cbZamenaPodrob.ItemIndex]='-' then
  begin
   Showmessage('Замена отсутствует!');
   Exit;
  end;
  OpenURL('http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/component/search/?searchword=' + cbZamenaPodrob.Items.Strings[cbZamenaPodrob.ItemIndex] + '&ordering=newest&searchphrase=all');
end;

procedure TfMian.ComboBox1Change(Sender: TObject);
var
    n:integer;
    fsLicSog:TFileStream;
begin
    RichMemo1.clear;
    n:=ComboBox1.ItemIndex;
    if UTF8Pos('.rtf', (ComboBox1.Items[n]))=0 then
    begin                          // putLicSog + ComboBox1.Items[n]
      RichMemo1.Lines.LoadFromFile(ComboBox1.Items[n]);
    end;                           //
    if UTF8Pos('.rtf', (ComboBox1.Items[n]))<>0 then
    begin
    fsLicSog:=nil;
  try
    fsLicSog := TFileStream.Create(Utf8ToAnsi( ComboBox1.Items[n]), fmShareDenyNone);
    RichMemo1.LoadRichText(fsLicSog);
  except
  end;
  fsLicSog.Free
  end;
end;

procedure TfMian.DBGrid1CellClick(Column: TColumn);
var
     bitnost:string;
     s:string;
     FiltrZamena:String;
     Poz2Zam:Byte;
     Poz3Zam:Byte;
     MyRegistry: TRegistry;
     //переменные для лицензионного соглашения
     MyListLicSog1: TStringList;
     MyListLicSog2: TStringList;
     MyListLicSog3: TStringList;
     N:word;
     FiltrStrLicSog:String;
     pathLicSog : TSelectDirectoryDialog;
    fsLicSog:TFileStream;
     //конец переменных для лиц согл
     //переменные для всех вариантов
     FiltrStrAllVar:String;
     p1:Integer;
     p2:Integer;
     p3:String;
     // переменные для настроек столбцов
     Nst7:word;
     Nst2:word;
     Nst3:word;
     Nst4:word;
     Nst5:word;
     Nst6:word;
begin
  if nilAvtoSearch<>1 then exit;

  // проверяем настройки столбцов

    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'select * from setting';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;

 Nst7:=SQLQuery2.FieldByName('AvtoSt7').AsInteger;
 Nst2:=SQLQuery2.FieldByName('AvtoSt2').AsInteger;
 Nst3:=SQLQuery2.FieldByName('AvtoSt3').AsInteger;
 Nst4:=SQLQuery2.FieldByName('AvtoSt4').AsInteger;
 Nst5:=SQLQuery2.FieldByName('AvtoSt5').AsInteger;
 Nst6:=SQLQuery2.FieldByName('AvtoSt6').AsInteger;

  //

  leNamePodrob.Text:=SQLQuery1.FieldByName('st2').AsString;
  if Nst7 = 1 then
  leIshName.Text:=SQLQuery1.FieldByName('st7').AsString;

    leVersionPodrob.Text:='';
    leKatalogPodrob.Text:='';
    leRazrabPodrob.Text:='';
    leInstallDatePodrob.Text:='';
    RichMemo1.clear;
    ComboBox1.ItemIndex:=-1;
  // определяет битность ОС
    bitnost:=GetEnvironmentVariableUTF8('ProgramFiles(x86)');
  if bitnost <> '' then
  begin
   MyRegistry:=TRegistry.Create(KEY_WOW64_64KEY);
  end
     else
     begin
     MyRegistry:=TRegistry.Create;
     end;
  //конец определения битности

    SQLQuery2.Close;
    SQLQuery2.Active:=false;
    SQLQuery2.SQL.Clear;
    s := 'SELECT * FROM test WHERE (st2 LIKE "' + leNamePodrob.Text + '%%")';
    SQLQuery2.SQL.Add(s);
    SQLQuery2.Active:=true;
    leKluchPodrob.Text:= SQLQuery2.FieldByName('st8').AsString;
    if Nst3 = 1 then
    begin
    leTypePoPodrob.Text:= SQLQuery2.FieldByName('st3').AsString;
    end;
    if Nst4 = 1 then
    begin
    leLicensePodrob.Text:= SQLQuery2.FieldByName('st4').AsString;
    end;
    if Nst5 = 1 then
    begin
    leStoimostPodrob.Text:= SQLQuery2.FieldByName('st5').AsString;
    end;
    leIDPodrob.Text:= SQLQuery2.FieldByName('st9').AsString;
  //заполняем LabelEdit данными из реестра
    MyRegistry.RootKey:=HKEY_LOCAL_MACHINE;
    MyRegistry.OpenKeyReadOnly(PChar(leKluchPodrob.Text + '\'));
    leVersionPodrob.Text:=CP1251ToUTF8(MyRegistry.ReadString('DisplayVersion'));
    leKatalogPodrob.Text:=CP1251ToUTF8(MyRegistry.ReadString('InstallLocation'));
    leRazrabPodrob.Text:=CP1251ToUTF8(MyRegistry.ReadString('Publisher'));
    leInstallDatePodrob.Text:=CP1251ToUTF8(MyRegistry.ReadString('InstallDate'));

// заполняем combobox с заменами
    cbZamenaPodrob.Clear;
    if Nst6 = 1 then
    begin
    FiltrZamena:=SQLQuery2.FieldByName('st6').AsString;
    Poz2Zam:=(UTF8Pos(',', FiltrZamena)) + 1;
    UTF8Delete(FiltrZamena, UTF8Pos(',', FiltrZamena), UTF8Length(FiltrZamena));
    cbZamenaPodrob.Items.Add(FiltrZamena);
    cbZamenaPodrob.ItemIndex:= 0;
    FiltrZamena:=SQLQuery2.FieldByName('st6').AsString;
   // UTF8Delete(FiltrStr, UTF8Pos('\', FiltrStr), UTF8Pos('\', FiltrStr));
    Poz3Zam:=UTF8Pos(',', FiltrZamena);
    if (UTF8Pos(',', FiltrZamena)<>0) then
    begin
    UTF8Delete(FiltrZamena, 1, Poz2Zam);
    UTF8Delete(FiltrZamena, UTF8Pos(',', FiltrZamena), UTF8Length(FiltrZamena));
    cbZamenaPodrob.Items.Add(FiltrZamena);
    end;
    FiltrZamena:=SQLQuery2.FieldByName('st6').AsString;
    UTF8Delete(FiltrZamena, 1, Poz3Zam);
    Poz3Zam:=UTF8Pos(',', FiltrZamena) + 1;
    if (UTF8Pos(',', FiltrZamena)<>0) then
    begin
    UTF8Delete(FiltrZamena, 1, Poz3Zam);
    cbZamenaPodrob.Items.Add(FiltrZamena);
    end;
    end;
    //заполняем лицензионное соглашение
    ComboBox1.Clear;
    if leKatalogPodrob.Text<>'' then
     begin
     FiltrStrLicSog:=leKatalogPodrob.Text;
     UTF8Delete(FiltrStrLicSog, UTF8Pos('"', FiltrStrLicSog), 1);
     UTF8Delete(FiltrStrLicSog, UTF8Pos('"', FiltrStrLicSog), 1);
     putLicSog := FiltrStrLicSog;
  //  if not(DirectoryExists(putLicSog)) then putLicSog:=putLicSog + '\';
 {   if (UTF8Pos(#92, putLicSog)>=(UTF8Length(putLicSog)-1)) then
     begin
     showmessage('событие наступило');
     UTF8Delete(putLicSog, (UTF8Length(putLicSog)), UTF8Length(putLicSog));
    end;                           }
   // putLicSog:=putLicSog + '\';

  //  showmessage(putLicSog);
  MyListLicSog1:=TStringList.Create;
  MyListLicSog2:=TStringList.Create;
  MyListLicSog3:=TStringList.Create;
  MyListLicSog1 := FindAllFiles(putLicSog, 'License*.*', true);
  MyListLicSog2 := FindAllFiles(putLicSog, 'EULA*.*', true);
  MyListLicSog3 := FindAllFiles(putLicSog, 'COPYING*.*', true);
 if MyListLicSog1.Count<>0 then
  begin
  for N := 0 to MyListLicSog1.Count - 1 do
  begin
    FiltrStrLicSog:='';
    FiltrStrLicSog:=MyListLicSog1[N];
    if UTF8Pos('.png', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.css', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.dll', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.ini', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.exe', FiltrStrLicSog)<>0 then continue;
  //  Delete(FiltrStrLicSog, Pos('"', FiltrStrLicSog), 1);
   // UTF8Delete(MyListLicSog1[N], UTF8Pos(put, MyListLicSog1[N]), UTF8Length(put));
   //UTF8Delete(FiltrStrLicSog, UTF8Pos(putLicSog, FiltrStrLicSog), UTF8Length(putLicSog));
    ComboBox1.Items.Add(FiltrStrLicSog);
  //  if (ComboBox1.Items.Count<>0) then ComboBox1.ItemIndex:=1;
  end;
  end;
    if MyListLicSog2.Count<>0 then
  begin
  for N := 0 to MyListLicSog2.Count - 1 do
  begin
    FiltrStrLicSog:='';
    FiltrStrLicSog:=MyListLicSog2[N];
    if UTF8Pos('.png', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.css', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.dll', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.ini', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.exe', FiltrStrLicSog)<>0 then continue;
   // Delete(FiltrStrLicSog, Pos('"', FiltrStrLicSog), 1);
   // UTF8Delete(FiltrStrLicSog, UTF8Pos(putLicSog, FiltrStrLicSog), UTF8Length(putLicSog));
    ComboBox1.Items.Add(FiltrStrLicSog);
  //  if (ComboBox1.Items.Count<>0) then ComboBox1.ItemIndex:=1;
  end;
  end;

  if MyListLicSog3.Count<>0 then
  begin
  for N := 0 to MyListLicSog3.Count - 1 do
  begin
    FiltrStrLicSog:='';
    FiltrStrLicSog:=MyListLicSog3[N];
    if UTF8Pos('.png', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.css', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.dll', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.ini', FiltrStrLicSog)<>0 then continue;
    if UTF8Pos('.exe', FiltrStrLicSog)<>0 then continue;
    //Delete(FiltrStrLicSog, Pos('"', FiltrStrLicSog), 1);
    //UTF8Delete(FiltrStrLicSog, UTF8Pos(putLicSog, FiltrStrLicSog), UTF8Length(putLicSog));
    ComboBox1.Items.Add(FiltrStrLicSog);
    //if (ComboBox1.Items.Count<>0) then ComboBox1.ItemIndex:=0;
    //ComboBox1.Items.Add(MyListLicSog3[N]);
  end;
  end;
  //if (ComboBox1.Items.Count<>0) then ComboBox1.ItemIndex:=0;
  tsLicenseSogl.Caption:='Лицензионное соглашение ('+ (IntToStr(ComboBox1.Items.Count)) + ')';
  end
   else
   tsLicenseSogl.Caption:='Лицензионное соглашение (0)';
      // пробую автоматически заполнить рич мемо
   if (ComboBox1.Items.Count<>0) then
   begin
   ComboBox1.ItemIndex:=0;
   RichMemo1.clear;
    n:=ComboBox1.ItemIndex;
    if UTF8Pos('.rtf', (ComboBox1.Items[n]))=0 then
    begin                          // putLicSog + ComboBox1.Items[n]
      RichMemo1.Lines.LoadFromFile(ComboBox1.Items[n]);
    end;                           //
    if UTF8Pos('.rtf', (ComboBox1.Items[n]))<>0 then
    begin
    fsLicSog:=nil;
  try
    fsLicSog := TFileStream.Create(Utf8ToAnsi( ComboBox1.Items[n]), fmShareDenyNone);
    RichMemo1.LoadRichText(fsLicSog);
  except
  end;
  fsLicSog.Free
  end;
   end;
  //конец заполнения лицензионного соглашения

  //заполняем все варианты SQLQueryAllVar
     if leNamePodrob.Text<>'' then
     begin
     s := '';
     s := 'SELECT * FROM program WHERE (name LIKE "%' + leNamePodrob.Text + '%%")';

     SQLQueryAllVar.Close;
     SQLQueryAllVar.Active:=false;
     SQLQueryAllVar.SQL.Clear;
     SQLQueryAllVar.SQL.Add(s);
     SQLQueryAllVar.Active:=true;
     SQLQueryAllVar.Open;
     tsVseVarianti.Caption:='Все варианты ('+ (IntToStr(DBGridAllVar.DataSource.DataSet.RecordCount)) +')';
     DBGridAllVar.Columns[1].Title.Caption:='Название';
     DBGridAllVar.Columns[2].Title.Caption:='Тип ПО';
     DBGridAllVar.Columns[3].Title.Caption:='Лицензия';
     DBGridAllVar.Columns[4].Title.Caption:='Стоимость';
     DBGridAllVar.Columns[5].Title.Caption:='Замена';
     DBGridAllVar.Columns[1].Width:= 200;
     DBGridAllVar.Columns[2].Width:= 150;
     DBGridAllVar.Columns[3].Width:= 110;
     DBGridAllVar.Columns[4].Width:= 90;
     DBGridAllVar.Columns[5].Width:= 150;
     end
     else
     begin
     //иначе пробуем запросить из исходного названия
      //Пытаюсь фильтровать названия программ от версий
    FiltrStrAllVar:=leIshName.Text;
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' CC', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' CS', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' cc', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' cs', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' CC 2015', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' CC 2016', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' CC 2017', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015.1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015.2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015.3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015.4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015.5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016.1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016.2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016.3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016.4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016.5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017.1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017.2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017.3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017.4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017.5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2015', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2016', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2017', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2007', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2008', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2009', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2010', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2011', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2012', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2013', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 2014', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2015', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2016', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2017', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2007', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2008', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2009', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2010', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2011', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2012', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2013', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2014', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (v9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 0.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 1.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 2.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 3.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 4.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 5.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 6.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 7.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 8.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v 9.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v.9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' v. 9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(', версия', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (версия', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Версия', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(', version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' версия', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' Версия', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' Version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' Ver.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' ver.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Version', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (x64', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' x64', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (x86', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' x86', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos('-x64', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' - 64 bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (32-разрядная', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (32-Bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (32-bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (32 bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (64-разрядная', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (64-Bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (64-bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (64 bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 64-bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 32-bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 64 bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 32 bit', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (V9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V.9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 0', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 1', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 3', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 7', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' V. 9', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos('_64b', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' 64b', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' Trial', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' trial', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' demo', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' Demo', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Trial', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (trial', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (demo', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Demo', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' with update', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' with Update', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' With Update', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' With update', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (build', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (Build', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (0.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (1.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (2.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (3.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (4.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (5.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (6.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (7.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (8.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (9.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' (10.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -0.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -1.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -2.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -3.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -4.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -5.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -6.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -7.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -8.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' -9.', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' XE8', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' XE2', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' XE4', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' XE6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos('™', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos('-64', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' X5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' X6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' x5', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    UTF8Delete(FiltrStrAllVar, UTF8Pos(' x6', FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    // 11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=' ' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStrAllVar, UTF8Pos(p3, FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    end;
    end;
    //11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:=IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStrAllVar, UTF8Pos(p3, FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    end;
    end;
    //-11.11
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.' + IntToStr(p2);
    UTF8Delete(FiltrStrAllVar, UTF8Pos(p3, FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    end;
    end;
     // -11.
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='-' + IntToStr(p1) + '.';
    UTF8Delete(FiltrStrAllVar, UTF8Pos(p3, FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    end;
    end;
     // (11.
    for p1 := 0 to 100 do
    begin
     for p2 := 0 to 100 do
    begin
    p3:='(' + IntToStr(p1) + '.';
    UTF8Delete(FiltrStrAllVar, UTF8Pos(p3, FiltrStrAllVar), UTF8Length(FiltrStrAllVar));
    end;
  end;
//конец фильтра


     s := '';
     s := 'SELECT * FROM program WHERE (name LIKE "%' + FiltrStrAllVar + '%%")';

     SQLQueryAllVar.Close;
     SQLQueryAllVar.Active:=false;
     SQLQueryAllVar.SQL.Clear;
     SQLQueryAllVar.SQL.Add(s);
     SQLQueryAllVar.Active:=true;
     SQLQueryAllVar.Open;
     DBGridAllVar.Columns[1].Title.Caption:='Название';
     DBGridAllVar.Columns[2].Title.Caption:='Тип ПО';
     DBGridAllVar.Columns[3].Title.Caption:='Лицензия';
     DBGridAllVar.Columns[4].Title.Caption:='Стоимость';
     DBGridAllVar.Columns[5].Title.Caption:='Замена';
     DBGridAllVar.Columns[1].Width:= 200;
     DBGridAllVar.Columns[2].Width:= 150;
     DBGridAllVar.Columns[3].Width:= 110;
     DBGridAllVar.Columns[4].Width:= 90;
     DBGridAllVar.Columns[5].Width:= 150;
     tsVseVarianti.Caption:='Все варианты ('+(IntToStr(DBGridAllVar.DataSource.DataSet.RecordCount))+')';
     end;
  //конец заполнения всех вариантов
end;

procedure TfMian.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 //  MyList.Free;
        SQLQuery1.Close;                               // очиска таблицы в базе, в которую
        SQLQuery1.SQL.Text := 'delete from install';    //  записывается список программ
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;
                // очищаем старое содержимое
        SQLQuery1.Close;                               // очиска таблицы в базе, в которую
        SQLQuery1.SQL.Text := 'delete from test';    //  записывается список программ
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

        SQLQuery1.Close;                               // очиска таблицы в базе, в которую
        SQLQuery1.SQL.Text := 'delete from ruch';    //  записывается список программ
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

end;

procedure TfMian.mAboutClick(Sender: TObject);
begin
  fAbout.ShowModal;
end;

end.

