unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Animate1: TAnimate;
    cd: TColorDialog;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2,inifiles, Unit5, Unit4, Unit7, Unit9, Unit10, Unit11;

{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
var i1,i2,i3:word;
begin
if fileexists('flash\help.avi')=true then begin
animate1.FileName:='flash\help.avi';
i1:=animate1.StartFrame;
i2:=animate1.stopFrame;
i3:=100;
animate1.Play(i1,i2,i3);
end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin//Базовый цвет
if cd.Execute then
     begin
     form1.panel1.color:=cd.color;
     form2.color:=cd.Color;
     form3.Color:=cd.Color;
     form4.color:=cd.color;
     form5.color:=cd.color;
     form7.color:=cd.color;
     form9.color:=cd.color;
     form10.color:=cd.color;
     form11.color:=cd.color;
     end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin//цвет фона
if cd.Execute then
  begin
  form1.panel2.color:=cd.color;
  form1.panel3.color:=cd.color;
  form10.static.FixedColor:=cd.color;
  form11.best_users.FixedColor:=cd.color;
  form7.Panel1.color:=cd.Color;
  end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
var c1,c2:integer;
begin
c1:=form1.Panel1.color;
c2:=form1.Panel2.color;
ini:=tinifile.Create(ininame);
ini.WriteInteger('color','base',c1);
ini.WriteInteger('color','fon',c2);
//ini.destroy;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
form3.Color:=form1.panel2.Color;
end;

end.
