{:
  @author(Andry Smirnov)
  @abstract(Test form project's main form)
  @created(22.10.2022)
  @modified(25.10.2022 by Andry Smirnov)
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
  Buttons;


type

  { TMainForm }

  TMainForm = class(TForm)
    LCLLabel: TLabel;
    ShowFormButton: TButton;
    ExitButton: TButton;
    ShowModalButton: TButton;
    ShowModalFormButton: TButton;
    ShowFormButton1: TButton;
    ShowModalFormButton1: TButton;

    procedure ExitButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowFormButton1Click(Sender: TObject);
    procedure ShowFormButtonClick(Sender: TObject);
    procedure ShowModalFormButton1Click(Sender: TObject);
    procedure ShowModalFormButtonClick(Sender: TObject);
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
  LCLLabel.Caption := 'Lazarus v.' + laz_version;
{$ENDIF}
end;

procedure TMainForm.ShowFormButton1Click(Sender: TObject);
begin
  New2Form.Show;
end;


procedure TMainForm.ShowFormButtonClick(Sender: TObject);
begin
  NewForm.Show;
end;

procedure TMainForm.ShowModalFormButton1Click(Sender: TObject);
begin
  if not New2Form.Showing then
    New2Form.ShowModal;
end;


procedure TMainForm.ShowModalFormButtonClick(Sender: TObject);
begin
  if not NewForm.Showing then
    NewForm.ShowModal;
end;


end.
