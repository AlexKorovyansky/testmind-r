unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    r2: TRadioButton;
    r1: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    bk: TComboBox;
    bs: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    r3: TRadioButton;
    r4: TRadioButton;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    r5: TRadioButton;
    r6: TRadioButton;
    procedure r1Click(Sender: TObject);
    procedure r2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
implementation

uses Unit1,unit6, Unit3, Unit4,unit8;

{$R *.dfm}
function ranhod:string;
var a:string;
i:integer;
label l_1;
begin
l_1:
randomize;
i:=random(9876-1234)+1234;
a:=inttostr(i);
if (a[1]=a[2]) or (a[1]=a[3]) or (a[1]=a[4]) or
   (a[2]=a[3]) or (a[2]=a[4]) or (a[3]=a[4]) or
   (a[1]='0') or  (a[2]='0') or (a[3]='0') or (a[4]='0') or
   (length(a)<>4) then goto l_1;;
ranhod:=a;
end;

function proverka(a:string):boolean;
var b:boolean;
begin
b:=true;
if (a[1]=a[2]) or (a[1]=a[3]) or (a[1]=a[4]) or
   (a[2]=a[3]) or (a[2]=a[4]) or (a[3]=a[4]) or
   (a[1]='0') or  (a[2]='0') or (a[3]='0') or (a[4]='0') or
   (length(a)<>4) then b:=false;
proverka:=b;
end;

procedure TForm2.r1Click(Sender: TObject);
begin
panel1.Visible:=true;
panel2.Visible:=false;
end;

procedure TForm2.r2Click(Sender: TObject);
begin
panel2.Visible:=true;
panel1.Visible:=false;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
{r1.Checked:=true;
r3.Checked:=true;
r5.Checked:=true;
panel1.visible:=true; }
{label6.Caption:=
'Auto-ответ включать не обязательно, при его включении'+#13+
'компьютер будет сам отвечать на свои ходы, поэтому'+#13+
'перед игрой вы будете обязаны ввести своё число.'; }
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
game_play:=false;
form1.start.Visible:=false;
form1.Panel1.Enabled:=true;
form1.Panel2.enabled:=true;
form1.Panel3.enabled:=true;
form1.U_hod.Text:='';
form1.label1.Caption:='';
form1.stat_u.Caption:='';
winer:='';
form1.U_hod.Visible:=false;
form1.byk.Visible:=false;
form1.kor.Visible:=false;
form1.Label2.Caption:='';
form1.lb.visible:=false;
form1.lk.visible:=false;
form1.stat_t.Caption:='';
form1.t_hod.Caption:='';
t_chislo:='';
form2.close;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
y:byte;
i:integer;
begin
u_name:=inputbox('Имя игрока','Введите ваше имя','') ;
if u_name='' then exit;
If length(u_name)>7 then
repeat
u_name:=inputbox('Имя игрока','Имя не может быть длиннее 7 знаков','') ;
until length(u_name)<7;
if u_name='' then exit;
if form2.r4.Checked=true then h_pr:=true
else h_pr:=false;
if h_pr=true then
  begin
  repeat
   y:=0;
   u_chislo:=inputbox('Ваше число','Введите ваше число для проверки ходов','');
   if u_chislo='' then exit;
   try strtoint(u_chislo);
     except
     begin
     showmessage('Невозможно такое число');
     y:=1;
     end;
   end;
  if (y<>1) and (proverka(u_chislo)=false) then showmessage('Невозможно такое число');
  until (proverka(u_chislo)=true) and (y=0);
  end;
pr_ka:=true;
form1.U_hod.Text:='';
form1.t_hod.Caption:='';
form1.stat_u.Caption:='';
form1.stat_t.Caption:='';
form1.byk.text:='';
form1.kor.Text:='';
t_wins:=0;
u_wins:=0;
if r1.Checked=true then play_mode:='company';
if r2.Checked=true then play_mode:='mission';
    Tvrema:=potok2.create(true);
if r4.Checked=true then begin
    auto_otvet:=true;
    end else auto_otvet:=false;
if play_mode='company' then
    begin
    c_length:=strtoint(form2.bk.Text);
    s_length:=strtoint(form2.bs.Text);
    level:=6-c_length;
    end;
if play_mode='mission' then
    begin
    if r5.Checked=true then level:=3;
    if r6.Checked=true then level:=5;
    c_length:=0;
    s_length:=0;
    end;
u_wins:=0;
t_wins:=0;
//создание базы на противника
case level of
1:begin
  t_name:=pl_5;;
  t_mode:='новичок';
  end;
2:begin
  t_name:=pl_4;
  t_mode:='игрок';
  end;
3:begin
  t_name:=pl_3;
  t_mode:='талант';
  end;
4:begin
  t_name:=pl_2;
  t_mode:='мастер';
  end;
5:begin
  t_name:=pl_1;
  t_mode:='звезда';
  end;
end;//выбор
t_chislo:=ranhod;
{form1.speak.Caption:=t_chislo;   }
//создание массива
form1.start.Visible:=true;
j:=0;
for i:=1234 to 9876 do
            begin
            if proverka(inttostr(i))=true then
                              begin
                              j:=j+1;
                              m_big[j]:=inttostr(i);
                              end;
            end;
dlina_m_big:=j;
j:=0;
///////
form1.bloknot.Enabled:=false;
form1.info.Enabled:=false;
form2.Close;
//form1.show;
end;

procedure TForm2.FormCreate(Sender: TObject);
var i:integer;
begin
TDemo:=potok.Create(true);
end;

end.
