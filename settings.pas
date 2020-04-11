unit settings;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ComCtrls, StdCtrls, CheckLst, ExtCtrls, Types;

type

  { TfSettings }

  TfSettings = class(TForm)
    bAvtoApple: TButton;
    bAvtoCancel: TButton;
    bAvtoOk: TButton;
    bUserdbAddtobase: TButton;
    bUserdbSyncdb: TButton;
    cbAvtoUnkProg: TCheckBox;
    cgAvtoKol: TCheckGroup;
    cgRuchKol: TCheckGroup;
    cbRuchFullDisk: TCheckBox;
    DataSource1: TDataSource;
    DataSourceUserDB: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LEZapParAvto: TLabeledEdit;
    leUserdbFile: TLabeledEdit;
    leUserDBZamena: TLabeledEdit;
    leUserdbCena: TLabeledEdit;
    leUserDBLicense: TLabeledEdit;
    leUserdbType: TLabeledEdit;
    leUserDBName: TLabeledEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SettingsAvtopoisk: TTabSheet;
    SQLite3Connection1: TSQLite3Connection;
    SQLite3ConnUserDB: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuerUserDB: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransUserDB: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure bAvtoAppleClick(Sender: TObject);
    procedure bAvtoCancelClick(Sender: TObject);
    procedure bAvtoOkClick(Sender: TObject);
    procedure bUserdbAddtobaseClick(Sender: TObject);
    procedure bUserdbSyncdbClick(Sender: TObject);
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
  ZapParAvto:String;
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

    if LEZapParAvto.Text <> '' then
    begin
    ZapParAvto:=LEZapParAvto.Text;
    end;

    if LEZapParAvto.Text <> Null then
    begin
    ZapParAvto:=LEZapParAvto.Text;
    end;

    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    //    Запись
    SQLQuery1.SQL.Add('insert into setting(ID, AvtoUnkProg, AvtoSt7, AvtoSt2, AvtoSt3, AvtoSt4, AvtoSt5, AvtoSt6, RuchSt7, RuchSt2, RuchSt1, RuchSt3, RuchSt4, RuchSt5, RuchSt6, RuchFullDisk, ZapParAvto)');
    SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6, :pText7, :pText8, :pText9, :pText10, :pText11, :pText12, :pText13, :pText14, :pText15, :pText16, :pText17)');
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
    SQLQuery1.ParamByName('pText17').AsString := ZapParAvto;
    SQLQuery1.ExecSQL;
    Close;
end;

procedure TfSettings.bUserdbAddtobaseClick(Sender: TObject);
var
   UserDBName:string;
   UserdbType:string;
   UserDBLicense:string;
   UserdbCena:string;
   UserDBZamena:string;
   UserdbFile:string;
begin
    if leUserDBName.Text = '' then
    begin
    showmessage('Пожалуйста, введите название программы.');
    exit;
    end;
    if leUserDBName.Text = Null then
    begin
    showmessage('Пожалуйста, введите название программы.');
    exit;
    end;

    if leUserdbType.Text = '' then
    begin
    showmessage('Пожалуйста, укажите Тип программы.');
    exit;
    end;

    if leUserdbType.Text = Null then
    begin
    showmessage('Пожалуйста, укажите Тип программы.');
    exit;
    end;

    UserDBName := leUserDBName.Text;
    UserdbType := leUserdbType.Text;
    UserDBLicense := leUserDBLicense.Text;
    UserdbCena := leUserdbCena.Text;
    UserDBZamena := leUserDBZamena.Text;
    UserdbFile := leUserdbFile.Text;
//  запись

    SQLQuerUserDB.Close;
    SQLQuerUserDB.SQL.Clear;
    SQLQuerUserDB.SQL.Add('insert into UserProgram(name, type, license, cena, zamena, file)');
    SQLQuerUserDB.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6)');
    SQLQuerUserDB.ParamByName('pText').AsString := UserDBName;
    SQLQuerUserDB.ParamByName('pText2').AsString := UserdbType;
    SQLQuerUserDB.ParamByName('pText3').AsString := UserDBLicense;
    SQLQuerUserDB.ParamByName('pText4').AsString := UserdbCena;
    SQLQuerUserDB.ParamByName('pText5').AsString := UserDBZamena;
    SQLQuerUserDB.ParamByName('pText6').AsString := UserdbFile;
    SQLQuerUserDB.ExecSQL;
    SQLTransUserDB.CommitRetaining;

end;

procedure TfSettings.bUserdbSyncdbClick(Sender: TObject);
var
MassivUserSync: array of array of string;
KolVoEl:integer;
N:integer;
kkk:String;
begin
    //  Удаляю пользовательские записи из основной базы
    kkk := '1000';
    SQLQuery1.Close;
        SQLQuery1.SQL.Text := 'DELETE FROM program WHERE (ID LIKE "' + kkk + '%%")';
        SQLQuery1.ExecSQL;
        SQLTransaction1.CommitRetaining;
    //s := 'SELECT * FROM program WHERE (name LIKE "' + MyFiltrList[N] + '%%")';
   { SQLQuery1.Close;
      SQLQuery1.Active:=false;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('DELETE FROM program WHERE (ID LIKE "' + kkk + '%%")');
      SQLQuery1.Active:=true;     }

    // узнаю количество записей в базе
    SQLQuerUserDB.Close;
      SQLQuerUserDB.Active:=false;
      SQLQuerUserDB.SQL.Clear;
      SQLQuerUserDB.SQL.Add('SELECT Count (*) as cnt From UserProgram');
      SQLQuerUserDB.Active:=true;
      KolVoEl:= StrToInt(SQLQuerUserDB.FieldByName('cnt').AsString);

      SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('insert into Program(name, type, license, cena, zamena, file, ID)');
  SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6, :pText7)');

//     showmessage(IntToStr(KolVoEl));
  //SetLength(MassivUserSync, KolVoEl, 6);

      SQLQuerUserDB.Close;
      SQLQuerUserDB.Active:=false;
      SQLQuerUserDB.SQL.Clear;
      SQLQuerUserDB.SQL.Add('SELECT * FROM UserProgram');
      SQLQuerUserDB.Open;
      SetLength(MassivUserSync, KolVoEl, 6);
      SQLQuerUserDB.First;
      N := 0;
   While not  SQLQuerUserDB.Eof do
   begin
      MassivUserSync[N][0]:= SQLQuerUserDB.FieldByName('name').AsString;
      MassivUserSync[N][1]:= SQLQuerUserDB.FieldByName('type').AsString;
      MassivUserSync[N][2]:= SQLQuerUserDB.FieldByName('license').AsString;
      MassivUserSync[N][3]:= SQLQuerUserDB.FieldByName('cena').AsString;
      MassivUserSync[N][4]:= SQLQuerUserDB.FieldByName('zamena').AsString;
      MassivUserSync[N][5]:= SQLQuerUserDB.FieldByName('file').AsString;
  //    showmessage(MassivUserSync[N][0]);
      SQLQuerUserDB.Next;
      SQLQuerUserDB.ExecSQL;;
      SQLQuery1.ParamByName('pText').AsString := MassivUserSync[N][0];
    SQLQuery1.ParamByName('pText2').AsString := MassivUserSync[N][1];
    SQLQuery1.ParamByName('pText3').AsString := MassivUserSync[N][2];
    SQLQuery1.ParamByName('pText4').AsString := MassivUserSync[N][3];
    SQLQuery1.ParamByName('pText5').AsString := MassivUserSync[N][4];
    SQLQuery1.ParamByName('pText6').AsString := MassivUserSync[N][5];
    SQLQuery1.ParamByName('pText7').AsInteger := N + 10000;
    SQLQuery1.ExecSQL;
      N := N + 1;
    end;

showmessage('Синхронизация пользовательской базы с основной базой данных завершена.');
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
  Nst:String;
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

 Nst:=SQLQuery1.FieldByName('ZapParAvto').AsString;
 if Nst <> Null then
    begin
    LEZapParAvto.Text:=Nst;
    end;

 if Nst <> '' then
    begin
    LEZapParAvto.Text:=Nst;
    end;
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
  ZapParAvto:String;
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

     if LEZapParAvto.Text <> Null then
    begin
    ZapParAvto:=LEZapParAvto.Text;
    end;

     if LEZapParAvto.Text <> '' then
    begin
    ZapParAvto:=LEZapParAvto.Text;
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
    SQLQuery1.SQL.Add('insert into setting(ID, AvtoUnkProg, AvtoSt7, AvtoSt2, AvtoSt3, AvtoSt4, AvtoSt5, AvtoSt6, RuchSt7, RuchSt2, RuchSt1, RuchSt3, RuchSt4, RuchSt5, RuchSt6, RuchFullDisk, ZapParAvto)');
    SQLQuery1.SQL.Add('Values (:pText, :pText2, :pText3, :pText4, :pText5, :pText6, :pText7, :pText8, :pText9, :pText10, :pText11, :pText12, :pText13, :pText14, :pText15, :pText16, :pText17)');
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
    SQLQuery1.ParamByName('pText17').AsString := ZapParAvto;
    SQLQuery1.ExecSQL;
end;

end.

