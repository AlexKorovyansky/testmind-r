unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls, MPlayer, jpeg, Buttons, ComCtrls,math,
  XPMan,inifiles;

  type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    m1: TLabel;
    m2: TLabel;
    mname: TLabel;
    Button1: TButton;
    mp1: TMediaPlayer;
    Button2: TButton;
    Button3: TButton;
    speak: TLabel;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    bloknot: TButton;
    h1: TLabel;
    info: TButton;
    hour: TLabel;
    U_hod: TEdit;
    stat_u: TLabel;
    t_hod: TLabel;
    byk: TEdit;
    lb: TLabel;
    kor: TEdit;
    lk: TLabel;
    stat_t: TLabel;
    start: TButton;
    progress: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    XPManifest1: TXPManifest;
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure bloknotClick(Sender: TObject);
    procedure U_hodKeyPress(Sender: TObject; var Key: Char);
    procedure infoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure startClick(Sender: TObject);
    procedure bykKeyPress(Sender: TObject; var Key: Char);
    procedure korKeyPress(Sender: TObject; var Key: Char);
    procedure N12Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
  mus_files: array[1..100] of string;
  mus_short: array[1..100] of string;
  max_track,nr,zzz:integer;
  h_pr:boolean;
  u_chislo,t_chislo,winer:string;
  u_name:string;
  t_name,t_mode,who:string;
  time_begin:string;
  f,n_hoda:byte;
  play_mode:string;
  c_length,s_length:byte;
  level:byte;
  plus:real;
  m_players: array[1..3,1..5] of integer;
  u_wins,t_wins:integer;
  auto_otvet,game_play,pr_ka:boolean;
  m_big: array[1..4000] of string;
  m_save:array[1..3500] of string;
  i,j,dlina_m_big,ran,s:integer;
  pr_plus:boolean;
  ini:tinifile;
   ininame:string;
 const// ininame='d:/testmind.ini';
  t_novichok='0:20:00';
  t_igrok='0:10:00';
  t_talant='0:05:00';
  t_master='0:03:00';
  t_zvezda='0:01:30';
  ininame2='testmind';
      pl_1='Alex';
       pl_2='Helen';
       pl_3='Kate';
       pl_4='Kostya';
       pl_5='Ivan';

  implementation

  uses Unit2, Unit3, Unit4, Unit5,unit6, Unit7,unit8, Unit9, Unit10,
  Unit11;


{$R *.dfm}
////////////////////////////////
//��������� � ������� ��� ����
////////////////////////////////

//��������� ���������� ����
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

//��������� ��� �� ������� �����
function mashod(massiv:array of string;dlina:integer):string;
var n:integer;
resultat:string;
begin
randomize;
n:=random(dlina)+1;
resultat:=massiv[n-1];
mashod:=resultat;
end;

//�������� ����� �� ��������
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

//������� ����� ����� � ����� c1 �� ���� c2
function kr(c1,c2:string):string;
var k:byte;
begin
k:=0;
if c1[1]=c2[2] then k:=k+1;
if c1[1]=c2[3] then k:=k+1;
if c1[1]=c2[4] then k:=k+1;
if c1[2]=c2[1] then k:=k+1;
if c1[2]=c2[3] then k:=k+1;
if c1[2]=c2[4] then k:=k+1;
if c1[3]=c2[1] then k:=k+1;
if c1[3]=c2[2] then k:=k+1;
if c1[3]=c2[4] then k:=k+1;
if c1[4]=c2[1] then k:=k+1;
if c1[4]=c2[2] then k:=k+1;
if c1[4]=c2[3] then k:=k+1;
kr:=inttostr(k);
end;

//������� ����� ����� � ����� c1 �� ���� c2
function bk(ch1,ch2:string):string;
var b:byte;
begin
b:=0;

if ch1[1]=ch2[1] then b:=b+1;
if ch1[2]=ch2[2] then b:=b+1;
if ch1[3]=ch2[3] then b:=b+1;
if ch1[4]=ch2[4] then b:=b+1;
bk:=inttostr(b);
end;

///////////////////////
//��������� ����
///////////////////////

//������ ����� ����
procedure TForm1.N2Click(Sender: TObject);
begin
if t_chislo='' then
begin
form2.ShowModal;
exit;
end;
form4.showmodal;
end;

//�����
procedure TForm1.N3Click(Sender: TObject);
begin
form1.close;
end;

//��������� �����
procedure TForm1.N6Click(Sender: TObject);
begin
form3.showmodal;
end;

//��������� �����
procedure TForm1.N7Click(Sender: TObject);
begin
if button1.Visible=true then exit;
if max_track=0 then exit;
button1.visible:=true;
button2.visible:=true;
button3.visible:=true;
nr:=random(max_track)+1;
mp1.FileName:=mus_files[nr];
m1.Caption:='Music in game';
if length(mus_short[nr])>30 then mus_short[nr]:=copy(mus_short[nr],1,30)+'...';
   mname.Caption:=inttostr(nr)+') '+mus_short[nr];
   mp1.FileName:=mus_files[nr];
m2.caption:='������������� Track:';
mp1.Open;
mp1.play;
end;

//����������
procedure TForm1.N8Click(Sender: TObject);
begin
if max_track=0 then exit;
mp1.stop;
m1.Caption:='';
m2.Caption:='';
mname.Caption:='';
button1.visible:=false;
button2.visible:=false;
button3.visible:=false;
end;

////////////////
//��������� �������� ��������� �������� �����
////////////////

procedure TForm1.FormShow(Sender: TObject);
begin
{if u_hod.Visible=true then u_hod.SetFocus; }
end;

procedure TForm1.FormCreate(Sender: TObject);
var sr:tsearchrec;
begin
form1.Panel1.color:=$00FFCA95;
form1.Panel2.color:=$00FFCA95;
form1.Panel3.color:=$00FFCA95;
ininame:='testmind.ini';
ini:=tinifile.create(ininame);
try
ini.Writestring('right_work','error','no');
except
begin
ininame:=inputbox('�������������� ��������','������� ������������ ���� � ����� ����������� (������ Readme.txt)','C:/Windows/testmind.ini');
ini:=tinifile.create(ininame);
end;
end;
try
ini.Writestring('right_work','error','no');
except
begin
Showmessage('��������� ���������� ������ ���������');
halt;
end;
end;
form1.Panel1.color:=ini.ReadInteger('color','base',$00FFA042);
form1.Panel2.color:=ini.ReadInteger('color','fon',$00FFCA95);
form1.Panel3.color:=ini.ReadInteger('color','fon',$00FFCA95);
//���� ���������� � ����������� ������
i:=0;
if FindFirst('mus/*.mp3',faAnyFile,sr)=0 then
  Repeat
  i:=i+1;
  mus_files[i]:=expandfilename('mus/'+sr.Name);
  mus_short[i]:=sr.name;
  until findnext(sr)<>0;
findclose(sr);
max_track:=i;
//������������ ���������� �����
randomize;
if max_track=0 then
begin
showmessage('����������� ����� �� �������');
form1.button1.visible:=false;
form1.button2.visible:=false;
form1.button3.visible:=false;
form1.mname.caption:='';
form1.m1.Caption:='';
form1.m2.Caption:='';
end;
if max_track=0 then exit;
nr:=random(max_track)+1;
with form1.mp1 do
begin
FileName:=mus_files[nr];
open;
Play;
end;
if length(mus_short[nr])>30 then mus_short[nr]:=copy(mus_short[nr],1,30)+'...';
form1.mname.Caption:=inttostr(nr)+') '+mus_short[nr];
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//���������� ������ �� �������
ini:=tinifile.Create(ininame);
for i:=1 to 5 do begin
ini.WriteInteger('pl_'+inttostr(i),'win',m_players[1,i]);
ini.WriteInteger('pl_'+inttostr(i),'loss',m_players[2,i]);
ini.WriteInteger('pl_'+inttostr(i),'tie_up',m_players[3,i]);
end;
ini.Destroy;
end;

////////////////////////
//��������� ������� ������ �� �����
////////////////////////

procedure TForm1.startClick(Sender: TObject);
begin
j:=0;
//
s_length:=strtoint(form2.bs.Text);
//
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
t_chislo:=ranhod;
game_play:=true;
n_hoda:=1;
winer:='';
byk.Text:='';
kor.Text:='';
form1.info.Enabled:=true;
bloknot.Enabled:=true;
f:=random(3)+1;
time_begin:=timetostr(time);
form1.hour.Visible:=true;
if (f=1) or (f=2) then
begin
panel2.Enabled:=true;
speak.caption:=u_name+', �� ������ ������...';
form1.U_hod.visible:=true;
form1.stat_u.visible:=true;
form1.U_hod.setfocus;
who:='user';
end;
if (f=3) then begin
t_hod.Visible:=true;
form1.t_hod.Caption:=ranhod;
panel3.Enabled:=true;
speak.caption:='TestMind ����� ������...';
panel2.enabled:=false;
byk.visible:=true;
kor.visible:=true;
lb.Visible:=true;
lk.Visible:=true;
stat_t.visible:=true;
byk.Text:='';
kor.Text:='';
form1.byk.setfocus;
who:='testmind';
if auto_otvet=true then
     begin
     byk.text:=bk(u_chislo,t_hod.Caption);
 kor.text:=kr(u_chislo,t_hod.caption);
 stat_t.Caption:=stat_t.Caption+inttostr(n_hoda)+')'+t_hod.caption+' - '+byk.text+'� '+kor.text+'�'+#13;
    if n_hoda<>0 then
        begin
       j:=0;
        for i:=1 to dlina_m_big do
              begin
              if (bk(t_hod.Caption,m_big[i])=byk.Text) and (kr(t_hod.Caption,m_big[i])=kor.Text)
              then
                    begin
                    j:=j+1;
                    m_save[j]:=m_big[i];
                    end;
              end;//to dlina_m_big
        for i:=1 to dlina_m_big do m_big[i]:='��� ���';
        for i:=1 to j do m_big[i]:=m_save[i];
        dlina_m_big:=j;
        if dlina_m_big=0 then
                begin
                showMessage('�� ������� ��������'+#13+'����������� ����-������� ��� ��������� ������'+#13+'�� ��������� �������� ����');
                u_wins:=u_wins-1;
                game_play:=false;
                pr_ka:=false;
                form9.ShowModal;
                exit;
                end;
        j:=0;

        end;//if n_hoda<>0
    if (byk.Text='4') and (kor.Text='0') and (who='user') and (game_play=true) then
               begin
               winer:='testmind';
               t_wins:=t_wins+1;
               end;
    if (who='user') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then
                 begin
                 winer:='user';
                 u_wins:=u_wins+1;
                 end;
    if (who='user') and (byk.Text='4') and (kor.text='0') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then winer:='no_winer';
    form9.Caption:=u_name+' vs '+t_name;
    if winer<>'' then begin form9.showmodal; exit; end;
    panel3.Enabled:=false;
   panel2.Enabled:=true;
   u_hod.Visible:=true;
   u_hod.Text:='';
   u_hod.setfocus;
   if who='user' then n_hoda:=n_hoda+1;
   speak.Caption:=u_name+', ��� ���...'
     end;//auto-otvet:=true;

end;
label1.Caption:=u_name;
label2.Caption:=t_name;
start.Visible:=false;
//� ����� ���
TDemo.Suspended:=false;
end;

// ��������� ����� >>
procedure TForm1.Button1Click(Sender: TObject);
begin
if nr+1>max_track then nr:=1 else nr:=nr+1;
   if length(mus_short[nr])>30 then mus_short[nr]:=copy(mus_short[nr],1,30)+'...';
   mname.Caption:=inttostr(nr)+') '+mus_short[nr];
   mp1.FileName:=mus_files[nr];
   mp1.Open;
   mp1.Play;
end;

// ����� ||
procedure TForm1.Button3Click(Sender: TObject);
begin
mp1.Pause;
end;

// ���������� <<
procedure TForm1.Button2Click(Sender: TObject);
begin
if nr-1=0 then nr:=max_track else nr:=nr-1;
   if length(mus_short[nr])>30 then mus_short[nr]:=copy(mus_short[nr],1,30)+'...';
   mname.Caption:=inttostr(nr)+') '+mus_short[nr];
   mp1.FileName:=mus_files[nr];
   mp1.Open;
   mp1.Play;
end;

//�������� ��������
procedure TForm1.bloknotClick(Sender: TObject);
begin
//form5.Caption:=t_chislo;
form5.showmodal;
end;

//���������� � ����������
procedure TForm1.infoClick(Sender: TObject);
begin
form7.fhoto_panel.Visible:=false;
case level of
1:s:=5;
2:s:=4;
3:s:=3;
4:s:=2;
5:s:=1;
end;
form7.shans.position:=ceil(100/dlina_m_big/(s-plus));
form7.Label6.Caption:=floattostr(trunc(100/dlina_m_big/(s-plus)*100)/100)+' %';
if (form1.byk.Text='4') and (form1.kor.text='0') then
           begin
           form7.shans.Position:=100;
           form7.Label6.Caption:='100%';
           end;
form7.showmodal;
end;

///////////////////////
//��������� �������� ����
//////////////////////

//������� ���� � ����������
procedure TForm1.U_hodKeyPress(Sender: TObject; var Key: Char);
var y:integer;
begin
if key=#13 then
    begin
//��������
    try
    strtoint(u_hod.Text);
    except
    showmessage('������� ������� �����');
    u_hod.Text:='';
    u_hod.SetFocus;
    exit;
    end;
    if proverka(u_hod.Text)=false then
      begin
      showmessage('������� ������� �����');
      u_hod.Text:='';
      u_hod.SetFocus;
      exit;
      end;
    stat_u.Visible:=true;
     stat_u.Caption:=stat_u.Caption+inttostr(n_hoda)+')'+u_hod.Text+' - '+    bk(u_hod.Text,t_chislo)+'� '+kr(u_hod.Text,t_chislo)+'�'+#13;
  form5.l1.Caption:=stat_u.Caption;
//������� ����
//�������� �� ����������
if (who='testmind') and (byk.Text='4') and (kor.text='0') and (game_play=true)then winer:='testmind';
if (who='testmind') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then winer:='user';
if (who='testmind') and (byk.Text='4') and (kor.text='0') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then winer:='no_winer';
if (winer='user') and (game_play=true) then
      begin
      if auto_otvet=false then
          begin
          pr_ka:=false;
          repeat
          y:=0;
          u_chislo:=inputbox('�������� ���������','������� ���� �����','');
          if u_chislo='' then exit;try strtoint(u_chislo);
          except
          begin
          showmessage('���������� ����� �����');
          y:=1;
          end;
          end;
          if (y<>1) and (proverka(u_chislo)=false) then showmessage('���������� ����� �����');
          until (proverka(u_chislo)=true) and (y=0);
          for i:=1 to dlina_m_big do if m_big[i]=u_chislo then pr_ka:=true;
          if pr_ka=false then
                            begin
                            showMessage('�� ������� ��������'+#13+'����������� ����-������� ��� ��������� ������'+#13+'�� ��������� �������� ����');
                            u_wins:=u_wins-1;
                            end;
          end;
      if (pr_ka=true) then begin
      u_wins:=u_wins+1;
      m_players[2,level]:=m_players[2,level]+1;
      end;
      {tvrema.Suspended:=true;}
      form9.ShowModal;
      exit;
      end;
if (winer='testmind') and (game_play=true) then
      begin
      t_wins:=t_wins+1;
      m_players[1,level]:=m_players[1,level]+1;
      {tvrema.Suspended:=true;}
      form9.ShowModal;
      exit;
      end;//testmind win
if (winer='no_winer') and (game_play=true) then
      begin
      t_wins:=t_wins+1;
      u_wins:=u_wins+1;
      m_players[3,level]:=m_players[3,level]+1;
      {tvrema.Suspended:=true;}
      form9.ShowModal;
      exit;
      end;
if winer<>'' then game_play:=false;
panel2.enabled:=false;
panel3.Enabled:=true;
byk.visible:=true;
kor.visible:=true;
lb.Visible:=true;
lk.Visible:=true;
stat_t.visible:=true;
t_hod.Visible:=true;
t_hod.Caption:='';
byk.Text:='';
kor.Text:='';
if (who='testmind') then n_hoda:=n_hoda+1;
if n_hoda=11 then
begin
winer:='nikto';
form9.showmodal;
exit;
end;
//���������� ���� TM
if n_hoda=1 then t_hod.Caption:=ranhod;
if n_hoda>1 then
begin
case level of
1:begin
  ran:=random(100)+1;
  if ran<=20 then t_hod.Caption:=mashod(m_big,dlina_m_big) else t_hod.Caption:=ranhod;
  end;
2:begin
  ran:=random(100)+1;
  if ran<=25 then t_hod.Caption:=mashod(m_big,dlina_m_big) else t_hod.Caption:=ranhod;
  end;
3:begin
  ran:=random(100)+1;
  if ran<=33 then t_hod.Caption:=mashod(m_big,dlina_m_big) else t_hod.Caption:=ranhod;
  end;
4:begin
  ran:=random(100)+1;
  if ran<=70 then t_hod.Caption:=mashod(m_big,dlina_m_big) else t_hod.Caption:=ranhod;
  end;
5:t_hod.Caption:=mashod(m_big,dlina_m_big);
end;//case
{t_hod.Caption:=ranhod;}
end;
if auto_otvet=false then byk.SetFocus;
if auto_otvet=true then
 begin
 byk.text:=bk(u_chislo,t_hod.Caption);
 kor.text:=kr(u_chislo,t_hod.caption);
 stat_t.Caption:=stat_t.Caption+inttostr(n_hoda)+')'+t_hod.caption+' - '+byk.text+'� '+kor.text+'�'+#13;
    if n_hoda<>0 then
        begin
       j:=0;
        for i:=1 to dlina_m_big do
              begin
              if (bk(t_hod.Caption,m_big[i])=byk.Text) and (kr(t_hod.Caption,m_big[i])=kor.Text)
              then
                    begin
                    j:=j+1;
                    m_save[j]:=m_big[i];
                    end;
              end;//to dlina_m_big
        for i:=1 to dlina_m_big do m_big[i]:='��� ���';
        for i:=1 to j do m_big[i]:=m_save[i];
        dlina_m_big:=j;
        if dlina_m_big=0 then
                begin
                showMessage('�� ������� ��������'+#13+'����������� ����-������� ��� ��������� ������'+#13+'�� ��������� �������� ����');
                u_wins:=u_wins-1;
                game_play:=false;
                pr_ka:=false;
                form9.ShowModal;
                exit;
                end;
        j:=0;
        end;//if n_hoda<>0
    if (byk.Text='4') and (kor.Text='0') and (who='user') and (game_play=true) then
               begin
               winer:='testmind';
               m_players[1,level]:=m_players[1,level]+1;
               t_wins:=t_wins+1;
               end;
    if (who='user') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then
                 begin
                 winer:='user';
                 u_wins:=u_wins+1;
                 m_players[2,level]:=m_players[2,level]+1;
                 end;
    if (who='user') and (byk.Text='4') and (kor.text='0') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then
    begin
    winer:='no_winer';
    m_players[3,level]:=m_players[3,level]+1;
    end;
    form9.Caption:=u_name+' vs '+t_name;
    if winer<>'' then begin form9.showmodal; exit; end;
    panel3.Enabled:=false;
    panel2.Enabled:=true;
    u_hod.Visible:=true;
    u_hod.Text:='';
    u_hod.setfocus;
    if who='user' then n_hoda:=n_hoda+1;
    if n_hoda=11 then
            begin
            winer:='nikto';
            form9.showmodal;
            exit;
            end;
    end;//auto-otvet=true
if auto_otvet=false then
      begin
    speak.Caption:='��� TestMind...';
      end else    speak.Caption:=u_name+', ��� ���...';

end;
end;

procedure TForm1.bykKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
       begin
       try strtoint(byk.text);
       except showmessage('������� ������ ����� �����');
              byk.text:='';
              exit;
       end;
       if strtoint(byk.Text)>4 then begin
                               showmessage('������� ������ ����� �����');
                               byk.text:='';
                               exit;
                               end;
       kor.SetFocus;
       end;
end;

procedure TForm1.korKeyPress(Sender: TObject; var Key: Char);
var y:integer;
begin
if key=#13 then
     begin
     try strtoint(kor.text);
       except showmessage('������� ������ ����� �����');
              kor.text:='';
              exit;
       end;
       if strtoint(kor.text)>4 then begin
                               showmessage('������� ������ ����� �����');
                               kor.text:='';
                               exit;
                               end;
     try strtoint(byk.text);
       except showmessage('������� ������ ����� �����');
              byk.text:='';
              byk.setfocus;
              exit;
       end;
       if strtoint(byk.Text)>4 then begin
                               showmessage('������� ������ ����� �����');
                               byk.text:='';
                               byk.SetFocus;
                               exit;
                               end;
   if (strtoint(byk.Text)+strtoint(kor.Text)>4) then
       begin
       showmessage('������� ������� ����� ����� � �����');
       byk.text:='';
       kor.Text:='';
       byk.SetFocus;
       exit;
       end;
       stat_t.Caption:=stat_t.Caption+inttostr(n_hoda)+')'+t_hod.caption+' - '+byk.text+'� '+kor.text+'�'+#13;
       {form1.Memo1.Clear;
  for i:=1 to dlina_m_big do form1.Memo1.Lines.Add(m_big[i]);}
//�������� ����������
if n_hoda<>0 then
        begin
       j:=0;
        for i:=1 to dlina_m_big do
              begin
              if (bk(t_hod.Caption,m_big[i])=byk.Text) and (kr(t_hod.Caption,m_big[i])=kor.Text)
              then
                    begin
                    j:=j+1;
                    m_save[j]:=m_big[i];
                    end;
              end;//to dlina_m_big
        for i:=1 to dlina_m_big do m_big[i]:='��� ���';
        for i:=1 to j do m_big[i]:=m_save[i];
        dlina_m_big:=j;
        if dlina_m_big=0 then
                begin
                showMessage('�� ������� ��������'+#13+'����������� ����-������� ��� ��������� ������'+#13+'�� ��������� �������� ����');
                u_wins:=u_wins-1;
                game_play:=false;
                pr_ka:=false;
                form9.ShowModal;
                exit;
                end;
        j:=0;
        end;//if n_hoda<>0
pr_ka:=true;
if (byk.Text='4') and (kor.Text='0') and (who='user') and (game_play=true) then winer:='testmind';
if (who='user') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then winer:='user';
if (who='user') and (byk.Text='4') and (kor.text='0') and (bk(u_hod.Text,t_chislo)='4') and (game_play=true) then winer:='no_winer';
form9.Caption:=u_name+' vs '+t_name;
if (winer='user') and (game_play=true) then
 begin
      if auto_otvet=false then
          begin
          pr_ka:=false;
          repeat
          y:=0;
          u_chislo:=inputbox('�������� ���������','������� ���� �����','');
          if u_chislo='' then exit;try strtoint(u_chislo);
          except
          begin
          showmessage('���������� ����� �����');
          y:=1;
          end;
          end;
          if (y<>1) and (proverka(u_chislo)=false) then showmessage('���������� ����� �����');
          until (proverka(u_chislo)=true) and (y=0);
          for i:=1 to dlina_m_big do if m_big[i]=u_chislo then pr_ka:=true;
          if pr_ka=false then
                     begin
                    showMessage('�� ������� ��������'+#13+'����������� ����-������� ��� ��������� ������'+#13+'�� ��������� �������� ����');
                    u_wins:=u_wins-1;
                    end;
          end;
      game_play:=false;
      if (pr_ka=true) then
      begin
      u_wins:=u_wins+1;
      m_players[2,level]:=m_players[2,level]+1;
      end;
      {tvrema.Suspended:=true;}
      form9.time1.Caption:=hour.Caption;
      form9.ShowModal;
      exit;
      end;
if (winer='testmind') and (game_play=true) then
      begin
      t_wins:=t_wins+1;
      game_play:=false;
      m_players[1,level]:=m_players[1,level]+1;
      {tvrema.Suspended:=true;}
      form9.ShowModal;
      exit;
      end;//testmind win
if (winer='no_winer') and (game_play=true) then
 begin
      u_wins:=u_wins+1;
      t_wins:=t_wins+1;
      game_play:=false;
      m_players[3,level]:=m_players[3,level]+1;
      {tvrema.Suspended:=true;}
      form9.ShowModal;
      exit;
      end;

   stat_u.Visible:=true;
  { stat_t.Caption:=stat_t.Caption+inttostr(n_hoda)+')'+t_hod.caption+' - '+byk.text+'� '+kor.text+'�'+#13;}
   panel3.Enabled:=false;
   panel2.Enabled:=true;
   u_hod.Visible:=true;
   u_hod.Text:='';
   u_hod.setfocus;
   if who='user' then n_hoda:=n_hoda+1;
   if n_hoda=11 then
   begin
   winer:='nikto';
   end;

   speak.Caption:=u_name+', ��� ���...';
   end;//key=#13
end;

procedure TForm1.N12Click(Sender: TObject);
begin
form10.showmodal;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
form11.showmodal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
showmessage('����� ���� - ����������� �������'+#13+
            'e-mail: oleska-kor@yandex.ru'+#13+
            '��������� �������� �� ����� Delphi 7.0'+#13+
            '�� ���� �������� ���������� � ������ ����.');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
showmessage('***********************************'+#13+
            '���� ���� - �������� ����� ����������'+#13+
            '***********************************'+#13+
            '������� ���� - ��������� � ������� '+#13+
            '���������� 4-� ������� �����, � �������'+#13+
            '��� ���� � ��� ����� �������� (1..9)'+#13+
            '� ���� ����� ����� �������� "����������",'+#13+
            '�����, � ��� �������� �������� ������� �'+#13+
            '�� ����� � �����. ��� - �����-�� �����'+#13+
            '���� � ����� �� ���� �����. ������ -'+#13+
            '����� ����, �� ����� �� �� ���� �����'+#13+
            '���� ������������� ��� ������������ �����'+#13+
            '����� ��������� - 4 ����.'+#13+
            '***********************************'+#13+
            '���� ���� - ��������: ���� �� �����,'+#13+
            'c ����������� ���������� ���������'+#13+
            '������� ����: ������� ��������� ����'+#13+
            '***********************************'+#13+
            '������ ������ ���������� �� �������'+#13+
            '������������ �����.'+#13+
            '***********************************'+#13+
            '                         �����!!!              '+#13+
            '***********************************'+#13);
end;

end.
