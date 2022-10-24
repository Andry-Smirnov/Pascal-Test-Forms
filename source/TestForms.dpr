program TestForms;


uses
  Forms,
  Main in 'Main.pas' {MainForm},
  New in 'New.pas' {NewForm},
  New2 in 'New2.pas' {New2Form};


{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNewForm, NewForm);
  Application.CreateForm(TNew2Form, New2Form);
  Application.Run;
end.
