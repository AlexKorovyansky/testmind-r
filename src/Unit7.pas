unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    shans: TProgressBar;
    Label6: TLabel;
    Image1: TImage;
    fhoto_panel: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form7: TForm7;

implementation

uses Unit1,inifiles,math;


{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
var i:integer;
begin
form7.Color:=form1.panel2.color;
form7.panel1.Color:=form1.Panel1.Color;
ini:=tinifile.Create(ininame);
for i:=1 to 5 do begin
m_players[1,i]:=ini.readinteger('pl_'+inttostr(i),'win',0);
m_players[2,i]:=ini.readinteger('pl_'+inttostr(i),'loss',0);
m_players[3,i]:=ini.readinteger('pl_'+inttostr(i),'tie_up',0);
end;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (form1.U_hod.Visible=true) and (form1.Panel2.Enabled=true) then form1.U_hod.SetFocus;
if (form1.byk.Visible=true) and (form1.Panel3.Enabled=true) then form1.byk.SetFocus;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
{image1.Picture.Destroy;}
label1.caption:=t_name;
label2.Caption:='Класс игрока - '+t_mode;
label3.Caption:='Выиграно матчей - '+inttostr(m_players[1,level]);
label4.Caption:='Проиграно матчей - '+inttostr(m_players[2,level]);
label5.Caption:='Сыграно в ничью - '+inttostr(m_players[3,level]);
image1.Visible:=false;
//определение фото
case level of
1:begin
if FileExists(pl_5+'.jpg')=true then
                   begin
                   image1.visible:=true;
                   image1.Picture.LoadFromFile(expandfilename(pl_5+'.jpg'));
                   if image1.width>90 then
                                 begin
                                 image1.Height:=ceil(90*image1.Picture.Height/(image1.Picture.Width));
                                 image1.Width:=90;
                                 end;
                   if image1.height>115 then
                                 begin
                                 image1.Width:=ceil(115*image1.Picture.Width/(image1.Picture.Height));
                                 image1.Height:=115;
                                 end;
                   fhoto_panel.Width:=image1.Width;
                   fhoto_panel.Height:=image1.Height;
                   end;
  end;
2:begin
if FileExists(pl_4+'.jpg')=true then
                   begin
                   image1.visible:=true;
                   image1.Picture.LoadFromFile(expandfilename(pl_4+'.jpg'));
                   if image1.width>90 then
                                 begin
                                 image1.Height:=ceil(90*image1.Picture.Height/(image1.Picture.Width));
                                 image1.Width:=90;
                                 end;
                   if image1.height>115 then
                                 begin
                                 image1.Width:=ceil(115*image1.Picture.Width/(image1.Picture.Height));
                                 image1.Height:=115;
                                 end;
                   fhoto_panel.Width:=image1.Width;
                   fhoto_panel.Height:=image1.Height;
                   end;
  end;
3:begin
if FileExists(pl_3+'.jpg')=true then
                   begin
                   image1.visible:=true;
                   image1.Picture.LoadFromFile(expandfilename(pl_3+'.jpg'));
                   if image1.width>90 then
                                 begin
                                 image1.Height:=ceil(90*image1.Picture.Height/(image1.Picture.Width));
                                 image1.Width:=90;
                                 end;
                   if image1.height>115 then
                                 begin
                                 image1.Width:=ceil(115*image1.Picture.Width/(image1.Picture.Height));
                                 image1.Height:=115;
                                 end;
                   fhoto_panel.Width:=image1.Width;
                   fhoto_panel.Height:=image1.Height;
                   end;
  end;
4:begin
  if FileExists(pl_2+'.jpg')=true then
                   begin
                   image1.visible:=true;
                   image1.Picture.LoadFromFile(expandfilename(pl_2+'.jpg'));
                   if image1.width>90 then
                                 begin
                                 image1.Height:=ceil(90*image1.Picture.Height/(image1.Picture.Width));
                                 image1.Width:=90;
                                 end;
                   if image1.height>115 then
                                 begin
                                 image1.Width:=ceil(115*image1.Picture.Width/(image1.Picture.Height));
                                 image1.Height:=115;
                                 end;
                   fhoto_panel.Width:=image1.Width;
                   fhoto_panel.Height:=image1.Height;
                   end;
  end;
5:begin
  if FileExists(pl_1+'.jpg')=true then
                   begin
                   image1.visible:=true;
                   image1.Picture.LoadFromFile(expandfilename(pl_1+'.jpg'));
                   if image1.width>90 then
                                 begin
                                 image1.Height:=ceil(90*image1.Picture.Height/(image1.Picture.Width));
                                 image1.Width:=90;
                                 end;
                   if image1.height>115 then
                                 begin
                                 image1.Width:=ceil(115*image1.Picture.Width/(image1.Picture.Height));
                                 image1.Height:=115;
                                 end;
                   fhoto_panel.Width:=image1.Width;
                   fhoto_panel.Height:=image1.Height;
                   end;
  end;
end;//case
fhoto_panel.Visible:=true;
end;

end.
