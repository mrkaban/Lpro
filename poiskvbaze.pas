unit PoiskVBaze;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, Grids, DBGrids, Windows;

type

  { TfPoiskVBaze }

  TfPoiskVBaze = class(TForm)
    bPoiskVBaze: TButton;
    bOchistit: TButton;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    NameEdit: TEdit;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery2: TSQLQuery;
    SQLTransaction2: TSQLTransaction;
    procedure bOchistitClick(Sender: TObject);
    procedure bPoiskVBazeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fPoiskVBaze: TfPoiskVBaze;

implementation

{$R *.lfm}

{ TfPoiskVBaze }

procedure TfPoiskVBaze.bPoiskVBazeClick(Sender: TObject);
var
  s: string;
  d: string;
//  i : integer;
begin
 if NameEdit.Text='' then
 begin
  Application.MessageBox('Не указано ключевое слово для поиска! Пожалуйста, укажите часть названия программы и затем нажмите кнопку "Поиск".',
    'Не указано ключевое слово', MB_ICONERROR + MB_OK);
 exit;
 end;
 d:= NameEdit.Text;
 //  s := ('%d(name LIKE "%%%d%%")');
 //  s := 'SELECT * FROM program WHERE ' + s + ' ORDER BY id';
     s := 'SELECT * FROM program WHERE name LIKE ''%'+d+'%'' ORDER BY id';
    SQLQuery2.Close;
SQLQuery2.Active:=false;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add(s);
SQLQuery2.Active:=true;
SQLQuery2.Open;

         {*
SQLQuery2.Active:=false;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT *');
SQLQuery2.SQL.Add('FROM program');
SQLQuery2.SQL.Add('WHERE name LIKE '''+NameEdit.Text+'''');
SQLQuery2.Active:=true;
SQLQuery2.Open; *}
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

procedure TfPoiskVBaze.bOchistitClick(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.DisableControls;          //очистка  dbgrid кнопка очистка
 try
 DBGrid1.DataSource.DataSet.First;
 while not DBGrid1.DataSource.DataSet.Eof
 do DBGrid1.DataSource.DataSet.Delete;
 finally
 DBGrid1.DataSource.DataSet.EnableControls;
end;
end;

procedure TfPoiskVBaze.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
       SQLQuery2.Close;
    SQLQuery2.Active:=false;
end;

end.

