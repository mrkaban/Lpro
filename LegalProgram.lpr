program LegalProgram;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, printer4lazarus, Main, About
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Lpro';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfMian, fMian);
  Application.CreateForm(TfAbout, fAbout);
  Application.Run;
end.

