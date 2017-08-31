unit ProsmotrReestra;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Registry, sqldb, sqlite3conn, db, Windows, lazutf8classes, LazUTF8, LCLProc;

type

  { TfProsmotrReestra }

  TfProsmotrReestra = class(TForm)
    DataSource1: TDataSource;
    keys: TTreeView;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    values: TListView;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckSubKeys(item: TTreeNode);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure keysChange(Sender: TObject; Node: TTreeNode);
    procedure keysExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fProsmotrReestra: TfProsmotrReestra;

implementation

{$R *.lfm}

function GetKeyPath(item: TTreeNode): String;
var
  temp:TTreeNode;
  path: String;
begin
  temp := item;
  while temp.Parent <> nil do
  begin
    path := temp.Text + '\' + path;
   // showmessage(path);
    temp := temp.Parent;
  end;
  GetKeyPath := path;
end;

function GetRootkey(item: TTreeNode): HKEY;
var
  temp: TTreeNode;
begin
  temp := item;
  while temp.Parent <> nil do
    temp := temp.Parent;
  GetRootKey :=HKEY(temp.Data);
end;

procedure TfProsmotrReestra.CheckSubKeys(item: TTreeNode);
var
  reg: TRegistry;
begin
  reg:= TRegistry.Create();
  //Проверка, есть ли в разделе реестра вложенные подразделы
  reg.RootKey := GetRootKey(item);
  if reg.OpenKeyReadOnly(GetKeyPath(item)) then
  begin
    if reg.HasSubKeys() then
    begin
      //добавляем фиктивный элемент (чтобы показывался "+" для
      //разворачивания раздела). Одновременно помечаем фиктивный элемент
      keys.Items.AddChild(item, '').Data := Pointer(-1);
    end;
    reg.CloseKey();
  end;
  reg.Free();
end;

procedure TfProsmotrReestra.FormDeactivate(Sender: TObject);
begin
  keys.items.clear;
  SQLQuery1.Close;                               // очиска таблицы в базе, в которую
  SQLQuery1.SQL.Text := 'delete from Kluch';    //  записывается список программ
  SQLQuery1.ExecSQL;
  SQLTransaction1.CommitRetaining;
end;

procedure TfProsmotrReestra.FormDestroy(Sender: TObject);
begin
   keys.items.clear;
   SQLQuery1.Close;                               // очиска таблицы в базе, в которую
   SQLQuery1.SQL.Text := 'delete from Kluch';    //  записывается список программ
   SQLQuery1.ExecSQL;
   SQLTransaction1.CommitRetaining;
end;

procedure TfProsmotrReestra.FormCreate(Sender: TObject);
{var
  item: TTreeNode;
  item2: TTreeNode;
  item3: TTreeNode;
  item4: TTreeNode;
  item5: TTreeNode;
  item6: TTreeNode;
  item7: TTreeNode;   }
begin
  //Формирование списка корневых разделов реестра
 { item := keys.Items.AddChild(nil, 'HKEY_CLASSES_ROOT');
  item.Data := Pointer(HKEY_CLASSES_ROOT);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_CURRENT_USER');
  item.Data := Pointer(HKEY_CURRENT_USER);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_LOCAL_MACHINE');
  item.Data := Pointer(HKEY_LOCAL_MACHINE);
  CheckSubKeys(item);
  keys.Select(item);
  item := keys.Items.AddChild(nil, 'HKEY_USERS');
  item.Data := Pointer(HKEY_USERS);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_CURRENT_CONFIG');
  item.Data := Pointer(HKEY_CURRENT_CONFIG);
  CheckSubkeys(item);   }
  //HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
{  keys.items.clear;
  item := keys.Items.AddChild(nil, 'HKEY_LOCAL_MACHINE');
  item.Data := Pointer(HKEY_LOCAL_MACHINE);
  item2 := keys.Items.AddChild(item, 'SOFTWARE');
  item3 := keys.Items.AddChild(item2, 'Microsoft');
  item4 := keys.Items.AddChild(item3, 'Windows');
  item5 := keys.Items.AddChild(item4, 'CurrentVersion');
  item6 := keys.Items.AddChild(item5, 'Uninstall');
  item7 := keys.Items.AddChild(item6, 'Angry IP Scanner');
  //item.Data := Pointer(SOFTWARE);
  CheckSubKeys(item7);
  // развернуть всё дерево слева
  keys.FullExpand;
  //выделить узел   [2][3][4][5][6][7]
  keys.Items.Item[6].Selected := True;
  //showmessage(TfMian.KluchReestra);   }
end;

procedure TfProsmotrReestra.FormActivate(Sender: TObject);
var
  item: TTreeNode;
  item2: TTreeNode;
  item3: TTreeNode;
  item4: TTreeNode;
  item5: TTreeNode;
  item6: TTreeNode;
  item7: TTreeNode;
  item8: TTreeNode;
  FiltrStr:String;
begin
  //Формирование списка корневых разделов реестра
 { item := keys.Items.AddChild(nil, 'HKEY_CLASSES_ROOT');
  item.Data := Pointer(HKEY_CLASSES_ROOT);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_CURRENT_USER');
  item.Data := Pointer(HKEY_CURRENT_USER);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_LOCAL_MACHINE');
  item.Data := Pointer(HKEY_LOCAL_MACHINE);
  CheckSubKeys(item);
  keys.Select(item);
  item := keys.Items.AddChild(nil, 'HKEY_USERS');
  item.Data := Pointer(HKEY_USERS);
  CheckSubKeys(item);
  item := keys.Items.AddChild(nil, 'HKEY_CURRENT_CONFIG');
  item.Data := Pointer(HKEY_CURRENT_CONFIG);
  CheckSubkeys(item);  }
  //HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\GrampsAIO64 4.2.5\
  keys.Items.Clear;

  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Text:='select * from Kluch';
  SQLQuery1.Open;
  SQLQuery1.First;
  FiltrStr := SQLQuery1.FieldByName('PutKlucha').AsString;
  if (UTF8Pos('HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\', FiltrStr)>=1) then
    begin
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      if UTF8Pos('\', FiltrStr) >= 1 then
      UTF8Delete(FiltrStr, UTF8Length(FiltrStr), UTF8Length(FiltrStr));
      //showmessage(FiltrStr);
      item := keys.Items.AddChild(nil, 'HKEY_LOCAL_MACHINE');
    //  item.Data := Pointer(HKEY_LOCAL_MACHINE);
      CheckSubKeys(item);
        item2 := keys.Items.AddChild(item, 'SOFTWARE');
        CheckSubKeys(item2);
        item3 := keys.Items.AddChild(item2, 'Microsoft');
        CheckSubKeys(item3);
        item4 := keys.Items.AddChild(item3, 'Windows');
        CheckSubKeys(item4);
        item5 := keys.Items.AddChild(item4, 'CurrentVersion');
        CheckSubKeys(item5);
        item6 := keys.Items.AddChild(item5, 'Uninstall');
        CheckSubKeys(item6);
        item7 := keys.Items.AddChild(item6, FiltrStr);
        item7.Data := Pointer(SQLQuery1.FieldByName('PutKlucha').AsString);
        CheckSubKeys(item7);
        // развернуть всё дерево слева
        keys.FullExpand;
        //выделить узел   [2][3][4][5][6][7]
        keys.Items.Item[6].Selected := True;
    end;
   //HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\BleachBit\
   if (UTF8Pos('HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\', FiltrStr)>=1) then
    begin
    //  UTF8Delete(FiltrStr, (UTF8Length(FiltrStr) - 1), UTF8Length(FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      UTF8Delete(FiltrStr, 1, UTF8Pos('\', FiltrStr));
      if UTF8Pos('\', FiltrStr) >= 1 then
      UTF8Delete(FiltrStr, UTF8Length(FiltrStr), UTF8Length(FiltrStr));
      //showmessage(FiltrStr);
      item := keys.Items.AddChild(nil, 'HKEY_LOCAL_MACHINE');
       // item.Data := Pointer(HKEY_LOCAL_MACHINE);
       CheckSubKeys(item);
        item2 := keys.Items.AddChild(item, 'SOFTWARE');
        CheckSubKeys(item2);
        item3 := keys.Items.AddChild(item2, 'Wow6432Node');
        CheckSubKeys(item3);
        item4 := keys.Items.AddChild(item3, 'Microsoft');
        CheckSubKeys(item4);
        item5 := keys.Items.AddChild(item4, 'Windows');
        CheckSubKeys(item5);
        item6 := keys.Items.AddChild(item5, 'CurrentVersion');
        CheckSubKeys(item6);
        item7 := keys.Items.AddChild(item6, 'Uninstall');
        CheckSubKeys(item7);
        item8 := keys.Items.AddChild(item7, FiltrStr);
        item8.Data := Pointer(SQLQuery1.FieldByName('PutKlucha').AsString);
        CheckSubKeys(item8);
        // развернуть всё дерево слева
        keys.FullExpand;
        //выделить узел   [2][3][4][5][6][7]
        keys.Items.Item[7].Selected := True;
    end;
end;

procedure TfProsmotrReestra.keysChange(Sender: TObject; Node: TTreeNode);
var
  reg: TRegistry;
  valueItem: TListItem;
  item: TTreenode;
  valueNames: TStringListUTF8;        //TStrings
  i: Integer;
begin
  item := keys.Selected;
  if item <> nil then
  begin
    //зачитаем содержимое выбранного раздела в ListView (values)
    values.Clear;                               //SQLQuery1.FieldByName('PutKlucha').AsString
    reg:=TRegistry.Create();
    reg.RootKey := GetRootKey(item);
    if reg.OpenKeyReadOnly(GetKeyPath(item)) then
  //if reg.OpenKeyReadOnly(SQLQuery1.FieldByName('PutKlucha').AsString) then
    begin
      valueNames := TStringListUTF8.Create();
      //получение списка названий параметров
      reg.GetValueNames(valueNames);
      //добавление каждого параметра в список
      for i := 0 to valueNames.Count - 1 do
      begin
        valueItem := values.Items.Add();
        if valueNames[i] = '' then
          valueItem.Caption := '<По умолчанию>'
          else
            valueItem.Caption := valueNames[i];
        //Получение типа и значения параметра
        case reg.GetDataType(valueNames[i]) of
        rdUnknown:
          begin
        //    showmessage('rdUnknown');
            valueItem.SubItems.Add('Неизвестно');
          end;
        rdString, rdExpandString:
          begin
         //   showmessage('rdString');
            valueItem.SubItems.Add('Строка');
            valueItem.SubItems.Add(reg.ReadString(valueNames[i]));
          end;
        rdBinary:
          begin
           // showmessage('rdBinary');
            valueItem.SubItems.Add('Двоичные данные');
          end;
        rdInteger:
          begin
            valueItem.SubItems.Add('Строка');
            valueItem.SubItems.Add(IntToStr(reg.ReadInteger(valueNames[i])));
          end;
        end;
      end;
      valueNames.Free();
      reg.CloseKey();
    end;
    reg.Free();
  end;
end;

procedure TfProsmotrReestra.keysExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
var
  reg: TRegistry;
  subkeys: TStringListUTF8;
  i: Integer;
begin
  if Integer(Node.getFirstChild.Data) <> -1 then
    //список подразделов был зачитан ранее
    Exit;
  Node.DeleteChildren(); //удаление фиктивного элемента дерева
  reg:=Tregistry.Create();
  //загрузка списка подразделов выбранного раздела
  reg.Rootkey := GetRootKey(Node);
  if reg.OpenKey(GetKeyPath(Node), False) then
  begin
    //получение списка подразделов
    subkeys := TStringListUTF8.Create();
    reg.GetKeyNames(subkeys);
    for i := 0 to subkeys.Count - 1 do
    begin
      //добавление элемента для дочернего раздела (не забываем
      //проверять подразделы у каждого дочернего раздела)
      CheckSubKeys(keys.Items.AddChild(Node, subkeys[i]));
    end;
    subkeys.Free();
    reg.CloseKey();
  end;
  reg.Free();
end;


end.

