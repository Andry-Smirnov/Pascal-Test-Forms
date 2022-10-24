{:
  @author(Andry Smirnov)
  @abstract(Test form project's new 2 form)
  @created(22.10.2022)
  @modified(25.10.2022 by Andry Smirnov)
}
unit New2;


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
  TNew2Form = class(TForm)
    CloseButton: TButton;

    procedure CloseButtonClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
  public
  end;


var
  New2Form: TNew2Form;


implementation


{$IFDEF LCL}
  {$R *.lfm}
{$ELSE}
  {$R *.dfm}
{$IFEND}


procedure TNew2Form.CloseButtonClick(Sender: TObject);
begin
  Close;
end;


procedure TNew2Form.FormDeactivate(Sender: TObject);
begin
  if Showing then
    SetFocus;
end;


end.
