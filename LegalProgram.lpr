program LegalProgram;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, printer4lazarus, Main, About, PoiskVBaze, RuchPoisk, PodborZameni,
  installed, help, settings, ProsmotrReestra;

{$R *.res}

begin
  Application.Title:='Lpro';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfMian, fMian);
  Application.CreateForm(TfAbout, fAbout);
  Application.CreateForm(TfPoiskVBaze, fPoiskVBaze);
  Application.CreateForm(TfRuchPoisk, fRuchPoisk);
  Application.CreateForm(TfPodborZameni, fPodborZameni);
  Application.CreateForm(TfInstalled, fInstalled);
  Application.CreateForm(TfHelp, fHelp);
  Application.CreateForm(TfSettings, fSettings);
  Application.CreateForm(TfProsmotrReestra, fProsmotrReestra);
  Application.Run;
end.
