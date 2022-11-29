{:
  @author(Andry Smirnov)
  @abstract(Test form project's new form)
  @created(22.10.2022)
  @modified(25.10.2022 by Andry Smirnov)
}
unit New;


{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}


interface


uses
//  Windows,
//  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls;


type

  { TNewForm }

  TNewForm = class(TForm)
    Bevel2: TBevel;
    CloseButton: TButton;
    GroupBox1: TGroupBox;
    ShowModalNew2FormButton: TButton;
    ShowModalOnTopNew2FormButton: TButton;
    ShowNew2FormButton: TButton;
    ShowOnTopNew2FormButton: TButton;

    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure ShowModalNew2FormButtonClick(Sender: TObject);
    procedure ShowModalOnTopNew2FormButtonClick(Sender: TObject);
    procedure ShowNew2FormButtonClick(Sender: TObject);
    procedure ShowOnTopNew2FormButtonClick(Sender: TObject);
  private
  public
  end;


var
  NewForm: TNewForm;


implementation


uses
  New2;


{$IFDEF LCL}
  {$R *.lfm}
{$ELSE}
  {$R *.dfm}
{$IFEND}


procedure TNewForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;


procedure TNewForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if New2Form.Showing then
    New2Form.Close;
  CloseAction := caHide;
end;


procedure TNewForm.ShowModalNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsNormal;
      New2Form.ShowModal;
    end;
end;


procedure TNewForm.ShowModalOnTopNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsStayOnTop;
      New2Form.ShowModal;
    end;
end;


procedure TNewForm.ShowNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsNormal;
      New2Form.Show;
    end;
end;


procedure TNewForm.ShowOnTopNew2FormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    begin
      New2Form.FormStyle := fsStayOnTop;
      New2Form.Show;
    end;
end;


end.
