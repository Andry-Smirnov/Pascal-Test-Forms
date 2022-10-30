{:
  @author(Andry Smirnov)
  @abstract(Test form app)
  @created(22.10.2022)
  @modified(25.10.2022 by Andry Smirnov)
}
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

  Main, {MainForm}
  New,  {NewForm}
  New2  {New2Form}
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

