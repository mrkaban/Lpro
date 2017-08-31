unit RuchPoisk;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  FileCtrl, Graphics, Dialogs, StdCtrls, DBGrids, ExtCtrls, StrUtils, LazUTF8,
  LazFileUtils, lazutf8classes, Windows;

type

  { TfRuchPoisk }

  TfRuchPoisk = class(TForm)
    bRuchPoisk: TButton;
    bUkazKatalog: TButton;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    leKatalogSearch: TLabeledEdit;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery3: TSQLQuery;
    SQLTransaction3: TSQLTransaction;
    procedure bRuchPoiskClick(Sender: TObject);
    procedure bUkazKatalogClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
      path : TSelectDirectoryDialog;
      put:string;
    { public declarations }
  end;

var
  fRuchPoisk: TfRuchPoisk;
implementation

{$R *.lfm}

{ TfRuchPoisk }


procedure TfRuchPoisk.bUkazKatalogClick(Sender: TObject);
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

procedure TfRuchPoisk.bRuchPoiskClick(Sender: TObject);
Var
 // Info : TSearchRec; // используется для поиска
//  nameProg : String; // в данный момент не используется
//  put:string; // в неё хотел засунуть значение из path : TSelectDirectoryDialog
  s : String; // используется для построения запроса SQL
  i : word; // используется как счетчик
  MyListRuch: TStringList; // нужно для получения значений из SQLite
  MyFiltrList: TStringListUTF8; //фильтрация значений от версий
     N:word;
     FiltrStr:String;
Begin

 if not(DirectoryExists(put)) then
 begin
 ShowMessage('Указанный каталог не существует! Пожалуйста, укажите существующий каталог!');
 exit;
  end;
MyListRuch:=TStringListUTF8.Create;

//начало файлового поиска
//put := path.FileName + '\';
  //No need to create the stringlist; the function does that for you
  MyListRuch := FindAllFiles(put, '*.exe', true); //find e.g. all pascal sourcefiles
  try
 //   showmessage(Format('Found %d Pascal source files',[MyListRuch.Count]));
  finally
  //  MyListRuch.Free;
  end;
 //конец файлового поиска


//Пытаюсь фильтровать названия программ от версий
MyFiltrList:=TStringListUTF8.Create;
for N := 0 to MyListRuch.Count - 1 do
  begin
 //   FiltrStr:=ExtractFileName(MyListRuch[N]); возвращает в фильтрСТР только имя файла, без расширения и пути
    FiltrStr:=MyListRuch[N];
    UTF8Delete(FiltrStr, UTF8Pos(put, FiltrStr), UTF8Length(put));
    UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
    UTF8Delete(FiltrStr, 1, UTF8Pos('bin\', FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('\', FiltrStr), UTF8Pos('\', FiltrStr));
    UTF8Delete(FiltrStr, UTF8Pos('.exe', FiltrStr), UTF8Length(FiltrStr));
    MyFiltrList.Add(FiltrStr);
  end;
//showmessage(put);
MyListRuch.Free;
//конец фильтра

//пробую удалить кавычки
//MyFiltrList.Text  := StringReplace(MyFiltrList.Text, '"', '', [rfReplaceAll, rfIgnoreCase]);

//теперь собираем SQL запрос
with MyFiltrList.Create do
try
MyFiltrList.StrictDelimiter := true;
s := '';
for i := 0 to MyFiltrList.Count - 1 do if Trim(MyFiltrList.Strings[i]) <> '' then
s := s + Format('%s(name LIKE "%%%s%%")', [IfThen(i = 0, '', ' OR '), MyFiltrList.Strings[i]]);
//версия с точным совпадением
//s := s + Format('%s(name LIKE "%s")', [IfThen(i = 0, '', ' OR '), MyFiltrList.Strings[i]]);
s := 'SELECT * FROM program WHERE ' + s + ' ORDER BY id';
finally
//  Free;
end;
//showmessage(s);

{
//while not Eof do
with MyFiltrList do
try
  MyFiltrList.StrictDelimiter := true;
    s := '';
    put := path.FileName + '\';
// SQLQuery3.SQL.Add('SELECT *');
// SQLQuery3.SQL.Add('FROM program');
  for i := 0 to MyFiltrList.Count - 1 do if Trim(MyFiltrList.Strings[i]) <> '' then
  s := MyFiltrList.Strings[i];
  //s := put+s+'.*';
  //showmessage(s);
  //if FindFirstUTF8(put+s+'.*',faAnyFile,Info)= 0 then
  //if FindFirstUTF8(put+s+'.*',faAnyFile,Info)= 0 then
  //  begin
   // showmessage(Info.Name);
  //  SQLQuery3.SQL.Add('WHERE name LIKE' + #39 + s + '%' + #39 +' OR ');
    s := s + Format('%s(name LIKE "%s")', [IfThen(i = 0, '', ' OR '), MyFiltrList.Strings[i]]);
    s := 'SELECT * FROM program WHERE ' + s + ' ORDER BY id';
  // s := 'SELECT * FROM program WHERE name LIKE "%' + s + '" ORDER BY id';
    //  showmessage(s);
  //  end;
 // FindClose(Info);


finally
  MyFiltrList.Free;
end;  }
SQLQuery3.Close;
SQLQuery3.Active:=false;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add(s);
SQLQuery3.Active:=true;
SQLQuery3.Open;

//заполняем заголовки колонок и меняем ширину колонок
DBGrid1.Columns[1].Title.Caption:='Название';
DBGrid1.Columns[2].Title.Caption:='Тип ПО';
DBGrid1.Columns[3].Title.Caption:='Лицензия';
DBGrid1.Columns[4].Title.Caption:='Стоимость';
DBGrid1.Columns[5].Title.Caption:='Замена';
DBGrid1.Columns[0].Width:= 35;
DBGrid1.Columns[1].Width:= 200;
DBGrid1.Columns[2].Width:= 150;
DBGrid1.Columns[3].Width:= 110;
DBGrid1.Columns[4].Width:= 90;
DBGrid1.Columns[5].Width:= 150;

end;

procedure TfRuchPoisk.FormCreate(Sender: TObject);
begin

end;

end.

