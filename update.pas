unit Update;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, IdHTTP, Windows, IdSSL, IdSSLOpenSSL;

type

  { TfUpdate }

  TfUpdate = class(TForm)
    bUpdateBase: TButton;
    bDownloadProgram: TButton;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lVersionProgram: TLabel;
    lVersionBase: TLabel;
    ProgressBar1: TProgressBar;
    SelectDirectoryDialog: TSelectDirectoryDialog;
    procedure bDownloadProgramClick(Sender: TObject);
    procedure bUpdateBaseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fUpdate: TfUpdate;
  FileVerBase: TextFile;
  FileVerProg: TextFile;
  VerBase: string;   // файл база
  VerProg: string;   // файл прога

implementation

{$R *.lfm}

{ TfUpdate }

procedure TfUpdate.FormCreate(Sender: TObject);
begin
  AssignFile(FileVerBase, UTF8ToSys('base.txt'));
  Reset(FileVerBase);
  AssignFile(FileVerProg, UTF8ToSys('prog.txt'));
  Reset(FileVerProg);
  Readln(FileVerBase, VerBase);
  Readln(FileVerProg, VerProg);
  lVersionBase.Caption:=VerBase;
  lVersionProgram.Caption:=VerProg;
  CloseFile(FileVerBase);
  CloseFile(FileVerProg);
end;

procedure TfUpdate.bUpdateBaseClick(Sender: TObject);
var
version:WideString;
Response:TFileStream;
//FullProgPath: PChar;      для перезапуска
begin
ProgressBar1.Position:=0;
ProgressBar1.Min := 0;
ProgressBar1.Max := 10;
  { if lVersionBase.Caption='' then
    begin
    AssignFile(FileVerBase, UTF8ToSys('base.txt'));
  Reset(FileVerBase);
  Read(FileVerBase, VerBase);
   lVersionBase.Caption:=VerBase;
  //CloseFile(FileVerBase);
    end; }
  try
   version:=IdHTTP1.Get('https://xn--90abhbolvbbfgb9aje4m.xn--p1ai/images/lpro-base-version.txt');
   if version=lVersionBase.Caption then
    begin
     ProgressBar1.StepBy(10);
     Application.MessageBox('У Вас самая новая версия базы','Внимание',MB_OK);
     Exit;
    end
   else
    begin
     ProgressBar1.StepBy(3);
     Application.MessageBox('Появилась новая версия базы, сейчас она будет загружена.','Внимание',MB_OK);
    //   ShowMessage('Обновление базы есть, сейчас оно будет загружен, а далее приложение будет перезапущено.');

  Response:=TFileStream.Create('Lpro.db', fmCreate);
  IdHTTP1.Get('https://xn--90abhbolvbbfgb9aje4m.xn--p1ai/images/Lpro.db',Response);
  ProgressBar1.StepBy(3);
  // нужно сохранить архив
  TMemoryStream(Response).SaveToFile('Lpro.db');
  ProgressBar1.StepBy(2);

     //         Принудительный перезапуск приложения
//  FullProgPath := PChar(Application.ExeName);
// ShowWindow(Form1.handle,SW_HIDE);
//WinExec(FullProgPath,SW_SHOW);
//Application.Terminate; // or: Close;
    end;
  except
   on e:Exception do
    //-//-//-//-//-//

  end;
  ProgressBar1.StepBy(2);
         //меняем версию программы
   AssignFile(FileVerBase, UTF8ToSys('base.txt'));
   try
    Rewrite(FileVerBase);
    Append(FileVerBase);
    Write(FileVerBase, version);
  finally
    CloseFile(FileVerBase);
  end;
   //конец смены версии проги  !!!!
     TMemoryStream(Response).Free;
     //Меняем надпись версий
  AssignFile(FileVerBase, UTF8ToSys('base.txt'));
  Reset(FileVerBase);
  AssignFile(FileVerProg, UTF8ToSys('prog.txt'));
  Reset(FileVerProg);
  Readln(FileVerBase, VerBase);
  Readln(FileVerProg, VerProg);
  lVersionBase.Caption:=VerBase;
  lVersionProgram.Caption:=VerProg;
  CloseFile(FileVerBase);
  CloseFile(FileVerProg);
  ProgressBar1.StepBy(2);
     //конец смени надписей версий
        Application.MessageBox('Загрузка завершена','Внимание',MB_OK);
//   lVerBase.Caption:=FormatDateTime('yyyymmdd', Now);  дата обновлений
// дата сделать запись в файл даты обновления внутри цикла!!!
end;

procedure TfUpdate.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
//  CloseFile(FileVerBase);
//  CloseFile(FileVerProg);
end;

procedure TfUpdate.bDownloadProgramClick(Sender: TObject);
var
 version:WideString;
 Response:TFileStream;
 filename2 : String;
  path : TSelectDirectoryDialog;
begin
  ProgressBar1.Position:=0;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := 10;
   try
    version:=IdHTTP1.Get('https://xn--90abhbolvbbfgb9aje4m.xn--p1ai/images/lpro-version.txt');
    if version=lVersionProgram.Caption then
     begin
      ProgressBar1.StepBy(10);
      Application.MessageBox('У Вас самая новая версия программы','Внимание',MB_OK);
      Exit;
     end
    else
     begin
      ProgressBar1.StepBy(2);
      Application.MessageBox('Появилась новая версия программы, сейчас начнётся загрузка','Внимание',MB_OK);
     //   ShowMessage('Обновление есть, сейчас буду загружать.');
//        SD3.FileName:=filename2;
//     if SD3.Execute then
path := TSelectDirectoryDialog.Create(Application);
if path.Execute then
        begin
// filename2:=SD3.FileName;
         ProgressBar1.StepBy(3);
         filename2:=path.FileName + '\Lpro.exe';
               //  ShowMessage(filename2);
   Response:=TFileStream.Create(filename2, fmCreate);
   IdHTTP1.Get('https://xn--90abhbolvbbfgb9aje4m.xn--p1ai/images/Lpro.exe',Response);
   ProgressBar1.StepBy(3);
   // нужно сохранить архив
   TMemoryStream(Response).SaveToFile(filename2);

     end;
FreeAndNil(path);
     end;
   except
    on e:Exception do
     //-//-//-//-//-//
   end;
   ProgressBar1.StepBy(2);
   TMemoryStream(Response).Free;

   Application.MessageBox('Загрузка завершена','Внимание',MB_OK);
 // хотел сделать автозапуск, но не пашет
 //  WinExec(PChar(filename2),SW_SHOW); //запуск инсталлятора
//Application.Terminate;
// Close; //завершение программы
end;

end.

