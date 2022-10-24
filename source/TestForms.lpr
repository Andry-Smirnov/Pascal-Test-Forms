program TestForms;


{$mode objfpc}{$H+}


uses
  {$IFDEF UNIX}
  {$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  Main, 
  New,
  New2
  { you can add units after this };


{$R *.res}


begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNewForm, NewForm);
  Application.CreateForm(TNew2Form, New2Form);
  Application.Run;
end.

