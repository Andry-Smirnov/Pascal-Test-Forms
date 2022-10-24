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
  TNewForm = class(TForm)
    CloseButton: TButton;

    procedure CloseButtonClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
  public
  end;


var
  NewForm: TNewForm;


implementation


{$IFDEF LCL}
  {$R *.lfm}
{$ELSE}
  {$R *.dfm}
{$IFEND}


procedure TNewForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;


procedure TNewForm.FormDeactivate(Sender: TObject);
begin
  if Showing then
    SetFocus;
end;


end.
