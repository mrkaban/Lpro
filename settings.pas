unit settings;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, StdCtrls, CheckLst, ExtCtrls;

type

  { TfSettings }

  TfSettings = class(TForm)
    bAvtoApple: TButton;
    bAvtoCancel: TButton;
    bAvtoOk: TButton;
    cbAvtoUnkProg: TCheckBox;
    cgAvtoKol: TCheckGroup;
    cgRuchKol: TCheckGroup;
    cbRuchFullDisk: TCheckBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SettingsAvtopoisk: TTabSheet;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    procedure bAvtoAppleClick(Sender: TObject);
    procedure bAvtoCancelClick(Sender: TObject);
    procedure bAvtoOkClick(Sender: TObject);
    procedure cgAvtoKolItemClick(Sender: TObject; Index: integer);
    procedure cgRuchKolItemClick(Sender: TObject; Index: integer);
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fSettings: TfSettings;

implementation

{$R *.lfm}

{ TfSettings }

procedure TfSettings.bAvtoCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfSettings.bAvtoOkClick(Sender: TObject);
var
  ID:Integer;
  AvtoUnkProg:Integer;
  AvtoKol0:Integer;
  AvtoKol1:Integer;
  AvtoKol2:Integer;
  AvtoKol3:Integer;
  AvtoKol4:Integer;
  AvtoKol5:Integer;
  RuchKol0:Integer;
  RuchKol1:Integer;
  RuchKol2:Integer;
  RuchKol3:Integer;
  RuchKol4:Integer;
  RuchKol5:Integer;
  RuchKol6:Integer;
  RuchFullDisk:Integer;
begin
     //      // очищаем старое содержимое
        SQLQuery1.Close;
        SQLQuery1.SQL.Text := 'delete from setting';
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

    ID:=1;
    // скрытие неизвестных программ
    if cbAvtoUnkProg.Checked = True then
    begin
    AvtoUnkProg:=1;
    end;

    if cbAvtoUnkProg.Checked = False then
    begin
    AvtoUnkProg:=0;
    end;
    //колонки в таблице
    if cgAvtoKol.Checked[0] = True then
    begin
    AvtoKol0:=1;  // st7 исх наз
    end;

    if cgAvtoKol.Checked[0] = False then
    begin
    AvtoKol0:=0;
    end;

    if cgAvtoKol.Checked[1] = True then
    begin
    AvtoKol1:=1;  // st2 наз в бд
    end;

    if cgAvtoKol.Checked[1] = False then
    begin
    AvtoKol1:=0;
    end;

    if cgAvtoKol.Checked[2] = True then
    begin
    AvtoKol2:=1;  // st3 тип
    end;

    if cgAvtoKol.Checked[2] = False then
    begin
    AvtoKol2:=0;
    end;

    if cgAvtoKol.Checked[3] = True then
    begin
    AvtoKol3:=1;  // st4 лицензия
    end;

    if cgAvtoKol.Checked[3] = False then
    begin
    AvtoKol3:=0;
    end;

    if cgAvtoKol.Checked[4] = True then
    begin
    AvtoKol4:=1;  // st5 стоимость
    end;

    if cgAvtoKol.Checked[4] = False then
    begin
    AvtoKol4:=0;
    end;

    if cgAvtoKol.Checked[5] = True then
    begin
    AvtoKol5:=1;  // st6 замена
    end;

    if cgAvtoKol.Checked[5] = False then
    begin
    AvtoKol5:=0;
    end;

    // теперь пошла вкладка ручного поиска

      RuchKol0:=0;
  RuchKol1:=0;
  RuchKol2:=0;
  RuchKol3:=0;
  RuchKol4:=0;
  RuchKol5:=0;
  RuchKol6:=0;

     //колонки в таблице
    if cgRuchKol.Checked[0] = True then
    begin
    RuchKol0:=1;  // st7 путь
    end;

    if cgRuchKol.Checked[0] = False then
    begin
    RuchKol0:=0;
    end;

    if cgRuchKol.Checked[1] = True then
    begin
    RuchKol1:=1;  // st2 наз
    end;

    if cgRuchKol.Checked[1] = False then
    begin
    RuchKol1:=0;
    end;

    if cgRuchKol.Checked[2] = True then
    begin
    RuchKol2:=1;  // st1 исх
    end;

    if cgRuchKol.Checked[2] = False then
    begin
    RuchKol2:=0;
    end;

    if cgRuchKol.Checked[3] = True then
    begin
    RuchKol3:=1;  // st3 тип по
    end;

    if cgRuchKol.Checked[3] = False then
    begin
    RuchKol3:=0;
    end;

    if cgRuchKol.Checked[4] = True then
    begin
    RuchKol4:=1;  // st4 лицензия
    end;

    if cgRuchKol.Checked[4] = False then
    begin
    RuchKol4:=0;
    end;

    if cgRuchKol.Checked[5] = True then
    begin
    RuchKol5:=1;  // st5 стоимость
    end;

    if cgRuchKol.Checked[5] = False then
    begin
    RuchKol5:=0;
    end;

    if cgRuchKol.Checked[6] = True then
    begin
    RuchKol6:=1;  // st6 Замена
    end;

    if cgRuchKol.Checked[6] = False then
    begin
    RuchKol6:=0;
    end;

    if cbRuchFullDisk.Checked = False then
    begin
    RuchFullDisk:=0;
    end;

    if cbRuchFullDisk.Checked = True then
    begin
    RuchFullDisk:=1;  // галочка разрешить указать весь диск
    end;



    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    //    Запись
    SQLQuery1.SQL.Add('insert into setting(ID, AvtoUnkProg, AvtoSt7, AvtoSt2, AvtoSt3, AvtoSt4, AvtoSt5, AvtoSt6, RuchSt7, RuchSt2, RuchSt1, RuchSt3, RuchSt4, RuchSt5, RuchSt6, RuchFullDisk)');
    SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6, :pText7, :pText8, :pText9, :pText10, :pText11, :pText12, :pText13, :pText14, :pText15, :pText16)');
    SQLQuery1.ParamByName('pText').AsInteger := ID;
    SQLQuery1.ParamByName('pText2').AsInteger := AvtoUnkProg;
    SQLQuery1.ParamByName('pText3').AsInteger := AvtoKol0;
    SQLQuery1.ParamByName('pText4').AsInteger := AvtoKol1;
    SQLQuery1.ParamByName('pText5').AsInteger := AvtoKol2;
    SQLQuery1.ParamByName('pText6').AsInteger := AvtoKol3;
    SQLQuery1.ParamByName('pText7').AsInteger := AvtoKol4;
    SQLQuery1.ParamByName('pText8').AsInteger := AvtoKol5;
    SQLQuery1.ParamByName('pText9').AsInteger := RuchKol0;
    SQLQuery1.ParamByName('pText10').AsInteger := RuchKol1;
    SQLQuery1.ParamByName('pText11').AsInteger := RuchKol2;
    SQLQuery1.ParamByName('pText12').AsInteger := RuchKol3;
    SQLQuery1.ParamByName('pText13').AsInteger := RuchKol4;
    SQLQuery1.ParamByName('pText14').AsInteger := RuchKol5;
    SQLQuery1.ParamByName('pText15').AsInteger := RuchKol6;
    SQLQuery1.ParamByName('pText16').AsInteger := RuchFullDisk;
    SQLQuery1.ExecSQL;
    Close;
end;

procedure TfSettings.cgAvtoKolItemClick(Sender: TObject; Index: integer);
var
  n2:integer;
  n3:integer;
begin

  if cgAvtoKol.Checked[1] = True then
  n2 := 1;
  if cgAvtoKol.Checked[1] = False then
  n2 := 0;

  if cgAvtoKol.Checked[2] = True then
  n3 := 1;
  if cgAvtoKol.Checked[2] = False then
  n3 := 0;

  if n2 = 0 then
  begin
  showmessage('"Название в БД" является обязательным столбцом! Сейчас он будет включен.');
  cgAvtoKol.Checked[1] := True;
  end;

  if n3 = 0 then
  begin
  showmessage('На данный момент "Тип ПО" тоже является обязательным столбцом! Иначе могут возникать ошибки, поэтому он будет включен.');
  cgAvtoKol.Checked[2] := True;
  end;

end;

procedure TfSettings.cgRuchKolItemClick(Sender: TObject; Index: integer);
var
  n2:integer;
begin

  if cgRuchKol.Checked[3] = True then
  n2 := 1;
  if cgRuchKol.Checked[3] = False then
  n2 := 0;

  if n2 = 0 then
  begin
  showmessage('"Тип ПО" является обязательным столбцом! Сейчас он будет включен.');
  cgRuchKol.Checked[3] := True;
  end;

end;

procedure TfSettings.FormActivate(Sender: TObject);
var
  N:Integer;
begin          // выставляем значения чекбоксов в соответствии со значениями в базе
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Text:='select * from setting';
  SQLQuery1.Open;
  SQLQuery1.First;

 N:=SQLQuery1.FieldByName('AvtoUnkProg').AsInteger;
 if N = 1 then
  cbAvtoUnkProg.Checked := True;

 if N = 0 then
   cbAvtoUnkProg.Checked := False;
 // колонка st7
 N:=SQLQuery1.FieldByName('AvtoSt7').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[0] := True;

 if N = 0 then
  cgAvtoKol.Checked[0] := False;

  // колонка st2
 N:=SQLQuery1.FieldByName('AvtoSt2').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[1] := True;

 if N = 0 then
  cgAvtoKol.Checked[1] := False;

  // колонка st3
 N:=SQLQuery1.FieldByName('AvtoSt3').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[2] := True;

 if N = 0 then
  cgAvtoKol.Checked[2] := False;
 // колонка st4
 N:=SQLQuery1.FieldByName('AvtoSt4').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[3] := True;

 if N = 0 then
  cgAvtoKol.Checked[3] := False;
 // колонка st5
 N:=SQLQuery1.FieldByName('AvtoSt5').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[4] := True;

 if N = 0 then
  cgAvtoKol.Checked[4] := False;
 // колонка st6
 N:=SQLQuery1.FieldByName('AvtoSt6').AsInteger;
 if N = 1 then
  cgAvtoKol.Checked[5] := True;

 if N = 0 then
  cgAvtoKol.Checked[5] := False;

 // теперь поехал ручной поиск
 // колонка st7
 N:=SQLQuery1.FieldByName('RuchSt7').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[0] := True;

 if N = 0 then
  cgRuchKol.Checked[0] := False;

 if N = null then
  cgRuchKol.Checked[0] := False;

  // колонка st2
 N:=SQLQuery1.FieldByName('RuchSt2').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[1] := True;

 if N = 0 then
  cgRuchKol.Checked[1] := False;

  if N = null then
  cgRuchKol.Checked[1] := False;

 // колонка st1
 N:=SQLQuery1.FieldByName('RuchSt1').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[2] := True;

 if N = 0 then
  cgRuchKol.Checked[2] := False;

  if N = null then
  cgRuchKol.Checked[2] := False;

  // колонка st3
 N:=SQLQuery1.FieldByName('RuchSt3').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[3] := True;

 if N = 0 then
  cgRuchKol.Checked[3] := False;

  if N = null then
  cgRuchKol.Checked[3] := False;

 // колонка st4
 N:=SQLQuery1.FieldByName('RuchSt4').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[4] := True;

 if N = 0 then
  cgRuchKol.Checked[4] := False;

  if N = null then
  cgRuchKol.Checked[4] := False;

  // колонка st5
 N:=SQLQuery1.FieldByName('RuchSt5').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[5] := True;

 if N = 0 then
  cgRuchKol.Checked[5] := False;

  if N = null then
  cgRuchKol.Checked[5] := False;

  // колонка st6
 N:=SQLQuery1.FieldByName('RuchSt6').AsInteger;
 if N = 1 then
  cgRuchKol.Checked[6] := True;

 if N = 0 then
  cgRuchKol.Checked[6] := False;

  if N = null then
  cgRuchKol.Checked[6] := False;

  //галочка разрешить указывать весь диск
   N:=SQLQuery1.FieldByName('RuchFullDisk').AsInteger;
 if N = 1 then
  cbRuchFullDisk.Checked := True;

 N:=SQLQuery1.FieldByName('RuchFullDisk').AsInteger;
 if N = 0 then
  cbRuchFullDisk.Checked := False;

end;

procedure TfSettings.bAvtoAppleClick(Sender: TObject);
var
  ID:Integer;
  AvtoUnkProg:Integer;
  AvtoKol0:Integer;
  AvtoKol1:Integer;
  AvtoKol2:Integer;
  AvtoKol3:Integer;
  AvtoKol4:Integer;
  AvtoKol5:Integer;
  RuchKol0:Integer;
  RuchKol1:Integer;
  RuchKol2:Integer;
  RuchKol3:Integer;
  RuchKol4:Integer;
  RuchKol5:Integer;
  RuchKol6:Integer;
  RuchFullDisk:Integer;
begin
     //      // очищаем старое содержимое
        SQLQuery1.Close;
        SQLQuery1.SQL.Text := 'delete from setting';
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;

    ID:=1;
    // скрытие неизвестных программ
    if cbAvtoUnkProg.Checked = True then
    begin
    AvtoUnkProg:=1;
    end;

    if cbAvtoUnkProg.Checked = False then
    begin
    AvtoUnkProg:=0;
    end;
    //колонки в таблице
    if cgAvtoKol.Checked[0] = True then
    begin
    AvtoKol0:=1;  // st7 исх наз
    end;

    if cgAvtoKol.Checked[0] = False then
    begin
    AvtoKol0:=0;
    end;

    if cgAvtoKol.Checked[1] = True then
    begin
    AvtoKol1:=1;  // st2 наз в бд
    end;

    if cgAvtoKol.Checked[1] = False then
    begin
    AvtoKol1:=0;
    end;

    if cgAvtoKol.Checked[2] = True then
    begin
    AvtoKol2:=1;  // st3 тип
    end;

    if cgAvtoKol.Checked[2] = False then
    begin
    AvtoKol2:=0;
    end;

    if cgAvtoKol.Checked[3] = True then
    begin
    AvtoKol3:=1;  // st4 лицензия
    end;

    if cgAvtoKol.Checked[3] = False then
    begin
    AvtoKol3:=0;
    end;

    if cgAvtoKol.Checked[4] = True then
    begin
    AvtoKol4:=1;  // st5 стоимость
    end;

    if cgAvtoKol.Checked[4] = False then
    begin
    AvtoKol4:=0;
    end;

    if cgAvtoKol.Checked[5] = True then
    begin
    AvtoKol5:=1;  // st6 замена
    end;

    if cgAvtoKol.Checked[5] = False then
    begin
    AvtoKol5:=0;
    end;

    // теперь пошла вкладка ручного поиска

     //колонки в таблице

  RuchKol0:=0;
  RuchKol1:=0;
  RuchKol2:=0;
  RuchKol3:=0;
  RuchKol4:=0;
  RuchKol5:=0;
  RuchKol6:=0;


    if cgRuchKol.Checked[0] = True then
    begin
    RuchKol0:=1;  // st7 путь
    end;

    if cgRuchKol.Checked[0] = False then
    begin
    RuchKol0:=0;
    end;


    if cgRuchKol.Checked[1] = True then
    begin
    RuchKol1:=1;  // st2 исх
    end;

    if cgRuchKol.Checked[1] = False then
    begin
    RuchKol1:=0;
    end;

    if cgRuchKol.Checked[2] = True then
    begin
    RuchKol2:=1;  // st1 наз
    end;

    if cgRuchKol.Checked[2] = False then
    begin
    RuchKol2:=0;
    end;

    if cgRuchKol.Checked[3] = True then
    begin
    RuchKol3:=1;  // st3 тип по
    end;

    if cgRuchKol.Checked[3] = False then
    begin
    RuchKol3:=0;
    end;

    if cgRuchKol.Checked[4] = True then
    begin
    RuchKol4:=1;  // st4 лицензия
    end;

    if cgRuchKol.Checked[4] = False then
    begin
    RuchKol4:=0;
    end;

    if cgRuchKol.Checked[5] = True then
    begin
    RuchKol5:=1;  // st5 стоимость
    end;

    if cgRuchKol.Checked[5] = False then
    begin
    RuchKol5:=0;
    end;

    if cgRuchKol.Checked[6] = True then
    begin
    RuchKol6:=1;  // st6 Замена
    end;

    if cgRuchKol.Checked[6] = False then
    begin
    RuchKol6:=0;
    end;

    if cbRuchFullDisk.Checked = False then
    begin
    RuchFullDisk:=0;
    end;

    if cbRuchFullDisk.Checked = True then
    begin
    RuchFullDisk:=1;  // галочка разрешить указать весь диск
    end;


    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    //    Запись
    SQLQuery1.SQL.Add('insert into setting(ID, AvtoUnkProg, AvtoSt7, AvtoSt2, AvtoSt3, AvtoSt4, AvtoSt5, AvtoSt6, RuchSt7, RuchSt2, RuchSt1, RuchSt3, RuchSt4, RuchSt5, RuchSt6, RuchFullDisk)');
    SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6, :pText7, :pText8, :pText9, :pText10, :pText11, :pText12, :pText13, :pText14, :pText15, :pText16)');
    SQLQuery1.ParamByName('pText').AsInteger := ID;
    SQLQuery1.ParamByName('pText2').AsInteger := AvtoUnkProg;
    SQLQuery1.ParamByName('pText3').AsInteger := AvtoKol0;
    SQLQuery1.ParamByName('pText4').AsInteger := AvtoKol1;
    SQLQuery1.ParamByName('pText5').AsInteger := AvtoKol2;
    SQLQuery1.ParamByName('pText6').AsInteger := AvtoKol3;
    SQLQuery1.ParamByName('pText7').AsInteger := AvtoKol4;
    SQLQuery1.ParamByName('pText8').AsInteger := AvtoKol5;
    SQLQuery1.ParamByName('pText9').AsInteger := RuchKol0;
    SQLQuery1.ParamByName('pText10').AsInteger := RuchKol1;
    SQLQuery1.ParamByName('pText11').AsInteger := RuchKol2;
    SQLQuery1.ParamByName('pText12').AsInteger := RuchKol3;
    SQLQuery1.ParamByName('pText13').AsInteger := RuchKol4;
    SQLQuery1.ParamByName('pText14').AsInteger := RuchKol5;
    SQLQuery1.ParamByName('pText15').AsInteger := RuchKol6;
    SQLQuery1.ParamByName('pText16').AsInteger := RuchFullDisk;
    SQLQuery1.ExecSQL;
end;

end.

