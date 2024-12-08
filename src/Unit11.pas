unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm11 = class(TForm)
    best_users: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit2, Unit1, Unit3, Unit4, Unit5, Unit7, Unit9, Unit10,inifiles;

{$R *.dfm}

procedure TForm11.FormActivate(Sender: TObject);
var k:integer;
begin
ini:=tinifile.create(ininame);
with best_users do
    begin
    Cells[0,0]:='№';
    Cells[1,0]:='Имя игрока';
    Cells[2,0]:='Класс игрока';
    Cells[3,0]:='Время';
    for k:=1 to 10 do
        begin
        cells[0,k]:=inttostr(k);
        cells[1,k]:=ini.ReadString('best_users',inttostr(k),'KOR');
        cells[2,k]:=ini.ReadString('class_users',inttostr(k),'новичок');
        cells[3,k]:=ini.ReadString('vrema_users',inttostr(k),'0:20:00')
        end;
    end;
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
form2.color:=form1.Panel1.color;
form3.color:=form1.Panel1.color;
form4.color:=form1.Panel1.color;
form5.color:=form1.Panel1.color;
form7.color:=form1.Panel1.color;
form7.Panel1.color:=form1.Panel2.Color;
form9.color:=form1.Panel1.color;
form10.color:=form1.Panel1.color;
form10.static.FixedColor:=form1.Panel2.color;
form11.color:=form1.Panel1.color;
form11.best_users.FixedColor:=form1.Panel2.color;
end;

end.
