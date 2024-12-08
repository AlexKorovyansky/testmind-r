unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
form4.close;
form1.start.Visible:=false;
form1.Show;
form1.Label1.caption:='';
form1.Label2.caption:='';
form1.hour.Visible:=false;
form1.U_hod.Visible:=false;
form1.T_hod.Visible:=false;
form1.stat_t.Visible:=false;
form1.stat_u.Visible:=false;
form1.byk.Visible:=false;
form1.kor.Visible:=false;
form1.lb.Visible:=false;
form1.lk.Visible:=false;
form2.showmodal;
end;

end.
