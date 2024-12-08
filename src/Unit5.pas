unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    l1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
form5.Color:=form1.panel2.color;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (form1.U_hod.Visible=true) and (form1.Panel2.Enabled=true) then form1.U_hod.SetFocus;
if (form1.byk.Visible=true) and (form1.Panel3.Enabled=true) then form1.byk.SetFocus;
end;

end.
