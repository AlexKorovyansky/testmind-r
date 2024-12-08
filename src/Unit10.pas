unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TForm10 = class(TForm)
    static: TStringGrid;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  k,m:integer;

implementation

{$R *.dfm}
uses unit1, Unit2, Unit3, Unit4, Unit5, Unit7, Unit9;
procedure TForm10.FormActivate(Sender: TObject);
begin
static.Width:=static.DefaultColWidth*static.colcount+5+static.GridLineWidth*(static.ColCount-1);
static.Height:=static.DefaultRowHeight*static.RowCount+5+static.GridLineWidth*(static.RowCount-1);
with static do
    begin
    Cells[0,0]:='�������';
    Cells[1,0]:='����� Testmind';
    Cells[2,0]:='����� ��������';
    Cells[3,0]:='������';

    Cells[0,1]:='�������';
    Cells[0,2]:='�����';
    Cells[0,3]:='������';
    Cells[0,4]:='������';
    Cells[0,5]:='������';
    for k:=1 to 5 do
    begin
            for m:=1 to 3 do
                 begin
                 cells[m,k]:=inttostr(m_players[m,k]);
                 end;
    end;
    cells[0,6]:='�����';
    for k:=1 to 3 do
    cells[k,6]:=inttostr(m_players[k,1]+m_players[k,2]+m_players[k,3]+m_players[k,4]+m_players[k,5]);
    end;
end;

end.
