{:
  @author(Andry Smirnov)
  @abstract(Test form project's main form)
  @created(22.10.2022)
  @modified(29.11.2022 by Andry Smirnov)
}
unit Main;


{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}


interface


uses
{$IFDEF FPC}
  LazVersion,
{$ENDIF}
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  ComCtrls,
  ExtCtrls;


type

  { TMainForm }

  TMainForm = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    NewFormGroupBox: TGroupBox;
    ExitButton: TButton;
    ShowNewFormButton: TButton;
    ShowNew2FormButton: TButton;
    ShowModalButton: TButton;
    ShowModalNewFormButton: TButton;
    ShowModalNew2FormButton: TButton;
    MainFormStatusBar: TStatusBar;
    ShowOnTopNewFormButton: TButton;
    ShowOnTopNew2FormButton: TButton;
    ShowModalOnTopNewFormButton: TButton;
    ShowModalOnTopNew2FormButton: TButton;

    procedure ExitButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowModalOnTopNew2FormButtonClick(Sender: TObject);
    procedure ShowModalOnTopNewFormButtonClick(Sender: TObject);
    procedure ShowNew2FormButtonClick(Sender: TObject);
    procedure ShowNewFormButtonClick(Sender: TObject);
    procedure ShowModalNew2FormButtonClick(Sender: TObject);
    procedure ShowModalNewFormButtonClick(Sender: TObject);
    procedure ShowOnTopNew2FormButtonClick(Sender: TObject);
    procedure ShowOnTopNewFormButtonClick(Sender: TObject);
  private
  public
  end;


var
  MainForm: TMainForm;


implementation


uses
  New,
  New2;


{$IFDEF LCL}
  {$R *.lfm}
{$ELSE}

{$R *.dfm}

{$IFEND}


procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.FormShow(Sender: TObject);
begin
{$IFDEF FPC}
  MainFormStatusBar.Panels[0].Text := ' Lazarus v.' + laz_version;
{$ENDIF}
end;


procedure TMainForm.ShowModalOnTopNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsStayOnTop;
      New2Form.ShowModal;
    end;
end;


procedure TMainForm.ShowModalOnTopNewFormButtonClick(Sender: TObject);
begin
  if not NewForm.Showing then
    begin
      NewForm.FormStyle := fsStayOnTop;
      NewForm.ShowModal;
    end;
end;


procedure TMainForm.ShowNewFormButtonClick(Sender: TObject);
begin
  if not NewForm.Showing then
    begin
      NewForm.FormStyle := fsNormal;
      NewForm.Show;
    end;
end;


procedure TMainForm.ShowNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsNormal;
      New2Form.Show;
    end;
end;


procedure TMainForm.ShowModalNewFormButtonClick(Sender: TObject);
begin
  if not NewForm.Showing then
    begin
      NewForm.FormStyle := fsNormal;
      NewForm.ShowModal;
    end;
end;


procedure TMainForm.ShowOnTopNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsStayOnTop;
      New2Form.Show;
    end;
end;


procedure TMainForm.ShowOnTopNewFormButtonClick(Sender: TObject);
begin
  if not NewForm.Showing then
    begin
      NewForm.FormStyle := fsStayOnTop;
      NewForm.Show;
    end;
end;


procedure TMainForm.ShowModalNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsNormal;
      New2Form.ShowModal;
    end;
end;


end.
