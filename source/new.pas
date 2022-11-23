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
  StdCtrls;


type

  { TNewForm }

  TNewForm = class(TForm)
    CloseButton: TButton;
    ShowFormButton: TButton;
    ShowModalFormButton: TButton;

    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure ShowFormButtonClick(Sender: TObject);
    procedure ShowModalFormButtonClick(Sender: TObject);
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
end;


procedure TNewForm.FormDeactivate(Sender: TObject);
begin
  if Showing then
    SetFocus;
end;


procedure TNewForm.ShowFormButtonClick(Sender: TObject);
begin
  New2Form.Show;
end;


procedure TNewForm.ShowModalFormButtonClick(Sender: TObject);
begin
  if not New2Form.Showing then
    New2Form.ShowModal;
end;


end.
