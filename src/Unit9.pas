unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnMan, ActnColorMaps;

type
  TForm9 = class(TForm)
    l_winer: TLabel;
    l_time: TLabel;
    l_chet: TLabel;
    l_next: TButton;
    time1: TLabel;
    Button2: TButton;
    chet: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure l_nextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1,unit6, Unit2,unit5,unit8,inifiles;

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

procedure TForm9.FormCreate(Sender: TObject);
begin
form9.Color:=form1.panel1.color;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
button2.Caption:=t_chislo;
end;

procedure TForm9.FormActivate(Sender: TObject);
var l_ini,i:integer;
save_best_users:array[1..10] of string;
save_vrema_users:array[1..10] of string;
save_class_users:array[1..10] of string;
u_class,n_delete:string;
label l_l;
begin
button2.Caption:='Число Testmind';
{if auto_otvet=true then pr_ka:=true;}
time1.Caption:=form1.hour.Caption;
tdemo.Suspended:=true;
form5.memo1.clear;
form1.hour.Visible:=false;
if (pr_ka=false) then
       begin
       l_winer.Caption:='Вы сыграли нечестно';
       if t_wins=s_length then
         begin
         t_chislo:='';
         winer:='testmind';
//       l_next.Caption:='Заново';
         end;
       end;
if (winer='user') or (winer='no_winer') then button2.Visible:=false else button2.Visible:=true;
chet.Caption:=inttostr(u_wins)+':'+inttostr(t_wins);
if play_mode='mission' then l_next.Caption:='Заново' else l_next.caption:='Продолжить';
//Победа TestMind
if (winer='testmind') and (pr_ka=true) then l_winer.Caption:='Победа Testmind('+t_name+') на '+inttostr(n_hoda)+'-ом ходу';
//победа игрока
if (winer='user') and (pr_ka=true) then l_winer.Caption:='Победа Человека('+u_name+') на '+inttostr(n_hoda)+'-ом ходу';
//ничья
if winer='no_winer' then l_winer.Caption:='Ничья на '+inttostr(n_hoda)+'-ом ходу';
if (winer='nikto') and (pr_ka=true) then
begin
l_winer.Caption:='Ничья - числа не разгаданы';
l_next.caption:='Продолжить';
end;
if play_mode='company' then
begin
if (t_wins=s_length) and (u_wins=s_length) then
        begin
        s_length:=s_length+1;
        showmessage('Равенство в счете'+#13+'Для определения победителя потребуется ещё один матч');
        end;
if (t_wins=s_length) then
    begin
    l_next.Caption:='Заново';
    showmessage('Поражение!'+#13+'Кампания провалена');
    end;
if (u_wins=s_length) and (level<>5) then
    begin
    l_next.Caption:='Переход';
    showmessage('Поздравляю!'+#13+'Вы прошли в следующий круг');
    end;
if (level=5) and (u_wins=s_length) then
    begin
    l_next.Caption:='OK';
    showmessage('Поздравляю!'+#13+'Вы прошли прошли кампанию');
    end;
end;
if play_mode='mission' then
       begin
       chet.Visible:=false;
       l_chet.Visible:=false;
       end else
            begin
            chet.Visible:=true;
            l_chet.Visible:=true;
            end;
if (winer='user')or (winer='no_winer') and (pr_ka=true) then //сравнение результата (по времени) с остальными)
      begin
      ini:=tinifile.create(ininame);
      for l_ini:=1 to 10 do
               begin
               n_delete:=ini.ReadString('vrema_users',inttostr(l_ini),'0:20:00');
               if strtotime(time1.Caption)<strtotime(n_delete) then
                             begin
                             for i:=l_ini to 10 do
                                    begin
                                    save_best_users[i]:=ini.ReadString('best_users',inttostr(i),'KOR');
                                    save_vrema_users[i]:=ini.ReadString('vrema_users',inttostr(i),'0:20:00');
                                    save_class_users[i]:=ini.ReadString('class_users',inttostr(i),'новичок');
                                    end;

                             ini.WriteString('best_users',inttostr(l_ini),u_name);
                             ini.WriteString('vrema_users',inttostr(l_ini),time1.Caption);
                             //определение класса
                             if strtotime(time1.Caption)<strtotime(t_novichok) then u_class:='новичок';
                             if strtotime(time1.Caption)<strtotime(t_igrok)    then u_class:='игрок';
                             if strtotime(time1.Caption)<strtotime(t_talant)   then u_class:='талант';
                             if strtotime(time1.Caption)<strtotime(t_master)   then u_class:='мастер';
                             if strtotime(time1.Caption)<strtotime(t_zvezda)   then u_class:='звезда';
                             showmessage('Поздравляю вы показали время - '+form9.time1.caption+#13+'и вошли в 10-ку лучших игроков');
                             ini.WriteString('class_users',inttostr(l_ini),u_class);

                             for i:=l_ini+1 to 10 do
                                   begin
                                   ini.WriteString('best_users',inttostr(i),save_best_users[i-1]);
                                   ini.WriteString('vrema_users',inttostr(i),save_vrema_users[i-1]);
                                   ini.WriteString('class_users',inttostr(i),save_class_users[i-1]);
                                   end;
                             goto l_l;
                             end;
               end;
      end;
l_l:
end;

procedure TForm9.l_nextClick(Sender: TObject);
var i1,y:integer;
label l_1,l_2;
begin
form1.speak.caption:='Начните новую игру нажав клавишу F2';
form1.bloknot.enabled:=false;
form1.info.enabled:=false;
form5.Memo1.Clear;
form5.l1.Caption:='';
form1.Panel1.Enabled:=true;
form1.Panel2.enabled:=true;
form1.Panel3.enabled:=true;
form1.U_hod.Text:='';
form1.label1.Caption:='';
form1.stat_u.Caption:='';
form1.U_hod.Visible:=false;
form1.byk.Visible:=false;
form1.kor.Visible:=false;
form1.Label2.Caption:='';
form1.lb.visible:=false;
form1.lk.visible:=false;
form1.stat_t.Caption:='';
form1.t_hod.Caption:='';
if (play_mode='company') and (l_next.caption='OK') then
     begin
     u_wins:=0;
     t_wins:=0;
     form9.Close;
     form2.showmodal;
     exit;
     end;
if (play_mode='mission') and (l_next.Caption='Заново') then
begin
  u_wins:=0;
  t_wins:=0;
  form9.Close;
  form2.showmodal;
  exit;
end;
if ((play_mode='company') and (l_next.Caption='Заново')) then
  begin
  u_wins:=0;
  t_wins:=0;
  form9.Close;
  form2.showmodal;
  exit;
  end;
{for i1:=1234 to 9876 do
 begin
            if proverka(inttostr(i1))=true then
                              begin
                              j:=j+1;
                              m_big[j]:=inttostr(i1);
                              end;
 end;
dlina_m_big:=j;  }
winer:='';
form1.start.Visible:=true;
if (play_mode='company') and (l_next.Caption='Продолжить') then
    begin
    form9.Close;
    end;
if (play_mode='company') and (form9.l_next.Caption='Переход') then
       begin
l_2:
       u_chislo:='';
       t_wins:=0;
       u_wins:=0;
       level:=level+1;
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
       showmessage('Ваш следующий противник - '+t_name);
       form1.bloknot.Enabled:=true;
       form1.info.Enabled:=true;
       end;
if (auto_otvet=true) and (form9.l_next.Caption<>'Заново') and (l_next.Caption<>'OK') then
    begin
       l_1:
       y:=0;
       u_chislo:=inputbox('Ваше число','Введите ваше число для проверки ходов','');
       if (u_chislo='') or (proverka(u_chislo)=false) then
                begin
               showmessage('Невозможно такое число');
               goto l_1;
               end;
       try strtoint(u_chislo);
       except
          begin
          showmessage('Невозможно такое число');
          y:=1;
          end;
       end;
       if y=1 then goto l_1;
       end;
form9.close;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.info.Enabled:=false;
form1.bloknot.Enabled:=false;
form1.Label1.caption:='';
form1.Label2.caption:='';
end;

end.
